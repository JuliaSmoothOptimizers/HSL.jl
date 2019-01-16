export Ma97_Control, Ma97_Info, Ma97
export ma97_csc, ma97_coord,
       ma97_factorize!, ma97_factorise!,
       ma97_factorize, ma97_factorise,
       ma97_solve, ma97_solve!,
       ma97_inquire, ma97_enquire,
       ma97_alter!,
       ma97_min_norm, ma97_least_squares
export Ma97Exception

const Ma97Data = Union{Float32, Float64, ComplexF32, ComplexF64}
const Ma97Real = Union{Cfloat, Cdouble}


"""# Main control type for MA97.

    Ma97_Control(; kwargs...)

## Keyword arguments:

* `print_level::Int`: integer controling the verbosit level. Accepted values are:
    * <0: no printing
    * 0: errors and warnings only (default)
    * 1: errors, warnings and basic diagnostics
    * 2: errors, warning and full diagnostics
* `unit_diagnostics::Int`: Fortran file unit for diagnostics (default: 6)
* `unit_error::Int`: Fortran file unit for errors (default: 6)
* `unit_warning::Int`: Fortran file unit for warnings (default: 6)
"""
mutable struct Ma97_Control{T <: Ma97Real}

  "`f_arrays`=1 indicates that arrays are 1-based"
  f_arrays :: Cint

  "`action`=0 aborts factorization if matrix is singular"
  action :: Cint

  "two neighbors in the etree are merged if both involve < `nemin` eliminations"
  nemin :: Cint

  "factor by which memory is increased"
  multiplier :: T

  ordering :: Cint
  print_level :: Cint
  scaling :: Cint

  "tolerance under which a pivot is treated as zero"
  small :: T

  "relative pivot tolerance"
  u :: T

  unit_diagnostics :: Cint
  unit_error :: Cint
  unit_warning :: Cint

  "parallelism is used if `info.num_flops` ≥ `factor_min`"
  factor_min :: Clong

  "use level 3 BLAS for single right-hand side"
  solve_blas3 :: Cint

  "parallelism is used if `info.num_factor` ≥ `solve_min`"
  solve_min :: Clong

  "`solve_mf`=1 use a multifrontal forward solve instead of a supernodal solve"
  solve_mf :: Cint

  "tolerance for consistent equations"
  consist_tol :: T

  "spare integer storage currently unused"
  ispare :: Vector{Cint}

  "spare real storage currently unused"
  rspare :: Vector{T}

  function Ma97_Control{T}(; print_level :: Int=-1, unit_diagnostics :: Int=6, unit_error :: Int=6, unit_warning :: Int=6) where {T}
    control = new(0, 0, 0, 0.0, 0, 0, 0, 0.0,
                  0.0, 0, 0, 0, 0, 0, 0, 0, 0.0,
                  zeros(Cint, 5), zeros(T, 10))

    if T == Float32
      ccall((:ma97_default_control_s, libhsl_ma97), Nothing, (Ref{Ma97_Control},), control)
    elseif T == Float64
      ccall((:ma97_default_control_d, libhsl_ma97), Nothing, (Ref{Ma97_Control},), control)
    elseif T == ComplexF32
      ccall((:ma97_default_control_c, libhsl_ma97), Nothing, (Ref{Ma97_Control},), control)
    elseif T == ComplexF64
      ccall((:ma97_default_control_z, libhsl_ma97), Nothing, (Ref{Ma97_Control},), control)
    end
    control.f_arrays = 1  # Use 1-based indexing for arrays, avoiding copies.
    control.print_level = print_level
    control.unit_diagnostics = unit_diagnostics
    control.unit_error = unit_error
    control.unit_warning = unit_warning
    return control
  end
end


const orderings97 = Dict{Symbol,Int}(
                      :user  => 0,
                      :amd   => 1,
                      :md    => 2,
                      :metis => 3,
                      :ma47  => 4,
                      :metis_or_amd_par => 5,
                      :metis_or_amd_ser => 6,
                      :mc80  => 7,
                      :matching_metis => 8,
                    )


