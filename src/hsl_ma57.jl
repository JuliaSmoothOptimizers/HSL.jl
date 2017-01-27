export Ma57_Control, Ma57_Info, Ma57
export ma57_coord,
       ma57_factorize,
       ma57_solve!, ma57_solve,
       ma57_min_norm, ma57_least_squares,
       ma57_get_factors,
       ma57_alter_d

export Ma57Exception

typealias Ma57Data Union{Float32, Float64}

"Exception type raised in case of error."
type Ma57Exception <: Exception
  msg  :: AbstractString
  flag :: Int
end

"Main control type for MA57."
type Ma57_Control{T <: Ma57Data}

  icntl :: Vector{Int32}
  cntl :: Vector{T}

  function Ma57_Control(; print_level :: Int=0, unit_diagnostics :: Int=6, unit_error :: Int=6, unit_warning :: Int=6)
    icntl = zeros(Int32, 20)
    cntl = zeros(T, 5)
    if T == Float32
      ccall((:ma57i_, libhsl_ma57), Void, (Ptr{T}, Ptr{Int32}), cntl, icntl)
    elseif T == Float64
      ccall((:ma57id_, libhsl_ma57), Void, (Ptr{T}, Ptr{Int32}), cntl, icntl)
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

"Main info type for MA57."
type Ma57_Info{T <: Ma57Data}
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

  function Ma57_Info()
    new(zeros(Int, 40), zeros(T, 20),
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0)
  end
end

@compat const orderings57 = Dict{Symbol,Int}(
                              :mc47   => 0,
                              :user   => 1,
                              :mc50   => 2,
                              :mindeg => 3,
                              :metis  => 4)


@compat const ordering_names57 = Dict{Int,AbstractString}(
                                   0 => "AMD with MC47",
                                   1 => "user supplied or none",
                                   2 => "AMD with MC50",
                                   3 => "Minimum degree",
                                   4 => "METIS")

@compat const matrix_types57 = Dict{Symbol,Int}(
                                 :real_spd   =>  3,  # real symmetric positive definite
                                 :real_indef =>  4   # real symmetric indefinite
                               )

# MA57 computes the factorization PSASP' = LDL', i.e.,
# Ax=b becomes S⁻¹P'LDL'PS⁻¹x = b.
# The computations are arranged so the system is rewritten equivalently
# (S⁻¹P'LPS) (S⁻¹P'DPS⁻¹) (SP'L'PS⁻¹)x = b.

@compat const jobs57 = Dict{Symbol,Int}(
                         :A    => 1,  # solve Ax = b
                         :LS   => 2,  # solve LPSx = PSb
                         :DS   => 3,  # solve DPS⁻¹x = PSb
                         :LPS  => 4,  # solve L'PS⁻¹x = PS⁻¹b
                       )


type Ma57{T <: Ma57Data}
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

  function Ma57(n :: Int32, nz :: Int32,
                rows :: Vector{Int32}, cols :: Vector{Int32}, vals :: Vector{T},
                control :: Ma57_Control{T}, info :: Ma57_Info{T})

    lkeep = 5 * n + nz + max(n, nz) + 42
    keep = zeros(Int32, lkeep)
    new(n, nz, rows, cols, vals, control, info, 1.1, lkeep, keep,
        0, T[], 0, Int32[])
  end
end


"""Instantiate an object of type `Ma57` and perform the
symbolic analysis on a sparse Julia matrix.
"""
function Ma57{T <: Ma57Data, Ti <: Integer}(A :: SparseMatrixCSC{T,Ti}; kwargs...)
  m, n = size(A)
  m == n || throw(Ma57Exception("Ma57: input matrix must be square", 0))
  L = tril(convert(SparseMatrixCSC{data_map[T],Int32}, A))
  return ma57_coord(L.n, findnz(L)...; kwargs...)
end

Ma57{T <: Ma57Data}(A :: Array{T,2}; kwargs...) = Ma57(sparse(A); kwargs...)


