@testset "ma27" begin
  A = [2 3 0 0 0;
       3 0 4 0 6;
       0 4 1 5 0;
       0 0 5 0 0;
       0 6 0 0 1] |> sparse
  b = [8; 45; 31; 15; 17]
  xstar = [1; 2; 3; 4; 5]

  for T in (Float32, Float64, Float128)
    for INT in (Int32, Int64)
      @testset "$T -- $INT" begin 
        A2 = SparseMatrixCSC{T, INT}(A)
        b2 = Vector{T}(b)
        x = ma27(A2, b2)
        @test x ≈ xstar
      end
    end
  end
end