const ordering_names97 = Dict{Int,AbstractString}(
                           0 => "user supplied or none",
                           1 => "AMD",
                           2 => "minimum degree",
                           3 => "METIS",
                           4 => "MA47",
                           5 => "METIS or AMD parallel",
                           6 => "METIS or AMD serial",
                           7 => "matching with HSL_MC80",
                           8 => "matching + METIS",
                         )


const matrix_types97 = Dict{Symbol,Int}(
                         :real_spd   =>  3,  # real symmetric positive definite
                         :real_indef =>  4,  # real symmetric indefinite
                         :herm_pd    => -3,  # hermitian positive definite
                         :herm_indef => -4,  # hermitian indefinite
                         :cmpl_indef => -5,  # complex symmetric indefinite
                       )

const jobs97 = Dict{Symbol,Int}(
                 :A    => 0,  # solve Ax = b
                 :PL   => 1,  # solve PLx = Sb
                 :D    => 2,  # solve Dx = b
                 :LPS  => 3,  # solve L'P'S⁻¹x = b
                 :DLPS => 4,  # solve DL'P'S⁻¹x = b
               )


"Exception type raised in case of error."
mutable struct Ma97Exception <: Exception
  msg  :: AbstractString
  flag :: Int
end


"""# Main info type for MA97

    info = Ma97_Info{T <: Ma97Real}()

An `info` variable is used to collect statistics on the analysis, factorization and solve.
"""
mutable struct Ma97_Info{T <: Ma97Real}
  "exit status"
  flag :: Cint

  "exit status from MC68"
  flag68 :: Cint

  "exit status from MC77 (for scaling)"
  flag77 :: Cint

  "number of duplicate entries found and summed"
  matrix_dup :: Cint

  matrix_rank :: Cint

  "number of out-of-range entries found and discarded"
  matrix_outrange :: Cint

  "number of diagonal entries without a value"
  matrix_missing_diag :: Cint

  "maximum depth of assembly tree"
  maxdepth :: Cint

  "maximum front size"
  maxfront :: Cint

  "number of delayed eliminations"
  num_delay :: Cint

  "number of entries in the factor L"
  num_factor :: Clong

  "number of flops to perform the factorization"
  num_flops :: Clong

  "number of negative eigenvalues"
  num_neg :: Cint

  "number of supernodes"
  num_sup :: Cint

  "number of 2x2 pivots"
  num_two :: Cint

  ordering :: Cint

  "Fortran stat parameter in case of a memory error"
  stat :: Cint

  "spare integer storage currently unused"
  ispare :: Vector{Cint}

  "spare real storage currently unused"
  rspare :: Vector{T}

  function Ma97_Info{T}() where {T}
    return new(0, 0, 0, 0, 0, 0, 0, 0,
               0, 0, 0, 0, 0, 0, 0, 0, 0,
               zeros(Cint, 5), zeros(T, 10))
  end
end


# in the Ma97 type, we need to maintain a constraint on the types
# the following is inspired by
# https://groups.google.com/d/msg/julia-users/JNQ3eBUL3QU/gqAfij6bAgAJ

mutable struct Ma97{T <: Ma97Data, S <: Ma97Real}
  __akeep :: Array{Ptr{Nothing}}
  __fkeep :: Array{Ptr{Nothing}}
  n :: Int
  colptr :: Vector{Cint}
  rowval :: Vector{Cint}
  nzval :: Vector{T}
  control :: Ma97_Control{S}
  info :: Ma97_Info{S}

  function Ma97{T, S}(
    a :: Array{Ptr{Nothing}}, f :: Array{Ptr{Nothing}}, n :: Int,
    colptr :: Vector{Cint}, rowval :: Vector{Cint}, nzval :: Vector{T},
    control :: Ma97_Control{S}, info :: Ma97_Info{S}) where {T, S}

    t = eltype(nzval)
    S == data_map[t] || throw(TypeError(:Ma97, "Ma97{$T, $S}\n", data_map[t], t))
    new(a, f, n, colptr, rowval, nzval, control, info)
  end