for (fname, typ) in ((:ma57a_, Float32), (:ma57ad_, Float64))

  @eval begin

    """Instantiate an object of type `Ma57` and perform the
    symbolic analysis on a matrix described in sparse coordinate format.
    """
    function ma57_coord{Ti <: Integer}(n :: Int, rows :: Vector{Ti}, cols :: Vector{Ti}, nzval :: Vector{$typ}; kwargs...)
      control = Ma57_Control{$(data_map[typ])}(; kwargs...)
      info = Ma57_Info{$(data_map[typ])}()
      nz = length(cols)
      M = Ma57{$typ}(convert(Int32, n), convert(Int32, nz),
                     convert(Vector{Int32}, rows), convert(Vector{Int32}, cols),
                     nzval, control, info)

      iwork = Vector{Int32}(5 * n)

      # Perform symbolic analysis.
      ccall(($(string(fname)), libhsl_ma57), Void,
            (Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32},    Ptr{Int32}, Ptr{Int32}, Ptr{Int32},       Ptr{Int32},   Ptr{Int32},    Ptr{$typ}),
                &(M.n),     &(M.nz),     M.rows,     M.cols,  &(M.__lkeep),   M.__keep,      iwork,  M.control.icntl,  M.info.info, M.info.rinfo)

      status = M.info.info[1]
      status > 0 && warn("Ma57: analyze returns with code $status")
      status < 0 && throw(Ma57Exception("Ma57: Error during symbolic analysis", status))

      M.__lfact = M.info.info[9]
      M.__lifact = M.info.info[10]
      return M
    end

  end
end


for (fname, typ) in ((:ma57b_, Float32), (:ma57bd_, Float64))

  @eval begin

    """Perform numerical factorization. The symbolic analysis must have
    been performed and must have succeeded.
    """
    function ma57_factorize(ma57 :: Ma57{$typ})

      if ma57.__lfact <= 0 || ma57.__lifact <= 0
        throw(Ma57Exception("Ma57: Symbolic analysis must be performed first"))
      end
      if length(ma57.__fact) < ma57.__lfact
        ma57.__fact = Vector{$typ}(ma57.__lfact)
      end
      if length(ma57.__ifact) < ma57.__lifact
        ma57.__ifact = Vector{Int32}(ma57.__lifact)
      end
      iwork = Vector{Int32}(ma57.n)

      factorized = false
      while !factorized
        ccall(($(string(fname)), libhsl_ma57), Void,
              (Ptr{Int32},  Ptr{Int32}, Ptr{$typ},  Ptr{$typ},      Ptr{Int32},   Ptr{Int32},       Ptr{Int32},      Ptr{Int32},  Ptr{Int32},  Ptr{Int32},         Ptr{Int32},         Ptr{$typ},     Ptr{Int32},       Ptr{$typ}),
               &(ma57.n),   &(ma57.nz), ma57.vals, ma57.__fact, &(ma57.__lfact), ma57.__ifact, &(ma57.__lifact), &(ma57.__lkeep), ma57.__keep,      iwork, ma57.control.icntl, ma57.control.cntl, ma57.info.info, ma57.info.rinfo)

        status = ma57.info.info[1]
        status > 0 && warn("Ma57: factorize returns with code $status")
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

"""Convenience method that combines the symbolic analysis and numerical
factorization phases. An MA57 instance is returned, that can subsequently
be passed to other functions, e.g., `ma57_solve()`.
"""
function ma57_factorize{T <: Ma57Data, Ti <: Integer}(A :: SparseMatrixCSC{T,Ti}; kwargs...)
  ma57 = Ma57(A; kwargs...)
  ma57_factorize(ma57)
  return ma57
end

# Z's not dead.
ma57_factorise = ma57_factorize


"""Solve a linear system with right-hand side `b`. Multiple right-hand
sides can be represented with an array `b` of size `n` by `nrhs`.
"""
function ma57_solve{T <: Ma57Data}(ma57 :: Ma57{T}, b :: Array{T}; kwargs...)
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
      iwork = Vector{Int32}(ma57.n)
      lwork = ma57.n * nrhs
      work = Vector{$typ}(lwork)
      ccall(($(string(fname)), libhsl_ma57), Void,
            (Ptr{Int32}, Ptr{Int32},   Ptr{$typ},      Ptr{Int32},   Ptr{Int32},       Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32},         Ptr{Int32},     Ptr{Int32}),
                    &j,   &(ma57.n), ma57.__fact, &(ma57.__lfact), ma57.__ifact, &(ma57.__lifact),      &nrhs,         b,  &(ma57.n),      work,     &lwork,      iwork, ma57.control.icntl, ma57.info.info)

      status = ma57.info.info[1]
      status > 0 && warn("Ma57: solve returns with code $status")
      status < 0 && throw(Ma57Exception("Ma57: Error during solution", status))
      return b
    end

  end
