export mc21

# mc21a and mc21ad routines are identical.
#
# function mc21a(n, icn, licn, ip, lenr, iperm, numnz, iw)
#   ccall((:mc21a_, libmc21),
#         Nothing,
#         (Ref{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}),
#          n         , icn       , licn      , ip        , lenr      , iperm     , numnz     , iw)
# end

function mc21ad(n, icn, licn, ip, lenr, iperm, numnz, iw)
  ccall(
    (:mc21ad_, libmc21),
    Nothing,
    (
      Ref{Int32},
      Ptr{Int32},
      Ref{Int32},
      Ptr{Int32},
      Ptr{Int32},
      Ptr{Int32},
      Ref{Int32},
      Ptr{Int32},
    ),
    n,
    icn,
    licn,
    ip,
    lenr,
    iperm,
    numnz,
    iw,
  )
end

"""
    p = mc21(A::SparseMatrixCSC; sym::Bool=false)

Given a sparse matrix A, this function attempts to find a column permutation `p`
that makes the matrix A[:,p] have nonzeros on its diagonal.
"""
function mc21(A::SparseMatrixCSC; sym::Bool = false)
  n, m = size(A)
  n == m || error("A is not square!")
  icn = convert(Vector{Int32}, A.rowval)
  licn = length(icn)
  ip = convert(Vector{Int32}, A.colptr)
  lenr = [ip[k + 1] - ip[k] for k = 1:n]
  iperm = zeros(Int32, n)
  numnz = Ref{Int32}(0)
  iw = zeros(Int32, 4 * n)
  mc21ad(n, icn, licn, ip, lenr, iperm, numnz, iw)
  (numnz[] < n) && throw(SingularException(n - numnz[]))
  return iperm
end

mc21(A::Matrix; kwargs...) = mc21(sparse(A); kwargs...)
