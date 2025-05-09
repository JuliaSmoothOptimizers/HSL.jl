iA = [1, 1, 1, 2, 2, 3, 3, 4, 4, 4]
jA = [3, 1, 2, 1, 2, 4, 3, 2, 3, 4]
vA = [3.0, 3.0, 2.0, 5.0, 3.0, 1.0, 4.0, 0.0, 6.0, 2.0]
A = sparse(iA, jA, vA, 4, 4)

@testset "mc64" begin
  @testset "$T -- $INT" for T in (Float32, Float64, Float128), INT in (Int32, Int64)
    M = SparseMatrixCSC{T,INT}(A)
    mc64(M, 5)
  end
end
