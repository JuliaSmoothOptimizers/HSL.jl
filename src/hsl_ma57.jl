export Ma57_Control, Ma57_Info, Ma57
export ma57_coord,
       ma57_factorize,
       ma57_solve!, ma57_solve,
       ma57_min_norm, ma57_least_squares,
       ma57_get_factors,
       ma57_alter_d

export Ma57Exception

const Ma57Data = Union{Float32, Float64}

"""
# Exception type raised in case of error.
"""
mutable struct Ma57Exception <: Exception
  msg  :: AbstractString
  flag :: Int
end

## diagnostics (1) -------------------------------------------------------------
"""
# Main control type for MA57.

    Ma57_Control(; kwargs...)

## Keyword arguments:

* `print_level::Int`: integer controling the verbosit level. Accepted values are:
    * <0: no printing
    * 0: errors and warnings only (default)
    * 1: errors, warnings and basic diagnostics
    * 2: errors, warning and full diagnostics
* `unit_diagnostics::Int`: Fortran file unit for diagnostics (default: 6)
* `unit_error::Int`: Fortran file unit for errors (default: 6)
* `unit_warning::Int`: Fortran file unit for warnings (default: 6)

## Example:

```JULIA
julia> using HSL
julia> Ma57_Control{Float64}(print_level=1)
HSL.Ma57_Control{Float64}(Int32[6, 6, 6, -1, 1, 5, 1, 0, 10, 1, 16, 16, 10, 100, 1, 0, 0, 0, 0, 0], [0.01, 1.0e-20, 0.5, 0.0, 0.0])
```
"""
mutable struct Ma57_Control{T <: Ma57Data}

  icntl :: Vector{Int32}
  cntl :: Vector{T}

  function Ma57_Control{T}(; print_level :: Int=0, unit_diagnostics :: Int=6, unit_error :: Int=6, unit_warning :: Int=6) where {T}
    icntl = zeros(Int32, 20)
    cntl = zeros(T, 5)
    if T == Float32
      ccall((:ma57i_, libhsl_ma57), Nothing, (Ptr{T}, Ptr{Int32}), cntl, icntl)
    elseif T == Float64
      ccall((:ma57id_, libhsl_ma57), Nothing, (Ptr{T}, Ptr{Int32}), cntl, icntl)
    end
    icntl[1] = unit_error
    icntl[2] = unit_warning
    icntl[3] = unit_diagnostics
    icntl[5] = print_level
    icntl[10] = 1  # want condition number estimates if performing iterative refinement
    control = new(icntl, cntl)
    return control
  end
end

## diagnostics (2) -------------------------------------------------------------
"""
# Main info type for MA57

    info = Ma57_Info{T <: Ma97Real}()

An `info` variable is used to collect statistics on the analysis, factorization,
and solve.

## Example:

```JULIA
julia> using HSL
julia> T = Float64;
julia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];
julia> vals = T[2, 3, 4, 6, 1, 5, 1];
julia> A = sparse(rows, cols, vals); A = A + triu(A, 1)';
julia> M = Ma57(A);
julia> M.info
HSL.Ma57_Info{Float64}(Int32[0, 0, 0, 0, 12, 13, 4, 2, 48, 53  …  0, 0, 0, 0, 0, 2, 0, 0, 0, 0], [10.0, 34.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
```
"""
mutable struct Ma57_Info{T <: Ma57Data}
  info :: Vector{Int32}
  rinfo :: Vector{T}

  largest_front :: Int32
  num_2x2_pivots :: Int32
  num_delayed_pivots :: Int32
  num_negative_eigs :: Int32
  rank :: Int32
  num_pivot_sign_changes :: Int32

  backward_error1 :: T
  backward_error2 :: T
  matrix_inf_norm :: T
  solution_inf_norm :: T
  scaled_residuals :: T
  cond1 :: T
  cond2 :: T
  error_inf_norm :: T

  function Ma57_Info{T}() where {T}
    new(zeros(Int, 40), zeros(T, 20),
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0)
  end
end


## option dictionaries ---------------------------------------------------------
const orderings57 = Dict{Symbol,Int}(
                         :mc47   => 0,
                         :user   => 1,
                         :mc50   => 2,
                         :mindeg => 3,
                         :metis  => 4)

const ordering_names57 = Dict{Int,AbstractString}(
                              0 => "AMD with MC47",
                              1 => "user supplied or none",
                              2 => "AMD with MC50",
                              3 => "Minimum degree",
                              4 => "METIS")

