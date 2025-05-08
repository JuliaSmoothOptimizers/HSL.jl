iA = [4, 1, 4, 2, 3, 3]
jA = [3, 1, 2, 2, 1, 3]
vA = [16000.0, 100.0, 14000.0, 6.0, 900.0, 110000.0]

A = sparse(iA, jA, vA, 4, 3)

vB = [0.8790, 1.8123, 1.2811, 0.7806, 0.5518, 1.1377]
B = sparse(iA, jA, vB, 4, 3)

@testset "MC29 -- $T -- $INT" for T in (Float32, Float64, Float128), INT in (Int32, Int64)
  M = SparseMatrixCSC{T,INT}(A)
  r, c = mc29(M)

  ne = 6
  for k = 1:ne
    i = iA[k]
    j = jA[k]
    @test abs(vB[k] - vA[k] * exp(r[i] + c[j])) ≤ 1e-4
  end
end