end


for (fname, typ) in ((:ma97_finalise_s, Float32),
                     (:ma97_finalise_d, Float64),
                     (:ma97_finalise_c, ComplexF32),
                     (:ma97_finalise_z, ComplexF64))

  @eval begin

    function ma97_finalize(ma97 :: Ma97{$typ, $(data_map[typ])})
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}),
             ma97.__akeep,   ma97.__fkeep)
    end

  end
end


for (fname, freename, typ) in ((:ma97_analyse_s, :ma97_free_akeep_s, Float32),
                               (:ma97_analyse_d, :ma97_free_akeep_d, Float64),
                               (:ma97_analyse_c, :ma97_free_akeep_c, ComplexF32),
                               (:ma97_analyse_z, :ma97_free_akeep_z, ComplexF64))

  @eval begin

    function ma97_csc(n :: Int, colptr :: Vector{Ti}, rowval :: Vector{Ti}, nzval :: Vector{$typ}; kwargs...) where {Ti <: Integer}
      control = Ma97_Control{$(data_map[typ])}(; kwargs...)
      info = Ma97_Info{$(data_map[typ])}()
      M = Ma97{$typ, $(data_map[typ])}([convert(Ptr{Nothing}, C_NULL)], [convert(Ptr{Nothing}, C_NULL)], n, colptr, rowval, nzval, control, info)

      # Perform symbolic analysis.
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Cint, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{$typ}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{Cint}),
             1,    M.n,  M.colptr,  M.rowval,  C_NULL,    M.__akeep,      M.control,         M.info,         C_NULL)

      if M.info.flag < 0
        ccall(($(string(freename)), libhsl_ma97), Nothing, (Ptr{Ptr{Nothing}},), M.__akeep)
        throw(Ma97Exception("Ma97: Error during symbolic analysis", M.info.flag))
      end

      finalizer(ma97_finalize, M)
      return M
    end

  end
end


"""# Instantiate and perform symbolic analysis on a sparse Julia matrix

    M = Ma97(A; kwargs...)


Instantiate an object of type `Ma97` and perform the symbolic analysis on a sparse Julia matrix.

## Input arguments

* `A::SparseMatrixCSC{T<:Ma97Data,Int}`: input matrix. The lower triangle will be extracted.

## Keyword arguments

All keyword arguments are passed directly to `ma97_csc()`.
"""
function Ma97(A :: SparseMatrixCSC{T,Int}; kwargs...) where {T <: Ma97Data}
  m, n = size(A)
  m == n || throw(Ma97Exception("Ma97: input matrix must be square", 0))
  L = tril(convert(SparseMatrixCSC{T,Cint}, A))
  return ma97_csc(L.n, L.colptr, L.rowval, L.nzval; kwargs...)
end

Ma97(A :: Array{T,2}; kwargs...) where {T <: Ma97Data} = Ma97(sparse(A); kwargs...)


for (fname, freename, typ) in ((:ma97_analyse_coord_s, :ma97_free_akeep_s, Float32),
                               (:ma97_analyse_coord_d, :ma97_free_akeep_d, Float64),
                               (:ma97_analyse_coord_c, :ma97_free_akeep_c, ComplexF32),
                               (:ma97_analyse_coord_z, :ma97_free_akeep_z, ComplexF64))

  @eval begin

    function ma97_coord(n :: Int, cols :: Vector{Ti}, rows :: Vector{Ti}, nzval :: Vector{$typ}; kwargs...) where {Ti <: Integer}
      control = Ma97_Control{$(data_map[typ])}(; kwargs...)
      info = Ma97_Info{$(data_map[typ])}()
      M = Ma97{$typ, $(data_map[typ])}([convert(Ptr{Nothing}, C_NULL)], [convert(Ptr{Nothing}, C_NULL)], n, convert(Vector{Cint}, cols), convert(Vector{Cint}, rows), nzval, control, info)
      nz = length(cols)

      # Perform symbolic analysis.
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Cint, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{$typ}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{Cint}),
             M.n,  nz,   M.rowval,  M.colptr,  C_NULL,    M.__akeep,      M.control,         M.info,         C_NULL)

      if M.info.flag < 0
        ccall(($(string(freename)), libhsl_ma97), Nothing, (Ptr{Ptr{Nothing}},), M.__akeep)
        throw(Ma97Exception("Ma97: Error during symbolic analysis", M.info.flag))
      end

      finalizer(ma97_finalize, M)
      return M
    end

  end