const matrix_types57 = Dict{Symbol,Int}(
                            :real_spd   =>  3,  # real symmetric positive definite
                            :real_indef =>  4   # real symmetric indefinite
                          )

# MA57 computes the factorization PSASP' = LDL', i.e.,
# Ax=b becomes S⁻¹P'LDL'PS⁻¹x = b.
# The computations are arranged so the system is rewritten equivalently
# (S⁻¹P'LPS) (S⁻¹P'DPS⁻¹) (SP'L'PS⁻¹)x = b.

const jobs57 = Dict{Symbol,Int}(
                    :A    => 1,  # solve Ax = b
                    :LS   => 2,  # solve LPSx = PSb
                    :DS   => 3,  # solve DPS⁻¹x = PSb
                    :LPS  => 4,  # solve L'PS⁻¹x = PS⁻¹b
                  )


## instantiate -----------------------------------------------------------------
"""
# Instantiate an object of type `Ma57` and perform the symbolic analysis on a sparse Julia matrix.

 M = Ma57(A; kwargs...)

## Input arguments

* `A::SparseMatrixCSC{T<:Ma57Data,Int}`: input matrix. The lower triangle will be extracted.

## Keyword arguments

All keyword arguments are passed directly to `ma57_coord()`.

## Example:

```JULIA

julia> T = Float64;

julia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];

julia> vals = T[2, 3, 4, 6, 1, 5, 1];

julia> A = sparse(rows, cols, vals); A = A + triu(A, 1)';

julia> M = Ma57(A)

HSL.Ma57{Float64}(5, 7, Int32[1, 1, 2, 2, 3, 3, 5], Int32[1, 2, 3, 5, 3, 4, 5], [2.0, 3.0, 4.0, 6.0, 1.0, 5.0, 1.0], HSL.Ma57_Control{Float64}(Int32[6, 6, 6, -1, 0, 5, 1, 0, 10, 1, 16, 16, 10, 100, 1, 0, 0, 0, 0, 0], [0.01, 1.0e-20, 0.5, 0.0, 0.0]), HSL.Ma57_Info{Float64}(Int32[0, 0, 0, 0, 12, 13, 4, 2, 48, 53  …  0, 0, 0, 0, 0, 2, 0, 0, 0, 0], [10.0, 34.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), 1.1, 81, Int32[5, 4, 3, 2, 1, 2, 9, 0, 0, 0  …  4, 3, 3, 2, 2, 1, 1, 0, 0, 0], 48, Float64[], 53, Int32[])
```
"""
mutable struct Ma57{T <: Ma57Data}
  n :: Int32
  nz :: Int32
  rows :: Vector{Int32}
  cols :: Vector{Int32}
  vals :: Vector{T}
  control :: Ma57_Control{T}
  info :: Ma57_Info{T}

  multiplier :: T

  __lkeep :: Int32
  __keep :: Vector{Int32}

  __lfact :: Int32
  __fact :: Vector{T}
  __lifact :: Int32
  __ifact :: Vector{Int32}

  function Ma57{T}(n :: Int32, nz :: Int32,
                rows :: Vector{Int32}, cols :: Vector{Int32}, vals :: Vector{T},
                control :: Ma57_Control{T}, info :: Ma57_Info{T}) where {T}

    lkeep = 5 * n + nz + max(n, nz) + 42
    keep = zeros(Int32, lkeep)
    new(n, nz, rows, cols, vals, control, info, 1.1, lkeep, keep,
        0, T[], 0, Int32[])
  end
end

## helper function to create `Ma57` object
function Ma57(A :: SparseMatrixCSC{T,Ti}; kwargs...) where {T <: Ma57Data, Ti <: Integer}
  m, n = size(A)
  m == n || throw(Ma57Exception("Ma57: input matrix must be square", 0))
  L = tril(convert(SparseMatrixCSC{data_map[T],Int32}, A))
  return ma57_coord(L.n, findnz(L)...; kwargs...)
end

Ma57(A :: Array{T,2}; kwargs...) where {T <: Ma57Data} = Ma57(sparse(A); kwargs...)

