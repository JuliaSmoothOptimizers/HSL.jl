export mc77

mutable struct mc77_control{T,INT}
  icntl::Vector{INT}
  cntl::Vector{T}
end

function mc77_control{T,INT}() where {T,INT}
  icntl = zeros(INT, 10)
  cntl = zeros(T, 10)
  return mc77_control{T,INT}(icntl, cntl)
end

mutable struct mc77_info{T,INT}
  info::Vector{INT}
  rinfo::Vector{T}
end

function mc77_info{T,INT}() where {T,INT}
  info = zeros(INT, 10)
  rinfo = zeros(T, 10)
  return mc77_info{T,INT}(info, rinfo)
end

"""
    Dr, Dc = mc77(A::SparseMatrixCSC{T,INT}, job::Integer; symmetric::Bool=false)
    Dr, Dc = mc77(m::Integer, n::Integer, rows::Vector{INT}, cols::Vector{INT}, nzval::Vector{T}, job::Integer; symmetric::Bool=false)
    Dr, Dc = mc77(A::Matrix{T}, job::Integer)

* job=0 Equilibrate the infinity norm of rows and columns in matrix A.
* job=p Equilibrate the p-th norm (p ≥ 1) of rows and columns in A.
* job=-1 Equilibrate the p-th norm of rows and columns in A, with p ≥ 1 real. The value of p is given in CNTL[2].

If the matrix is sparse and `symmetric` is set to `true`, only the lower triangular part should be stored.

Let A be an m × n real matrix, and ‖•‖ₚ, p ∈ [1, ∞] a p-norm for real vectors.
mc77 computes the scaling diagonal matrices Dr and Dc such that the p-norms of all columns and rows of
A̅ = (Dr)⁻¹ * A * (Dc)⁻¹ are approximately equal to 1.

When A is symmetric Dr = Dc.
In the case m ≠ n, mc77 allows the use of the ∞-norm only.
"""
function mc77 end

# mc77i sets default values for the components of the arrays that hold controlling parameters. It should normally be called once prior to any other call.
# mc77a computes the scaling matrices when A is sparse and stored by columns.
# mc77b computes the scaling matrices when A is sparse and stored using the coordinate format.
# mc77c computes the scaling matrices when A is dense.
for (iname, aname, bname, cname, elty, subty) in ((:mc77i , :mc77a , :mc77b , :mc77c , :Float32   , :Float32),
                                                  (:mc77id, :mc77ad, :mc77bd, :mc77cd, :Float64   , :Float64),
                                                  (:mc77ic, :mc77ac, :mc77bc, :mc77cc, :ComplexF32, :Float32),
                                                  (:mc77iz, :mc77az, :mc77bz, :mc77cz, :ComplexF64, :Float64))
  @eval begin
    function mc77(A::SparseMatrixCSC{$elty,Cint}, job::Integer; symmetric::Bool=false)
      (job == -1) && error("job=$job is not supported.")
      m,n = size(A)
      nz = nnz(A)
      jcst = A.colptr
      irn = A.rowval
      a = A.nzval
      control = mc77_control{$subty, Cint}()
      info = mc77_info{$subty, Cint}()
      $iname(control.icntl, control.cntl)
      control.icntl[4] = 1
      if symmetric
        control.icntl[6] == 1
        liw = m
        ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
      else
        liw = m+n
        ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $aname(job, m, n, nz, jcst, irn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = symmetric ? Dr : dw[m+1:m+n]
      (info.info[1] == 0) || error("MC77 failed!")
      return Dr, Dc
    end

    function mc77(m::Integer, n::Integer, rows::Vector{Cint},
                  cols::Vector{Cint}, nzval::Vector{$elty},
                  job::Integer; symmetric::Bool=false)
      (job == -1) && error("job=$job is not supported.")
      nz = length(nzval)
      irn = rows
      jcn = cols
      a = nzval
      control = mc77_control{$subty, Cint}()
      info = mc77_info{$subty, Cint}()
      $iname(control.icntl, control.cntl)
      control.icntl[4] = 1
      if symmetric
        control.icntl[6] == 1
        liw = m
        ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
      else
        liw = m+n
        ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $bname(job, m, n, nz, irn, jcn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = symmetric ? Dr : dw[m+1:m+n]
      (info.info[1] == 0) || error("MC77 failed!")
      return Dr, Dc
    end

    function mc77(A::Matrix{$elty}, job::Integer)
      (job == -1) && error("job=$job is not supported.")
      m,n = size(A)
      lda = max(1,stride(A,2))
      control = mc77_control{$subty, Cint}()
      info = mc77_info{$subty, Cint}()
      $iname(control.icntl, control.cntl)
      symmetric = false
      if symmetric
        control.icntl[6] == 1
        liw = m
        ldw = control.icntl[5] == 0 ? div(m*(m+1),2) + 2*m : 2*m
      else
        liw = m+n
        ldw = control.icntl[5] == 0 ? lda*n + 2*(m+n) : 2*(m+n)
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $cname(job, m, n, A, lda, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = symmetric ? Dr : dw[m+1:m+n]
      (info.info[1] == 0) || error("MC77 failed!")
      return Dr, Dc
    end
  end
end

function mc77(A::SparseMatrixCSC{T,Int64}, job::Integer; symmetric::Bool=false) where T <: Union{Float32, Float64, Float128}
      (job == -1) && error("job=$job is not supported.")
      m,n = size(A)
      nz = nnz(A)
      jcst = A.colptr
      irn = A.rowval
      a = A.nzval
      control = mc77_control{T, Int64}()
      info = mc77_info{T, Int64}()
      mc77ir(T, Int64, control.icntl, control.cntl)
      control.icntl[4] = 1
      if symmetric
        control.icntl[6] == 1
        liw = m
        ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
      else
        liw = m+n
        ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
      end
      iw = zeros(Int64, liw)
      dw = zeros(T, ldw)
      mc77ar(T, Int64, job, m, n, nz, jcst, irn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = symmetric ? Dr : dw[m+1:m+n]
      (info.info[1] == 0) || error("MC77 failed!")
      return Dr, Dc
    end

function mc77(m::Integer, n::Integer, rows::Vector{Int64},
              cols::Vector{Int64}, nzval::Vector{T},
              job::Integer; symmetric::Bool=false) where T <: Union{Float32, Float64, Float128}
  (job == -1) && error("job=$job is not supported.")
  nz = length(nzval)
  irn = rows
  jcn = cols
  a = nzval
  control = mc77_control{T, Int64}()
  info = mc77_info{T, Int64}()
  mc77ir(T, Int64, control.icntl, control.cntl)
  control.icntl[4] = 1
  if symmetric
    control.icntl[6] == 1
    liw = m
    ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
  else
    liw = m+n
    ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
  end
  iw = zeros(Int64, liw)
  dw = zeros(T, ldw)
  mc77br(T, Int64, job, m, n, nz, irn, jcn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
  Dr = dw[1:m]
  Dc = symmetric ? Dr : dw[m+1:m+n]
  (info.info[1] == 0) || error("MC77 failed!")
  return Dr, Dc
end
