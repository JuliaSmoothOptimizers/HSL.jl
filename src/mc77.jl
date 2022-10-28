export mc77, mc77_control, mc77_info

mutable struct mc77_control{T <: BLAS.BlasReal}
  icntl::Vector{Int32}
  cntl::Vector{T}
end

function mc77_control{T}() where {T <: BLAS.BlasReal}
  icntl = zeros(Int32, 10)
  cntl = zeros(T, 10)
  return mc77_control{T}(icntl, cntl)
end

mutable struct mc77_info{T <: BLAS.BlasReal}
  info::Vector{Int32}
  rinfo::Vector{T}
end

function mc77_info{T}() where {T <: BLAS.BlasReal}
  info = zeros(Int32, 10)
  rinfo = zeros(T, 10)
  return mc77_info{T}(info, rinfo)
end

# mc77i sets default values for the components of the arrays that hold controlling parameters.
# It should normally be called once prior to any other call.
for (fname, subty) in (("mc77i_" , Float32),
                       ("mc77id_", Float64))
  @eval begin
    function mc77i(control::mc77_control{$subty})
      ccall(($fname, libmc77),
      Cvoid,
      (Ptr{Int32}   , Ptr{$subty} ),
       control.icntl, control.cntl)
    end
  end
end

# mc77a computes the scaling matrices when A is sparse and stored by columns.
for (fname, elty, subty) in (("mc77a_" , Float32   , Float32),
                             ("mc77ad_", Float64   , Float64),
                             ("mc77ac_", ComplexF32, Float32),
                             ("mc77az_", ComplexF64, Float64))
  @eval begin
    function mc77a(job::Int32, m::Int32, n::Int32, nnz::Int32, jcst::Vector{Int32},
                   irn::Vector{Int32}, a::Vector{$elty}, iw::Vector{Int32}, liw::Int32,
                   dw::Vector{$subty}, ldw::Int32, icntl::Vector{Int32}, cntl::Vector{$subty},
                   info::Vector{Int32}, rinfo::Vector{$subty})
      ccall(($fname, libmc77),
      Cvoid,
      (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ref{Int32}, Ref{$subty}, Ref{Int32}, Ref{$subty}),
       job       , m         , n         , nnz       , jcst      , irn       , a         , iw        , liw       , dw        , ldw       , icntl     , cntl       , info      , rinfo)
    end
  end
end

# mc77b computes the scaling matrices when A is sparse and stored using the coordinate format.
for (fname, elty, subty) in (("mc77b_" , Float32   , Float32),
                             ("mc77bd_", Float64   , Float64),
                             ("mc77bc_", ComplexF32, Float32),
                             ("mc77bz_", ComplexF64, Float64))
  @eval begin
    function mc77b(job::Int32, m::Int32, n::Int32, nnz::Int32, irn::Vector{Int32}, jcn::Vector{Int32},
                   a::Vector{$elty}, iw::Vector{Int32}, liw::Int32, dw::Vector{$subty},
                   ldw::Int32, icntl::Vector{Int32}, cntl::Vector{$subty},
                   info::Vector{Int32}, rinfo::Vector{$subty})
      ccall(($fname, libmc77),
      Cvoid,
      (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ref{Int32}, Ref{$subty}, Ref{Int32}, Ref{$subty}),
       job       , m         , n         , nnz       , irn       , jcn       , a         , iw        , liw       , dw        , ldw       , icntl     , cntl       , info      , rinfo)
    end
  end
end

# mc77c computes the scaling matrices when A is dense.
for (fname, elty, subty) in (("mc77c_" , Float32   , Float32),
                             ("mc77cd_", Float64   , Float64),
                             ("mc77cc_", ComplexF32, Float32),
                             ("mc77cz_", ComplexF64, Float64))
  @eval begin
    function mc77c(job::Int32, m::Int32, n::Int32, a::Matrix{$elty}, lda::Int32, iw::Vector{Int32},
                   liw::Int32, dw::Vector{$subty}, ldw::Int32, icntl::Vector{Int32},
                   cntl::Vector{$subty}, info::Vector{Int32}, rinfo::Vector{$subty})
      ccall(($fname, libmc77),
      Cvoid,
      (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ref{Int32}, Ref{$subty}, Ref{Int32}, Ref{$subty}),
       job       , m         , n         , a         , lda       , iw        , liw       , dw        , ldw       , icntl     , cntl      , info       , rinfo)
    end
  end