for (fname, typ) in ((:ma57a_, Float32), (:ma57ad_, Float64))

  @eval begin

    ## helper function to instantiate an object of type `Ma57` and perform the
    ## symbolic analysis on a matrix described in sparse coordinate format.
    function ma57_coord(n :: Int, rows :: Vector{Ti}, cols :: Vector{Ti}, nzval :: Vector{$typ}; kwargs...) where {Ti <: Integer}
      control = Ma57_Control{$(data_map[typ])}(; kwargs...)
      info = Ma57_Info{$(data_map[typ])}()
      nz = length(cols)
      M = Ma57{$typ}(convert(Int32, n), convert(Int32, nz),
                     convert(Vector{Int32}, rows), convert(Vector{Int32}, cols),
                     nzval, control, info)

      iwork = Vector{Int32}(undef, 5 * n)

      ## perform symbolic analysis.
      ccall(($(string(fname)), libhsl_ma57), Nothing,
            (Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32},    Ref{Int32}, Ptr{Int32}, Ptr{Int32},       Ptr{Int32},   Ptr{Int32},    Ptr{$typ}),
                   M.n,        M.nz,     M.rows,     M.cols,     M.__lkeep,   M.__keep,      iwork,  M.control.icntl,  M.info.info, M.info.rinfo)

      status = M.info.info[1]
      status > 0 && @warn "Ma57: analyze returns with code $status"
      status < 0 && throw(Ma57Exception("Ma57: Error during symbolic analysis", status))

      M.__lfact = M.info.info[9]
      M.__lifact = M.info.info[10]
      return M
    end

  end
end


## factorize -------------------------------------------------------------------
for (fname, typ) in ((:ma57b_, Float32), (:ma57bd_, Float64))

  @eval begin

    function ma57_factorize(ma57 :: Ma57{$typ})

      if ma57.__lfact <= 0 || ma57.__lifact <= 0
        status = ma57.info.info[1]
        throw(Ma57Exception("Ma57: Symbolic analysis must be performed first", status))
      end
      if length(ma57.__fact) < ma57.__lfact
        ma57.__fact = Vector{$typ}(undef, ma57.__lfact)
      end
      if length(ma57.__ifact) < ma57.__lifact
        ma57.__ifact = Vector{Int32}(undef, ma57.__lifact)
      end
      iwork = Vector{Int32}(undef, ma57.n)

      factorized = false
      while !factorized
        ccall(($(string(fname)), libhsl_ma57), Nothing,
              (Ref{Int32},  Ref{Int32}, Ptr{$typ},  Ptr{$typ},      Ref{Int32},   Ptr{Int32},       Ref{Int32},      Ref{Int32},  Ptr{Int32},  Ptr{Int32},         Ptr{Int32},         Ptr{$typ},     Ptr{Int32},       Ptr{$typ}),
                   ma57.n,     ma57.nz, ma57.vals, ma57.__fact,   ma57.__lfact, ma57.__ifact,   ma57.__lifact,    ma57.__lkeep, ma57.__keep,      iwork, ma57.control.icntl, ma57.control.cntl, ma57.info.info, ma57.info.rinfo)

        status = ma57.info.info[1]
        status > 0 && @warn "Ma57: factorize returns with code $status"
        if status == -3 || status == 10
          ma57.__lfact = ceil(ma57.multiplier * ma57.info.info[17])
          resize!(ma57.__fact, ma57.__lfact)
        elseif status == -4 || status == 11
          ma57.__lifact = ceil(ma57.multiplier * ma57.info.info[18])
          resize!(ma57.__ifact, ma57.__lifact)
        elseif status < 0
          throw(Ma57Exception("Ma57: Error during numerical factorization", status))
        else
          factorized = true
        end
      end

      # record statistics of interest
      ma57.info.largest_front = ma57.info.info[21]
      ma57.info.num_2x2_pivots = ma57.info.info[22]
      ma57.info.num_delayed_pivots = ma57.info.info[23]
      ma57.info.num_negative_eigs = ma57.info.info[24]
      ma57.info.rank = ma57.info.info[25]
      ma57.info.num_pivot_sign_changes = ma57.info.info[26]
      return nothing
    end

  end
end

## convenience method that combines the symbolic analysis and numerical
## factorization phases. An MA57 instance is returned, that can subsequently
## be passed to other functions, e.g., `ma57_solve()`.
function ma57_factorize(A :: SparseMatrixCSC{T,Ti}; kwargs...) where {T <: Ma57Data, Ti <: Integer}
  ma57 = Ma57(A; kwargs...)
  ma57_factorize(ma57)
  return ma57
end

## Z's not dead.
ma57_factorise = ma57_factorize