end

"""Solve a linear system with right-hand side `b` with iterative refinement.
"""
function ma57_solve{T <: Ma57Data}(ma57 :: Ma57{T}, b :: Vector{T}, nitref :: Int)
  x = Vector{T}(ma57.n)
  ma57_solve!(ma57, b, x, nitref)
  return x
end

for (fname, typ) in ((:ma57d_, Float32), (:ma57dd_, Float64))

  @eval begin

    """Solve a symmetric linear system with iterative refinement.
    The symbolic analysis and numerical factorization must have been performed
    and must have succeeded.
    """
    function ma57_solve!(ma57 :: Ma57{$typ}, b :: Vector{$typ}, x :: Vector{$typ}, nitref :: Int)
      if nitref == 0
        warn("Ma57: calling this version of `solve()` with `nitref=0` is wasteful")
        return ma57_solve!(ma57, b)
      end
      size(b, 1) == ma57.n || throw(Ma57Exception("Ma57: rhs size mismatch", 0))

      current_nitref = ma57.control.icntl[9]
      ma57.control.icntl[9] = max(0, nitref)
      job = ma57.control.icntl[9] == 1 ? 1 : 0
      resid = Vector{$typ}(ma57.n)

      iwork = ma57.control.icntl[9] > 1 ? Vector{Int32}(ma57.n) : Int32[]
      lwork = ma57.control.icntl[9] == 1 ? ma57.n : 4 * ma57.n
      work = Vector{$typ}(lwork)
      ccall(($(string(fname)), libhsl_ma57), Void,
            (Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32},   Ptr{$typ},      Ptr{Int32},   Ptr{Int32},       Ptr{Int32}, Ptr{$typ}, Ptr{$typ}, Ptr{$typ}, Ptr{$typ}, Ptr{Int32},         Ptr{Int32},         Ptr{$typ},     Ptr{Int32},       Ptr{$typ}),
                   &job,  &(ma57.n), &(ma57.nz), ma57.vals,  ma57.rows,  ma57.cols, ma57.__fact, &(ma57.__lfact), ma57.__ifact, &(ma57.__lifact),         b,         x,     resid,      work,      iwork, ma57.control.icntl, ma57.control.cntl, ma57.info.info, ma57.info.rinfo)

      status = ma57.info.info[1]
      status > 0 && warn("Ma57: solve returns with code $status")
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

# Overload backslash to solve with MA57.
if VERSION ≥ v"0.4.0"
  import Base.\
end
\{T <: Ma57Data}(ma57 :: Ma57{T}, b :: Array{T}) = ma57_solve(ma57, b)


"""Convenience method that combines the symbolic analysis, numerical
factorization and solution phases.
"""
function ma57_solve{T <: Ma57Data, Ti <: Integer}(A :: SparseMatrixCSC{T,Ti}, b :: Array{T})
  (m, n) = size(A)
  m < n && (return ma57_min_norm(A, b))
  m > n && (return ma57_least_squares(A, b))
  x = copy(b)
  ma57_solve!(A, x)
  return x
end

"""Solve the minimum-norm problem

    minimize ‖x‖  subject to Ax=b,

where A has shape m-by-n with m < n,
by solving the saddle-point system

    [ I  A' ] [ x ]   [ 0 ]
    [ A     ] [ y ] = [ b ].
"""
function ma57_min_norm{T <: Ma57Data, Ti <: Integer}(A :: SparseMatrixCSC{T,Ti}, b :: Vector{T})
  (m, n) = size(A)
  K = [ speye(T, n)  spzeros(T, n, m) ; A  0.0 * speye(T, m) ]
  rhs = [ zeros(T, n) ; b ]
  xy57 = ma57_solve(K, rhs)
  x57 = xy57[1:n]
  y57 = xy57[n+1:n+m]
  return (x57, y57)
