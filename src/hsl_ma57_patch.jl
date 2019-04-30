## get factors -----------------------------------------------------------------
for (fname, typ) in ((:ma57lf_, Float32), (:ma57lfd_, Float64))

  @eval begin

    function ma57_get_factors(ma57 :: Ma57{$typ})

      # make room for L factor
      nebdu = ma57.info.info[14]
      nzl = nebdu
      ipl = Vector{Int32}(undef, ma57.n + 1)
      irn = Vector{Int32}(undef, nzl)
      fl = Vector{$typ}(undef, nzl)

      # make room for D; note that entire 2x2 blocks are stored
      nzd = 2 * ma57.info.num_2x2_pivots + ma57.n
      ipd = Vector{Int32}(undef, ma57.n + 1)
      id = Vector{Int32}(undef, nzd)
      d = Vector{$typ}(undef, nzd)

      ivp = Vector{Int32}(undef, ma57.n)
      iperm = Vector{Int32}(undef, ma57.n)

      status = 0

      ccall(($(string(fname)), libhsl_ma57), Nothing,
            (Ref{Int32},   Ptr{$typ},      Ref{Int32},   Ptr{Int32},       Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{$typ}, Ptr{Int32}, Ptr{Int32},        Ref{Int32}, Ref{Int32}),
                 ma57.n, ma57.__fact,    ma57.__lfact, ma57.__ifact,    ma57.__lifact,      nebdu,        nzl,        ipl,        irn,        fl,        nzd,         ipd,         id,         d,        ivp,      iperm,    ma57.info.rank,    status)

      status < 0 && throw(Ma57Exception("Ma57: Error while retrieving factors", status))
      s = ma57.control.icntl[15] == 1 ? ma57.__fact[end-ma57.n:end-1] : ones($typ, ma57.n)
      L = SparseMatrixCSC(ma57.n, ma57.n, ipl, irn, fl)
      D = SparseMatrixCSC(ma57.n, ma57.n, ipd, id, d)

      return (L, D, s, iperm)
    end

  end
end

## alter D ---------------------------------------------------------------------
function ma57_alter_d(ma57 :: Ma57{T}, d :: Array{T,2}) where {T <: Ma57Data}

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
        status = ma57.info.info[1]
        d[2, kd] == 0.0 || throw(Ma57Exception("Ma57: Erroneous 2x2 block specified in d[2,$kd]", status))
      end
      ka = ka + nrows + 1 - i
    end
    ka = ka + nrows * (ncols - nrows)
    kw = kw + ncols + 2
  end
end


## additional docstrings -------------------------------------------------------
"""
# Retrieve factors, scaling, and permutation.

  L, D, s, iperm = ma57_get_factors(M)

  Function will retrieve a unit triangular matrix L, a block-diagonal matrix D a scaling
  vector s and a permutation vector p such that

  P * S * A * S * P' = L * D * L'

  where S = spdiagm(s) and P = speye(n)[p,:].

  Note that the numerical factorization must have been performed and have succeeded.

## Input arguments

* `M::Ma57`: factorized `Ma57` object

## Return values

* `L::SparseMatrixCSC{T<:Ma57Data,Int}`: L factor
* `D::SparseMatrixCSC{T<:Ma57Data,Int}`: D factor
* `s::Array{T,1}`: diagonal components of scaling matrix S
* `iperm::Array{Int,1}`: array representin permutation matrix P

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

julia> (L, D, s, p) = ma57_get_factors(M)

julia> S = spdiagm(s)

julia> P = speye(M.n)[p, :]

julia> vecnorm(P * S * A * S * P' - L * D * L') ≤ ϵ * vecnorm(A)

true
```
"""
ma57_get_factors

"""
# Alter block diagonal matrix `D`

## Input arguments:

* `M::Ma57`: `Ma57` object
* `F::Array{Float64,2}`: diagonal adjustment


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

julia> (L, D, s, p) = ma57_get_factors(M)

julia> d1 = abs.(diag(D))

julia> d2 = [diag(D, 1) ; 0]

julia> F = [full(d1)' ; full(d2)']

julia> ma57_alter_d(M, F)
```
"""
ma57_alter_d
