export mc77, mc77_control, mc77_info

mutable struct mc77_control{T}
  icntl::Vector{Int32}
  cntl::Vector{T}
end

function mc77_control{T}() where T
  icntl = zeros(Int32, 10)
  cntl = zeros(T, 10)
  return mc77_control{T}(icntl, cntl)
end

mutable struct mc77_info{T}
  info::Vector{Int32}
  rinfo::Vector{T}
end

function mc77_info{T}() where T
  info = zeros(Int32, 10)
  rinfo = zeros(T, 10)
  return mc77_info{T}(info, rinfo)
end

# mc77i sets default values for the components of the arrays that hold controlling parameters.
# It should normally be called once prior to any other call.
for (fname, subty) in ((:mc77i_ , :Float32),
                       (:mc77id_, :Float64))
  @eval begin
    function mc77i(icntl, cntl::Vector{$subty})
      @ccall libhsl.$fname(icntl::Ptr{Int32}, cntl::Ptr{$subty})::Cvoid
    end
  end
end

# mc77a computes the scaling matrices when A is sparse and stored by columns.
for (fname, elty, subty) in ((:mc77a_ , :Float32   , :Float32),
                             (:mc77ad_, :Float64   , :Float64),
                             (:mc77ac_, :ComplexF32, :Float32),
                             (:mc77az_, :ComplexF64, :Float64))
  @eval begin
    function mc77a(job, m, n, nnz, jcst, irn, a::Vector{$elty}, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
      @ccall libhsl.$fname(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32}, a::Ptr{$elty}, iw::Ptr{Int32},
                           liw::Ref{Int32}, dw::Ptr{Int32}, ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{$subty}, info::Ptr{Int32}, rinfo::Ptr{$subty})::Cvoid
    end
  end
end

# mc77b computes the scaling matrices when A is sparse and stored using the coordinate format.
for (fname, elty, subty) in ((:mc77b_ , :Float32   , :Float32),
                             (:mc77bd_, :Float64   , :Float64),
                             (:mc77bc_, :ComplexF32, :Float32),
                             (:mc77bz_, :ComplexF64, :Float64))
  @eval begin
    function mc77b(job, m, n, nnz, irn, jcn, a::Vector{$elty}, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
      @ccall libhsl.$fname(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32}, a::Ptr{$elty}, iw::Ptr{Int32},
                           liw::Ref{Int32}, dw::Ptr{Int32}, ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{$subty}, info::Ptr{Int32}, rinfo::Ptr{$subty})::Cvoid
    end
  end
end

# mc77c computes the scaling matrices when A is dense.
for (fname, elty, subty) in ((:mc77c_ , :Float32   , :Float32),
                             (:mc77cd_, :Float64   , :Float64),
                             (:mc77cc_, :ComplexF32, :Float32),
                             (:mc77cz_, :ComplexF64, :Float64))
  @eval begin
    function mc77c(job, m, n, a::Matrix{$elty}, lda, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
      @ccall libhsl.$fname(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, a::Ptr{$elty}, lda::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                           dw::Ptr{Int32}, ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{$subty}, info::Ptr{Int32}, rinfo::Ptr{$subty})::Cvoid
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
  mc77i(control.icntl, control.cntl)
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
  mc77a(job, m, n, nz, jcst, irn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
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
  mc77i(control.icntl, control.cntl)
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
  mc77b(job, m, n, nz, irn, jcn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = dw[m+1:m+n]
  return Dr, Dc
end

function mc77(A::Matrix{T}, job::Integer) where T <: BLAS.BlasFloat
  m,n = size(A)
  lda = max(1,stride(A,2))
  R = real(T)
  control = mc77_control{R}()
  mc77i(control.icntl, control.cntl)
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
  mc77c(job, m, n, A, lda, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = dw[m+1:m+n]
  return Dr, Dc
end