end


for (fname, typ) in ((:ma97_factor_s, Float32),
                     (:ma97_factor_d, Float64),
                     (:ma97_factor_c, ComplexF32),
                     (:ma97_factor_z, ComplexF64))

  @eval begin

    function ma97_factorize!(ma97 :: Ma97{$typ, $(data_map[typ])}; matrix_type :: Symbol=:real_indef)
      t = matrix_types97[matrix_type]

      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Cint, Ptr{Cint}, Ptr{Cint}, Ptr{$typ},  Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{$(data_map[typ])}),
             t,    C_NULL,    C_NULL,    ma97.nzval, ma97.__akeep,   ma97.__fkeep,   ma97.control,      ma97.info,   C_NULL)

      if ma97.info.flag < 0
        ma97_finalize(ma97)
        throw(Ma97Exception("Ma97: Error during numerical factorization", ma97.info.flag))
      end
    end

  end
end


function ma97_factorize(A :: SparseMatrixCSC{T,Int}; matrix_type :: Symbol=:real_indef) where {T <: Ma97Data}
  ma97 = Ma97(A)
  ma97_factorize!(ma97, matrix_type=matrix_type)
  return ma97
end

# Z's not dead.
ma97_factorise! = ma97_factorize!
ma97_factorise = ma97_factorize


function ma97_solve(ma97 :: Ma97{T, S}, b :: Array{T}) where {T <: Ma97Data, S <: Ma97Real}
  x = copy(b)
  ma97_solve!(ma97, x)
  return x
end


for (fname, typ) in ((:ma97_solve_s, Float32),
                     (:ma97_solve_d, Float64),
                     (:ma97_solve_c, ComplexF32),
                     (:ma97_solve_z, ComplexF64))

  @eval begin

    function ma97_solve!(ma97 :: Ma97{$typ, $(data_map[typ])}, b :: Array{$typ}; job :: Symbol=:A)
      size(b, 1) == ma97.n || throw(Ma97Exception("Ma97: rhs size mismatch", 0))
      nrhs = size(b, 2)

      j = jobs97[job]
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Cint, Cint, Ptr{$typ}, Cint,   Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}),
             j,    nrhs, b,         ma97.n, ma97.__akeep,   ma97.__fkeep,   ma97.control,      ma97.info)

      if ma97.info.flag < 0
        ma97_finalize(ma97)
        throw(Ma97Exception("Ma97: Error during solve", ma97.info.flag))
      end
    end

  end
end


# Overload backslash to solve with MA97.
import Base.\
\(ma97 :: Ma97{T,S}, b :: Array{T}) where {T <: Ma97Data, S <: Ma97Real} = ma97_solve(ma97, b)


function ma97_solve(A :: SparseMatrixCSC{T,Int}, b :: Array{T}; matrix_type :: Symbol=:real_indef) where {T <: Ma97Data}
  (m, n) = size(A)
  m < n && (return ma97_min_norm(A, b))
  m > n && (return ma97_least_squares(A, b))
  x = copy(b)
  ma97_solve!(A, x, matrix_type=matrix_type)
  return x
end


