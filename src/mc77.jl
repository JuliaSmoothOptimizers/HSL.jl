export mc77

mutable struct mc77_control{T}
  icntl::Vector{Cint}
  cntl::Vector{T}
end

function mc77_control{T}() where T
  icntl = zeros(Int32, 10)
  cntl = zeros(T, 10)
  return mc77_control{T}(icntl, cntl)
end

mutable struct mc77_info{T}
  info::Vector{Cint}
  rinfo::Vector{T}
end

function mc77_info{T}() where T
  info = zeros(Int32, 10)
  rinfo = zeros(T, 10)
  return mc77_info{T}(info, rinfo)
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

# mc77i sets default values for the components of the arrays that hold controlling parameters. It should normally be called once prior to any other call.
# mc77a computes the scaling matrices when A is sparse and stored by columns.
# mc77b computes the scaling matrices when A is sparse and stored using the coordinate format.
# mc77c computes the scaling matrices when A is dense.
for (iname, aname, bname, cname, elty, subty) in ((:mc77i , :mc77a , :mc77b , :mc77c , :Float32   , :Float32),
                                                  (:mc77id, :mc77ad, :mc77bd, :mc77cd, :Float64   , :Float64),
                                                  (:mc77ic, :mc77ac, :mc77bc, :mc77cc, :ComplexF32, :Float32),
                                                  (:mc77iz, :mc77az, :mc77bz, :mc77cz, :ComplexF64, :Float64))
  @eval begin
    function mc77(A::SparseMatrixCSC{$elty}, job::Integer)
      m,n = size(A)
      nz = nnz(A)
      jcst = A.colptr
      irn = A.rowval
      a = A.nzval
      control = mc77_control{$subty}()
      info = mc77_info{$subty}()
      $iname(control.icntl, control.cntl)
      if control.icntl[6] == 0
        liw = m+n
        ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
      else
        liw = m
        ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $aname(job, m, n, nz, jcst, irn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = dw[m+1:m+n]
      return Dr, Dc
    end

    function mc77(m::Integer, n::Integer, rows::Vector{Cint}, cols::Vector{Cint}, nzval::Vector{$elty}, job::Integer)
      nz = length(nzval)
      irn = rows
      jcn = cols
      a = nzval
      control = mc77_control{$subty}()
      info = mc77_info{$subty}()
      $iname(control.icntl, control.cntl)
      if control.icntl[6] == 0
        liw = m+n
        ldw = control.icntl[5] == 0 ? nz + 2*(m+n) : 2*(m+n)
      else
        liw = m
        ldw = control.icntl[5] == 0 ? nz + 2*m : 2*m
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $bname(job, m, n, nz, irn, jcn, a, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = dw[m+1:m+n]
      return Dr, Dc
    end

    function mc77(A::Matrix{$elty}, job::Integer)
      m,n = size(A)
      lda = max(1,stride(A,2))
      control = mc77_control{$subty}()
      info = mc77_info{$subty}()
      $iname(control.icntl, control.cntl)
      if control.icntl[6] == 0
        liw = m+n
        ldw = control.icntl[5] == 0 ? lda*n + 2*(m+n) : 2*(m+n)
      else
        liw = m
        ldw = control.icntl[5] == 0 ? div(m*(m+1),2) + 2*m : 2*m
      end
      iw = zeros(Cint, liw)
      dw = zeros($subty, ldw)
      $cname(job, m, n, A, lda, iw, liw, dw, ldw, control.icntl, control.cntl, info.info, info.rinfo)
      Dr = dw[1:m]
      Dc = dw[m+1:m+n]
      return Dr, Dc
    end
  end
end