end

"""
    mc77(A::SparseMatrixCSC{T}, job::Integer)
    mc77(A::Matrix{T}, job::Integer)
    mc77(m::Integer, n::Integer, rows::Vector{Int32}, cols::Vector{Int32}, nzval::Vector{T}, job::Integer)

* job=0 Equilibrate the infinity norm of rows and columns in matrix A.
* job=p Equilibrate the p-th norm (p ≥ 1) of rows and columns in A.
* job=-1 Equilibrate the p-th norm of rows and columns in A, with p ≥ 1 real. The value of p is given in CNTL[2].

Let A be an m × n real matrix, and ‖•‖ₚ, p ∈ [1, ∞] a p-norm for real vectors.
mc77 computes the scaling diagonal matrices Dr and Dc such that the p-norms of all columns and rows of
A̅ = (Dr)⁻¹A(Dc)⁻¹ are approximately equal to 1.

When A is symmetric Dr = Dc.
In the case m ≠ n, mc77 allows the use of the ∞-norm only.
"""
function mc77 end

function mc77(A::SparseMatrixCSC{T}, job::Integer) where T <: BLAS.BlasFloat
  m,n = size(A)
  nz = nnz(A)
  jcst = convert(Vector{Int32}, A.colptr)
  irn = convert(Vector{Int32}, A.rowval)
  a = A.nzval
  R = real(T)
  control = mc77_control{R}()
  mc77i(control)
  info = mc77_info{R}()
  if control.icntl[6] == 0
    liw = m+n
    ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
  else
    liw = m
    ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
  end
  iw = zeros(Int32, liw)
  dw = zeros(R, ldw)
  mc77a(Int32(job), Int32(m), Int32(n), Int32(nz), jcst, irn, a, iw, Int32(liw), dw, Int32(ldw), control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = dw[m+1:m+n]
  return Dr, Dc
end

function mc77(m::Integer, n::Integer, rows::Vector{Int32}, cols::Vector{Int32}, nzval::Vector{T}, job::Integer) where T <: BLAS.BlasFloat
  nz = length(nzval)
  irn = rows
  jcn = cols
  a = nzval
  R = real(T)
  control = mc77_control{R}()
  mc77i(control)
  info = mc77_info{R}()
  if control.icntl[6] == 0
    liw = m+n
    ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
  else
    liw = m
    ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
  end
  iw = zeros(Int32, liw)
  dw = zeros(R, ldw)
  mc77b(Int32(job), Int32(m), Int32(n), Int32(nz), irn, jcn, a, iw, Int32(liw), dw, Int32(ldw), control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = dw[m+1:m+n]
  return Dr, Dc
end

function mc77(A::Matrix{T}, job::Integer) where T <: BLAS.BlasFloat
  m,n = size(A)
  lda = max(1,stride(A,2))
  R = real(T)
  control = mc77_control{R}()
  mc77i(control)
  info = mc77_info{R}()
  if control.icntl[6] == 0
    liw = m+n
    ldw = control.icntl[5] == 0 ? lda*n + 2*(m+n) : 2*(m+n)
  else
    liw = m
    ldw = control.icntl[5] == 0 ? div(m*(m+1),2) + 2*m : 2*m
  end
  iw = zeros(Int32, liw)
  dw = zeros(R, ldw)
  mc77c(Int32(job), Int32(m), Int32(n), A, Int32(lda), iw, Int32(liw), dw, Int32(ldw), control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = dw[m+1:m+n]
  return Dr, Dc
end