for (fname, typ) in ((:ma97_factor_solve_s, Float32),
                     (:ma97_factor_solve_d, Float64),
                     (:ma97_factor_solve_c, ComplexF32),
                     (:ma97_factor_solve_z, ComplexF64))

  @eval begin

    function ma97_solve!(A :: SparseMatrixCSC{$typ,Int}, b :: Array{$typ}; matrix_type :: Symbol=:real_indef)
      t = matrix_types97[matrix_type]
      M = Ma97(A)
      size(b, 1) == M.n || throw(Ma97Exception("Ma97: rhs size mismatch", 0))
      nrhs = size(b, 2)
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Cint, Ptr{Cint}, Ptr{Cint}, Ptr{$typ}, Cint, Ptr{$typ}, Cint, Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{$(data_map[typ])}),
             t,    M.colptr,  M.rowval,  M.nzval,   nrhs, b,         M.n,  M.__akeep,      M.__fkeep,      M.control,      M.info,      C_NULL)

      if M.info.flag < 0
        ma97_finalize(M)
        throw(Ma97Exception("Ma97: Error during combined factorize/solve", M.info.flag))
      end
    end

  end
end


ma97_solve(A :: Array{T,2}, b :: Array{T}; matrix_type :: Symbol=:real_indef) where {T <: Ma97Data} = ma97_solve(sparse(A), b, matrix_type=matrix_type)


for (indef, posdef, typ) in ((:ma97_enquire_indef_s, :ma97_enquire_posdef_s, Float32),
                             (:ma97_enquire_indef_d, :ma97_enquire_posdef_d, Float64),
                             (:ma97_enquire_indef_c, :ma97_enquire_posdef_c, ComplexF32),
                             (:ma97_enquire_indef_z, :ma97_enquire_posdef_z, ComplexF64))

  @eval begin

    function ma97_inquire(ma97 :: Ma97{$typ, $(data_map[typ])}; matrix_type :: Symbol=:real_indef)
      if matrix_type in [:real_indef, :herm_indef, :cmpl_indef]
        piv_order = zeros(Cint, ma97.n)
        # AMBUSH ALERT: although Julia will call the C interface of the library
        # Julia stores arrays column-major as Fortran does. Though the C interface
        # documentation says d should be n x 2, we must declare 2 x n.
        d = zeros($typ, 2, ma97.n)
        ccall(($(string(indef)), libhsl_ma97), Nothing,
              (Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{Cint}, Ptr{$typ}),
               ma97.__akeep,   ma97.__fkeep,   ma97.control,      ma97.info,      piv_order, d)
        ret = (piv_order, d)
      else
        d = zeros($typ, ma97.n)
        ccall(($(string(posdef)), libhsl_ma97), Nothing,
              (Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}, Ptr{$typ}),
               ma97.__akeep,   ma97.__fkeep,   ma97.control,      ma97.info,      d)
        ret = d
      end

      if ma97.info.flag < 0
        ma97_finalize(ma97)
        throw(Ma97Exception("Ma97: Error during inquiry", ma97.info.flag))
      end

      return ret
    end

  end
end

ma97_enquire = ma97_inquire


for (fname, typ) in ((:ma97_alter_s, Float32),
                     (:ma97_alter_d, Float64),
                     (:ma97_alter_c, ComplexF32),
                     (:ma97_alter_z, ComplexF64))

  @eval begin

    function ma97_alter!(ma97 :: Ma97{$typ, $(data_map[typ])}, d :: Array{$typ, 2})
      n, m = size(d)
      (m == ma97.n && n == 2) || throw(Ma97Exception("Ma97: input array d must be n x 2", 0))
      ccall(($(string(fname)), libhsl_ma97), Nothing,
            (Ptr{$typ}, Ptr{Ptr{Nothing}}, Ptr{Ptr{Nothing}}, Ref{Ma97_Control}, Ref{Ma97_Info}),
             d,         ma97.__akeep,   ma97.__fkeep,   ma97.control,      ma97.info)

      if ma97.info.flag < 0
        ma97_finalize(ma97)
        throw(Ma97Exception("Ma97: Error during alteration", ma97.info.flag))
      end
    end

  end
end

# Note: it seems inconvenient to have in-place versions of min_norm and
# least_squares because the user would have to provide a storage array
# of length n+m, which is not the size of the solution x alone.

