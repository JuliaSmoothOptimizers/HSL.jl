@testset "mc77" begin
  A = [100    10    0;
         4 -1000    5;
         0    23 0.01]

  B = [     1 0.0316      0;
       0.0126     -1 0.9944;
            0 0.9977 0.0863]

  C = [0.9889  0.0143      0;
       0.0073 -0.2651 0.7685;
            0  0.7632 0.1924] 

  for T ∈ (Float32, Float64, ComplexF32, ComplexF64)
    R = real(T)
    for M ∈ (Matrix{T}(A), SparseMatrixCSC{T,Cint}(A))
      Dr, Dc = mc77(M, 0)
      @test round.(Dr, digits=3) ≈ R[10; 31.623; 0.729]
      @test round.(Dc, digits=3) ≈ R[10; 31.623; 0.159]

      Dr, Dc = mc77(M, 1)
      @test round.(Dr, digits=3) ≈ R[10.479; 56.578; 0.452]
      @test round.(Dc, digits=3) ≈ R[9.650; 66.675; 0.115]

      if isa(M, SparseMatrixCSC)
        m,n = size(M)
        rows, cols, vals = findnz(M)
        
        Dr, Dc = mc77(m, n, rows, cols, vals, 0)
        @test round.(Dr, digits=3) ≈ R[10; 31.623; 0.729]
        @test round.(Dc, digits=3) ≈ R[10; 31.623; 0.159]

        Dr, Dc = mc77(m, n, rows, cols, vals, 1)
        @test round.(Dr, digits=3) ≈ R[10.479; 56.578; 0.452]
        @test round.(Dc, digits=3) ≈ R[9.650; 66.675; 0.115]
      end
    end
  end
end