end

ma57_min_norm{T <: Ma57Data}(A :: Array{T,2}, b :: Vector{T}) = ma57_min_norm(sparse(A), b)


"""Solve the least-squares problem

    minimize ‖Ax - b‖,

where A has shape m-by-n with m > n,
by solving the saddle-point system

    [ I   A ] [ r ]   [ b ]
    [ A'    ] [ x ] = [ 0 ].
"""
function ma57_least_squares{T <: Ma57Data, Ti <: Integer}(A :: SparseMatrixCSC{T,Ti}, b :: Vector{T})
  (m, n) = size(A)
  K = [ speye(T, m)  spzeros(T, m,n) ; A'  0.0 * speye(T, n) ]
  rhs = [ b ; zeros(T, n) ]
  rx57 = ma57_solve(K, rhs)
  r57 = rx57[1:m]
  x57 = rx57[m+1:m+n]
  return (r57, x57)
end

ma57_least_squares{T <: Ma57Data}(A :: Array{T,2}, b :: Vector{T}) = ma57_least_squares(sparse(A), b)


for (fname, typ) in ((:ma57lf_, Float32), (:ma57lfd_, Float64))

  @eval begin

    """Retrieve factors, scaling and permutation.

    Retrieve a unit triangular matrix L, a block-diagonal matrix D a scaling
    vector s and a permutation vector p such that

      P * S * A * S * P' = L * D * L'

    where S = spdiagm(s) and P = speye(n)[p,:].
    The numerical factorization must have been performed and have succeeded.
    """
    function ma57_get_factors(ma57 :: Ma57{$typ})

      # make room for L factor
      nebdu = ma57.info.info[14]
      nzl = nebdu
      ipl = Vector{Int32}(ma57.n + 1)
      irn = Vector{Int32}(nzl)
      fl = Vector{$typ}(nzl)

      # make room for D; note that entire 2x2 blocks are stored
      nzd = 2 * ma57.info.num_2x2_pivots + ma57.n
      ipd = Vector{Int32}(ma57.n + 1)
      id = Vector{Int32}(nzd)
      d = Vector{$typ}(nzd)

      ivp = Vector{Int32}(ma57.n)
      iperm = Vector{Int32}(ma57.n)

      status = 0

      ccall(($(string(fname)), libhsl_ma57), Void,
            (Ptr{Int32},   Ptr{$typ},      Ptr{Int32},   Ptr{Int32},       Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32},        Ptr{Int32}, Ptr{Int32}),
              &(ma57.n), ma57.__fact, &(ma57.__lfact), ma57.__ifact, &(ma57.__lifact),     &nebdu,       &nzl,        ipl,        irn,        fl,       &nzd,        ipd,         id,         d,        ivp,      iperm, &(ma57.info.rank),    &status)

      status < 0 && throw(Ma57Exception("Ma57: Error while retrieving factors", status))
      s = ma57.control.icntl[15] == 1 ? ma57.__fact[end-ma57.n:end-1] : ones($typ, ma57.n)
      L = SparseMatrixCSC(ma57.n, ma57.n, ipl, irn, fl)
      D = SparseMatrixCSC(ma57.n, ma57.n, ipd, id, d)

      return (L, D, s, iperm)
    end

  end
end

function ma57_alter_d{T <: Ma57Data}(ma57 :: Ma57{T}, d :: Array{T,2})

  ka = 1
  k2 = ma57.__ifact[1]
  kd = 0
  kw = 4
  for blk in 1 : abs(ma57.__ifact[3])
    ncols = ma57.__ifact[kw]
    nrows = ma57.__ifact[kw + 1]
    two = false
    for i = 1 : nrows
      kd = kd + 1
      ma57.__fact[ka] = d[1, kd]
      if ma57.__ifact[kw + 1 + i] < 0
        two = !two
      end
      if two
        ma57.__fact[k2] = d[2, kd]
        k2 = k2 + 1
      else
        d[2, kd] == 0.0 || throw(Ma57Exception("Ma57: Erroneous 2x2 block specified in d[2,$kd]"))
      end
      ka = ka + nrows + 1 - i
    end
    ka = ka + nrows * (ncols - nrows)
    kw = kw + ncols + 2
  end
end
