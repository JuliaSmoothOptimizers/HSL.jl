@testset "kb07" begin
  for T in (Float32, Float64, Cint)
    n = 10
    v = rand(T, n)
    v_old = copy(v)
    v, perm = kb07(v)
    @test isperm(perm)
    for i = 1:n-1
      @test v[i] ≤ v[i+1]
    end
    @test v_old[perm] == v
  end
end