"""# Solve a minimum-norm problem

    ma97_min_norm(A, b)

solves

    minimize ‖x‖₂  subject to Ax=b,

where A has shape m-by-n with m < n, by solving the saddle-point system

    [ I  A' ] [ x ]   [ 0 ]
    [ A     ] [ y ] = [ b ].

## Input arguments

* `A::SparseMatrixCSC{T<:Ma97Data,Int}`: input matrix of shape m-by-n with m < n. A full matrix will be converted to sparse.
* `b::Vector{T}`: right-hand side vector

## Return value

* `x::Vector{T}`: solution vector.
"""
function ma97_min_norm(A :: SparseMatrixCSC{T,Int}, b :: Vector{T}) where {T <: Ma97Data}
  (m, n) = size(A)
  K = [ sparse(T(1)I, n, n)  spzeros(T, n, m) ; A  sparse(T(0)I, m, m) ]
  rhs = [ zeros(T, n) ; b ]
  xy97 = ma97_solve(K, rhs, matrix_type=T in (ComplexF32, ComplexF64) ? :herm_indef : :real_indef)
  x97 = xy97[1:n]
  y97 = xy97[n+1:n+m]
  return (x97, y97)
end

ma97_min_norm(A :: Array{T,2}, b :: Vector{T}) where {T <: Ma97Data} = ma97_min_norm(sparse(A), b)