## solve -----------------------------------------------------------------------
function ma57_solve(ma57 :: Ma57{T}, b :: Array{T}; kwargs...) where {T <: Ma57Data}
  x = copy(b)
  ma57_solve!(ma57, x; kwargs...)
  return x
end

for (fname, typ) in ((:ma57c_, Float32), (:ma57cd_, Float64))

  @eval begin

    """Solve a symmetric linear system. The symbolic analysis and
    numerical factorization must have been performed and must have succeeded.
    """
    function ma57_solve!(ma57 :: Ma57{$typ}, b :: Array{$typ}; job :: Symbol=:A)
      size(b, 1) == ma57.n || throw(Ma57Exception("Ma57: rhs size mismatch", 0))
      nrhs = size(b, 2)

      j = jobs57[job]
      iwork = Vector{Int32}(undef, ma57.n)
      lwork = ma57.n * nrhs
      work = Vector{$typ}(undef, lwork)
      ccall(($(string(fname)), libhsl_ma57), Nothing,
            (Ref{Int32}, Ref{Int32},   Ptr{$typ},      Ref{Int32},   Ptr{Int32},       Ref{Int32}, Ref{Int32}, Ptr{$typ}, Ref{Int32}, Ptr{$typ}, Ref{Int32}, Ptr{Int32},         Ptr{Int32},     Ptr{Int32}),
                      j,     ma57.n, ma57.__fact,    ma57.__lfact, ma57.__ifact,    ma57.__lifact,       nrhs,         b,     ma57.n,      work,      lwork,      iwork, ma57.control.icntl, ma57.info.info)

      status = ma57.info.info[1]
      status > 0 && @warn "Ma57: solve returns with code $status"
      status < 0 && throw(Ma57Exception("Ma57: Error during solution", status))
      return b
    end

  end
end

## iterative refinement
function ma57_solve(ma57 :: Ma57{T}, b :: Vector{T}, nitref :: Int) where {T <: Ma57Data}
  x = Vector{T}(undef, ma57.n)
  ma57_solve!(ma57, b, x, nitref)
  return x
end

for (fname, typ) in ((:ma57d_, Float32), (:ma57dd_, Float64))

  @eval begin

    ## Solve a symmetric linear system with iterative refinement.
    ## The symbolic analysis and numerical factorization must have been performed
    ## and must have succeeded.
    function ma57_solve!(ma57 :: Ma57{$typ}, b :: Vector{$typ}, x :: Vector{$typ}, nitref :: Int)
      if nitref == 0
        @warn "Ma57: calling this version of `solve()` with `nitref=0` is wasteful"
        return ma57_solve!(ma57, b)
      end
      size(b, 1) == ma57.n || throw(Ma57Exception("Ma57: rhs size mismatch", 0))

      current_nitref = ma57.control.icntl[9]
      ma57.control.icntl[9] = max(0, nitref)
      job = ma57.control.icntl[9] == 1 ? 1 : 0
      resid = Vector{$typ}(undef, ma57.n)

      iwork = ma57.control.icntl[9] > 1 ? Vector{Int32}(undef, ma57.n) : Int32[]
      lwork = ma57.control.icntl[9] == 1 ? ma57.n : 4 * ma57.n
      work = Vector{$typ}(undef, lwork)
      ccall(($(string(fname)), libhsl_ma57), Nothing,
            (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32},   Ptr{$typ},      Ref{Int32},   Ptr{Int32},       Ref{Int32}, Ptr{$typ}, Ptr{$typ}, Ptr{$typ}, Ptr{$typ}, Ptr{Int32},         Ptr{Int32},         Ptr{$typ},     Ptr{Int32},       Ptr{$typ}),
                    job,     ma57.n,    ma57.nz, ma57.vals,  ma57.rows,  ma57.cols, ma57.__fact,    ma57.__lfact, ma57.__ifact,    ma57.__lifact,         b,         x,     resid,      work,      iwork, ma57.control.icntl, ma57.control.cntl, ma57.info.info, ma57.info.rinfo)

      status = ma57.info.info[1]
      status > 0 && @warn "Ma57: solve returns with code $status"
      if status < 0
        ma57.control.icntl[9] = current_nitref
        throw(Ma57Exception("Ma57: Error during solution", status))
      end

      # restore old number of iterative refinement steps
      ma57.control.icntl[9] = current_nitref

      # record statistics of interest
      ma57.info.backward_error1 = ma57.info.rinfo[6]
      ma57.info.backward_error2 = ma57.info.rinfo[7]
      ma57.info.matrix_inf_norm = ma57.info.rinfo[8]
      ma57.info.solution_inf_norm = ma57.info.rinfo[9]
      ma57.info.scaled_residuals = ma57.info.rinfo[10]
      ma57.info.cond1 = ma57.info.rinfo[11]
      ma57.info.cond2 = ma57.info.rinfo[12]
      ma57.info.error_inf_norm = ma57.info.rinfo[13]

      return x
    end

  end
