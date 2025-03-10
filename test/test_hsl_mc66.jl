@testset "hsl_mc66" begin
  A = [1 1 0 0;
       1 0 1 1;
       1 1 0 0;
       1 0 1 1]

  B = [1 0 0 1;
       1 0 0 1;
       0 1 1 1;
       0 1 1 1]
  C = SparseMatrixCSC(A)
  rp, cp = mc66(C, 2)
  @test isperm(rp)
  @test isperm(cp)
  @test A[rp,cp] == B
end
