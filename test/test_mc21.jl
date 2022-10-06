@testset "mc21" begin
  A = [
    1 0 0 4
    0 0 7 8
    9 0 0 12
    0 14 0 16
  ]
  Aᴴ = sparse(A')
  iperm = mc21(Aᴴ)
  @test iperm == Int32[1; 4; 2; 3]

  n = 100
  A = rand(n, n)
  for i = 1:n
    A[i, i] = 0
  end
  A = SparseMatrixCSC(A)
  p = mc21(A)
  @test minimum(p) == 1
  @test maximum(p) == n
  @test isperm(p)
  @test 0 ∉ diag(A[:, p])
end