end

## overload backslash to solve with MA57.
import Base.\
\(ma57 :: Ma57{T}, b :: Array{T}) where {T <: Ma57Data} = ma57_solve(ma57, b)

## convenience method that combines the symbolic analysis, numerical
## factorization and solution phases.
function ma57_solve(A :: SparseMatrixCSC{T,Ti}, b :: Array{T}) where {T <: Ma57Data, Ti <: Integer}
  (m, n) = size(A)
  m < n && (return ma57_min_norm(A, b))
  m > n && (return ma57_least_squares(A, b))
  x = copy(b)
  ma57_solve!(A, x)
  return x
end

"""
Solve the minimum-norm problem
    minimize ‖x‖  subject to Ax=b,
where A has shape m-by-n with m < n,
by solving the saddle-point system
    [ I  A' ] [ x ]   [ 0 ]
    [ A     ] [ y ] = [ b ].
"""
function ma57_min_norm(A :: SparseMatrixCSC{T,Ti}, b :: Array{T}) where {T <: Ma57Data, Ti <: Integer}
  (m, n) = size(A)
  K = [ sparse(T(1)*I, n, n)  spzeros(T, n, m) ; A  T[0.0] .* sparse(T(1)*I, m, m) ]
  M = Ma57(K)
  ma57_factorize(M)
  rhs = [ zeros(T, n) ; b ]
  xy57 = ma57_solve(M, rhs)
  x57 = xy57[1:n]
  y57 = xy57[n+1:n+m]
  return (x57, y57)
end

ma57_min_norm(A :: Array{T,2}, b :: Array{T}) where {T <: Ma57Data} = ma57_min_norm(sparse(A), b)


