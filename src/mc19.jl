export mc19

"""
    r, c = mc19(A::SparseMatrixCSC)

Compute diagonal scaling factors for the square sparse matrix `A` so that the nonzeros of the scaled
matrix are as close to unity as possible in a least-squares logarithmic sense.

We highly recommend to use [`mc29`](@ref) and [`mc30`](@ref) instead of `mc19`.
"""
function mc19 end

function mc19(A::SparseMatrixCSC{T,INT}) where {T,INT}
  m, n = size(A)
  na = nnz(A)
  irn, icn, a = findnz(A)
  r = Vector{Float32}(undef, n)
  c = Vector{Float32}(undef, n)
  w = Vector{Float32}(undef, 5*n)
  mc19ar(T, INT, n, na, a, irn, icn, r, c, w)
  return r, c
end

function mc19(n::Integer, irn::Vector{INT}, icn::Vector{INT}, a::Vector{T}) where {T,INT}
  na = length(a)
  r = Vector{Float32}(undef, n)
  c = Vector{Float32}(undef, n)
  w = Vector{Float32}(undef, 5*n)
  mc19ar(T, INT, n, na, a, irn, icn, r, c, w)
  return r, c
end
