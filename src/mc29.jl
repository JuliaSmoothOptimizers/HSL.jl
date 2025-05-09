export mc29

"""
    r, c = mc29(A::SparseMatrixCSC)

Compute diagonal scaling factors for the sparse unsymmetric matrix `A` so that the nonzeros of the scaled
matrix are as close to unity as possible in a least-squares logarithmic sense.
"""
function mc29 end

function mc29(A::SparseMatrixCSC{T,INT}) where {T,INT}
  m, n = size(A)
  ne = nnz(A)
  irn, icn, a = findnz(A)
  r = Vector{T}(undef, m)
  c = Vector{T}(undef, n)
  w = Vector{T}(undef, 2*m + 3*n)
  mc29ar(T, INT, m, n, ne, a, irn, icn, r, c, w, 0, 0)
  return r, c
end

function mc29(m::Integer, n::Integer, irn::Vector{INT}, icn::Vector{INT}, a::Vector{T}) where {T,INT}
  ne = length(a)
  r = Vector{T}(undef, m)
  c = Vector{T}(undef, n)
  w = Vector{T}(undef, 2*m + 3*n)
  mc29ar(T, INT, m, n, ne, a, irn, icn, r, c, w, 0, 0)
  return r, c
end
