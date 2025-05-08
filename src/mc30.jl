export mc30

"""
    r, c = mc30(A::SparseMatrixCSC)

Compute diagonal scaling factors for the sparse symmetric matrix `A` so that the nonzeros of the scaled
matrix are as close to unity as possible in a least-squares logarithmic sense.
"""
function mc30 end

function mc30(A::SparseMatrixCSC{T,INT}) where {T,INT}
  m, n = size(A)
  ne = nnz(A)
  irn, icn, a = findnz(A)
  s = Vector{T}(undef, n)
  w = Vector{T}(undef, 4*n)
  mc30ar(T, INT, n, ne, a, irn, icn, s, w, 0, 0)
  return s
end

function mc30(n::Integer, irn::Vector{INT}, icn::Vector{INT}, a::Vector{T}) where {T,INT}
  ne = length(a)
  s = Vector{T}(undef, n)
  w = Vector{T}(undef, 4*n)
  mc30ar(T, INT, n, ne, a, irn, icn, s, w, 0, 0)
  return s
end