"""
Solve the least-squares problem
    minimize ‖Ax - b‖,
where A has shape m-by-n with m > n,
by solving the saddle-point system
    [ I   A ] [ r ]   [ b ]
    [ A'    ] [ x ] = [ 0 ].
"""
function ma57_least_squares(A :: SparseMatrixCSC{T,Ti}, b :: Array{T}) where {T <: Ma57Data, Ti <: Integer}
  (m, n) = size(A)
  K = [ sparse(T(1)*I, m, m)  spzeros(T, m,n) ; A'  T[0.0] .* sparse(T(1)*I, n, n) ]
  M = Ma57(K)
  ma57_factorize(M)
  rhs = [ b ; zeros(T, n) ]
  rx57 = ma57_solve(M, rhs)
  r57 = rx57[1:m]
  x57 = rx57[m+1:m+n]
  return (r57, x57)
end

ma57_least_squares(A :: Array{T,2}, b :: Array{T}) where {T <: Ma57Data} = ma57_least_squares(sparse(A), b)

## additional docstrings -------------------------------------------------------
"""
# Factorize `Ma57` object.

  ma57_factorize(M)

## Input arguments:

* `M::Ma57`: `Ma57` object

## Return values:

* (none)

## Stored information:

* `M.info.largest_front::Int`: order of largest frontal matrix
* `M.info.num_2x2_pivots::Int`: number of 2x2 pivots used in factorization
* `M.info.num_delayed_pivots::Int`: total number of fully-summed variables that were passed to the father node because of pivoting considerations
* `M.info.num_negative_eigs::Int`: number of negative eigenvalues in factorization of `M`
* `M.info.rank::Int`: rank of factorization of `M`
* `M.info.num_pivot_sign_changes::Int`: number of sign changes of pivot when icntl(7) = 3 (ie, no pivoting)

# Factorize a sparse matrix.

## Input arguments:

* `A::SparseMatrixCSC{T<:Ma57Data,Int}`: sparse matrix

## Return values:

* `M::Ma57`: factorized `Ma57` object

## Stored information:

* `M.info.largest_front::Int`: order of largest frontal matrix
* `M.info.num_2x2_pivots::Int`: number of 2x2 pivots used in factorization
* `M.info.num_delayed_pivots::Int`: total number of fully-summed variables that were passed to the father node because of pivoting considerations
* `M.info.num_negative_eigs::Int`: number of negative eigenvalues in factorization of `A`
* `M.info.rank::Int`: rank of factorization of `A`
* `M.info.num_pivot_sign_changes::Int`: number of sign changes of pivot when icntl(7) = 3 (ie, no pivoting)

## Example:

```JULIA

julia> using HSL

julia> T = Float64;

julia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];

julia> vals = T[2, 3, 4, 6, 1, 5, 1];

julia> A = sparse(rows, cols, vals); A = A + triu(A, 1)';

julia> M = Ma57(A)

julia> ma57_factorize(M)      ## factorize `Ma57` object in place

julia> F = ma57_factorize(A)  ## factorize sparse matrix and return `Ma57` object

julia> M.info.largest_front

4

julia> A.info.largest_front   ## same result

4
```
"""
ma57_factorize, ma57_factorise


"""
# System solve.

## Solve after factorization without iterative refinement

    ma57_solve(ma57, b; kwargs...)

### Input arguments:

* `ma57::Ma57{T<:Ma57Data}`: an `Ma57` structure for which the analysis and factorization have been performed
* `b::Array{T}`: vector of array of right-hand sides. Note that `b` will be overwritten. To solve a system with multiple right-hand sides, `b` should have size `n` by `nrhs`.

### Keyword arguments:

* `job::Symbol=:A`: task to perform. Accepted values are
  * `:A`: solve Ax = b
  * `:LS`: solve LPSx = PSb
  * `:DS`: solve DPS⁻¹x = PSb
  * `:LPS`: solve L'PS⁻¹x = PS⁻¹b

### Return values:

* `x::Array{T}`: an array of the same size as `b` containing the solutions.

## Solve after factorization with iterative refinement

    ma57_solve(A, b, nitref; kwargs...)

### Input arguments:

* `A::SparseMatrixCSC{T<:Ma57Data,Int}`: input matrix. A full matrix will be converted to sparse.
* `b::Array{T}`: vector of array of right-hand sides. Note that `b` will be overwritten. To solve a system with multiple right-hand sides, `b` should have size `n` by `nrhs`.
* `nitref::Int`: number of iterative refinement steps

### Return values:

* `x::Array{T}`: an array of the same size as `b` containing the solutions.

### Stored information:

    Accessible through the Ma57 matrix object's `info` attribute

* `ma57.info.backward_error1::T`: max_{i} |b - Ax|_i / (|b| + |A| |x|)_i
* `ma57.info.backward_error2::T`: max_{i} |b - Ax|_i / ((|A| |x|)_i + ||A_i||_{∞} ||x||_{∞})
* `ma57.info.matrix_inf_norm::T`: ||A||_{∞}
* `ma57.info.solution_inf_norm::T`: ||x||_{∞}
* `ma57.info.scaled_residuals::T`: norm of scaled residuals = max_{i} |sum_j a_{ij} x_j - b_i| / ||A||_{∞} ||x||_{∞})
* `ma57.info.cond1::T`: condition number as defined in [Arioli, M. Demmel, J. W., and Duff, I. S. (1989)](https://doi.org/10.1137/0610013). Solving sparse linear systems with sparse backward error. SIAM J.Matrix Anal. and Applics. 10, 165-190.
* `ma57.info.cond2::T`: condition number as defined in [Arioli, M. Demmel, J. W., and Duff, I. S. (1989)](https://doi.org/10.1137/0610013). Solving sparse linear systems with sparse backward error. SIAM J.Matrix Anal. and Applics. 10, 165-190.
* `ma57.info.error_inf_norm::T`: upper bound for the infinity norm of the error in the solution

## Example:

```JULIA

julia> using HSL

julia> T = Float64;

julia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];

julia> vals = T[2, 3, 4, 6, 1, 5, 1];

julia> A = sparse(rows, cols, vals); A = A + triu(A, 1)';

julia> b = T[8, 45, 31, 15, 17]

julia> ϵ = sqrt(eps(eltype(A)))

julia> xexact = T[1, 2, 3, 4, 5]

julia> M = Ma57(A)

julia> ma57_factorize(M)

julia> x = ma57_solve(M, b)      ## solve without iterative refinement

julia> norm(x - xexact) ≤ ϵ * norm(xexact)

true

julia> xx = ma57_solve(M, b, 2)  ## solve with iterative refinement

julia> norm(xx - xexact) ≤ ϵ * norm(xexact)

true
```
"""
ma57_solve