"""# Solve least-squares problem

    ma97_least_squares(A, b)

Solve the least-squares problem

    minimize ‖Ax - b‖₂

where A has shape m-by-n with m > n, by solving the saddle-point system

    [ I   A ] [ r ]   [ b ]
    [ A'    ] [ x ] = [ 0 ].

## Input arguments

* `A::SparseMatrixCSC{T<:Ma97Data,Int}`: input matrix of shape m-by-n with m > n. A full matrix will be converted to sparse.
* `b::Vector{T}`: right-hand side vector

## Return value

* `x::Vector{T}`: solution vector.
"""
function ma97_least_squares(A :: SparseMatrixCSC{T,Int}, b :: Vector{T}) where {T <: Ma97Data}
  (m, n) = size(A)
  K = [ sparse(T(1)I, m, m)  spzeros(T, m,n) ; A'  sparse(T(0)I, n, n) ]
  rhs = [ b ; zeros(T, n) ]
  rx97 = ma97_solve(K, rhs, matrix_type=T in (ComplexF32, ComplexF64) ? :herm_indef : :real_indef)
  r97 = rx97[1:m]
  x97 = rx97[m+1:m+n]
  return (r97, x97)
end

ma97_least_squares(A :: Array{T,2}, b :: Vector{T}) where {T <: Ma97Data} = ma97_least_squares(sparse(A), b)


# docstrings

"""# Instantiate and perform symbolic analysis using CSC arrays

    M = ma97_csc(n, colptr, rowval, nzval; kwargs...)

Instantiate an object of type `Ma97` and perform the symbolic analysis on a matrix described in sparse CSC format.

## Input arguments

* `n::Int`: the matrix size
* `colptr::Vector{T<:Integer}`: CSC colptr array for the lower triangle
* `rowval::Vector{T<:Integer}`: CSC rowval array for the lower triangle
* `nzval::Vector{T<:Ma97Data}`: CSC nzval array for the lower triangle

## Keyword arguments

All keyword arguments are passed directly to the `Ma97_Control` constructor.
"""
ma97_csc


"""# Instantiate and perform symbolic analysis using coordinate arrays

    M = ma97_coord(n, cols, rows, nzval; kwargs...)

Instantiate an object of type `Ma97` and perform the symbolic analysis on a matrix described in sparse coordinate format.

## Input arguments

* `n::Int`: the matrix size
* `cols::Vector{T<:Integer}`: array of column indices for the lower triangle
* `rows::Vector{T<:Integer}`: array of row indices for the lower triangle
* `nzval::Vector{T<:Ma97Data}`: array of values for the lower triangle

## Keyword arguments

All keyword arguments are passed directly to the `Ma97_Control` constructor.
"""
ma97_coord


"""# Perform numerical factorization.

    ma97_factorize!(ma97; kwargs...)

The symbolic analysis must have been performed and must have succeeded.

## Input Arguments

* `ma97::Ma97{T<:Ma97Data}`:: an `Ma97` structure for which the analysis has been performed

## Keyword Arguments

* `matrix_type::Symbol=:real_indef`: indicates the matrix type. Accepted values are
  * `:real_spd` for a real symmetric and positive definite matrix
  * `:real_indef` for a real symmetric and indefinite matrix.
"""
ma97_factorize!


"""ma97_factorise!: see the documentation for `ma97_factorize!`.
"""
ma97_factorise!


"""# Combined Analysis and factorization

  M = ma97_factorize(A; kwargs...)

Convenience method that combines the symbolic analysis and numerical
factorization phases. An MA97 instance is returned, that can subsequently
be passed to other functions, e.g., `ma97_solve()`.

## Input Arguments

* `A::SparseMatrixCSC{T<:Ma97Data,Int}`: Julia sparse matrix

## Keyword Arguments

* `matrix_type::Symbol=:real_indef`: indicates the matrix type. Accepted values are
  * `:real_spd` for a real symmetric and positive definite matrix
  * `:real_indef` for a real symmetric and indefinite matrix.
"""
ma97_factorize


"""ma97_factorise: see the documentation for `ma97_factorize`.
"""
ma97_factorise


"""# In-place system solve

See the documentation for `ma97_solve()`. The only difference is that the right-hand side `b` is overwritten with the solution.
"""
ma97_solve!


"""# System solve

## Solve after factorization

    ma97_solve(ma97, b; kwargs...)

### Input arguments

* `ma97::Ma97{T<:Ma97Data}`: an `Ma97` structure for which the analysis and factorization have been performed
* `b::Array{T}`: vector of array of right-hand sides. Note that `b` will be overwritten. To solve a system with multiple right-hand sides, `b` should have size `n` by `nrhs`.

### Keyword arguments

* `job::Symbol=:A`: task to perform. Accepted values are
  * `:A`: solve Ax = b
  * `:PL`: solve PLx = Sb
  * `:D`: solve Dx = b
  * `:LPS`: solve L'P'S⁻¹x = b
  * `:DLPS`: solve DL'P'S⁻¹x = b.

### Return values

* `x::Array{T}`: an array of the same size as `b` containing the solutions.

## Combined analysis, factorization and solve

    ma97_solve(A, b; kwargs...)

### Input arguments

* `A::SparseMatrixCSC{T<:Ma97Data,Int}`: input matrix. A full matrix will be converted to sparse.
* `b::Array{T}`: vector of array of right-hand sides. Note that `b` will be overwritten. To solve a system with multiple right-hand sides, `b` should have size `n` by `nrhs`.

### Keyword arguments

* `matrix_type::Symbol=:real_indef`: indicates the matrix type. Accepted values are
  * `:real_spd` for a real symmetric and positive definite matrix
  * `:real_indef` for a real symmetric and indefinite matrix.

### Return values

* `x::Array{T}`: an array of the same size as `b` containing the solutions.
"""
ma97_solve


"""# Inquire about a factorization or solve

    ma97_inquire(ma97; kwargs...)

Obtain information on the pivots after a successful factorization or solve.

## Input Arguments

* `ma97::Ma97{T<:Ma97Data}`: an `Ma97` structure for which the analysis and factorization have been performed

## Keyword arguments

* `matrix_type::Symbol=:real_indef`: indicates the matrix type. Accepted values are
  * `:real_spd` for a real symmetric and positive definite matrix
  * `:real_indef` for a real symmetric and indefinite matrix.

## Return values

An inquiry on a real or complex indefinite matrix returns two vectors:

* `piv_order`: contains the pivot sequence; a negative value indicates that the
  corresponding variable is part of a 2x2 pivot,
* `d`: a `2` by `n` array whose first row contains the diagonal of D⁻¹ in the
  factorization, and whose nonzeros in the second row contain the off-diagonals.

An inquiry on a positive definite matrix returns one vector with the pivot values.
"""
ma97_inquire


"""ma97_enquire: see the documentation for `ma97_inquire`.
"""
ma97_enquire
