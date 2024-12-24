export ma27

mutable struct Ma27{T,INT}
  n::INT
  nz::INT
  irn::Vector{INT}
  icn::Vector{INT}
  a::Vector{T}
  la::INT
  iw::Vector{INT}
  liw::INT
  w::Vector{T}
  ikeep::Vector{INT}
  iw1::Vector{INT}
  nsteps::Ref{INT}
  maxfrt::Ref{INT}
  iflag::INT
  icntl::Vector{INT}
  cntl::Vector{T}
  info::Vector{INT}
  ops::Ref{T}
end

function Ma27(A::SparseMatrixCSC{T,INT}) where {T,INT}
  n = LinearAlgebra.checksquare(A)
  nz = nnz(A)
  irn, icn, a = findnz(A)
  la = 4 * nz
  liw = 2 * (2 * nz + 3 * n + 1)
  iw = Vector{INT}(undef, liw)
  w = Vector{T}(undef, 0)
  ikeep = Vector{INT}(undef, 3 * n)
  iw1 = Vector{INT}(undef, 2 * n)
  nsteps = Ref{INT}(0)
  maxfrt = Ref{INT}(1)
  iflag = 0
  icntl = Vector{INT}(undef, 30)
  cntl = Vector{T}(undef, 5)
  info = Vector{INT}(undef, 20)
  ops = Ref{T}(0)
  ma27ir(T, INT, icntl, cntl)
  return HSL.Ma27{T,INT}(n, nz, irn, icn, a, la, iw, liw, w, ikeep, iw1,
                         nsteps, maxfrt, iflag, icntl, cntl, info, ops)
end

function ma27_update!(F::Ma27{T}, A::SparseMatrixCSC{T}) where T
  copyto!(F.a, A.nzval) 
  return F
end

function ma27_analyze!(F::Ma27{T,INT}) where {T,INT}
  ma27ar(T, INT, F.n, F.nz, F.irn, F.icn, F.iw, F.liw, F.ikeep, F.iw1, F.nsteps, F.iflag, F.icntl, F.cntl, F.info, F.ops)
  return F
end

function ma27_factorize!(F::Ma27{T,INT}) where {T,INT}
  ma27br(T, INT, F.n, F.nz, F.irn, F.icn, F.a, F.la, F.iw, F.liw, F.ikeep, F.nsteps, F.maxfrt, F.iw1, F.icntl, F.cntl, F.info)
  resize!(F.w, F.maxfrt[])
  return F
end

function ma27_solve!(F::Ma27{T,INT}, x::Vector{T}, b::Vector{T}) where {T,INT}
  copyto!(x, b)
  ma27cr(T, INT, F.n, F.a, F.la, F.iw, F.liw, F.w, F.maxfrt, x, F.iw1, F.nsteps, F.icntl, F.info)
  return x
end

function ma27(A::SparseMatrixCSC{T}, b::Vector{T}) where T
  F = Ma27(A)
  ma27_analyze!(F)
  ma27_factorize!(F)
  x = Vector{T}(undef, A.n)
  ma27_solve!(F, x, b)
end
