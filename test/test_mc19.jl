iA = [4, 1, 4, 2, 3, 2, 3, 1]
jA = [4, 1, 2, 2, 1, 4, 3, 4]
vA = [16_000.0, 100.0, 14_000.0, 6.0, 900.0, 8.0, 110_000.0, 4.0]

A = sparse(iA, jA, vA, 4, 4)

vB = [1.4055, 1.2847, 0.8942, 1.1184, 0.7784, 2.0509, 1.0000, 0.3469]
B = sparse(iA, jA, vB, 4, 4)

@testset "MC19 -- $T -- $INT" for T in (Float32, Float64, Float128), INT in (Int32, Int64)
  M = SparseMatrixCSC{T,INT}(A)
  r, c = mc19(M)

  ne = 8
  for k = 1:ne
    i = iA[k]
    j = jA[k]
    @test abs(vB[k] - vA[k] * exp(r[i] + c[j])) ≤ 1e-4
  end
end
