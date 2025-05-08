iA = [4, 1, 4, 2, 3, 3]
jA = [4, 1, 2, 2, 1, 3]
vA = [16000.0, 100.0, 14000.0, 6.0, 900.0, 110000.0]

A = sparse(iA, jA, vA, 4, 4)

vB = [0.1488, 1.9197, 6.7220, 0.1488, 0.5209, 1.9197]

@testset "MC30 -- $T -- $INT" for T in (Float32, Float64, Float128), INT in (Int32, Int64)
  M = SparseMatrixCSC{T,INT}(A)
  s = mc30(M)

  ne = 6
  for k = 1:ne
    i = iA[k]
    j = jA[k]
    @test abs(vB[k] - vA[k] * exp(s[i] + s[j])) ≤ 1e-4
  end
end
