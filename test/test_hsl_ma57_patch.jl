function test_ma57_patch(A, M, b, xexact)
  ϵ = sqrt(eps(eltype(A)))
  ma57_factorize!(M)

  # extract factors
  (L, D, s, p) = ma57_get_factors(M)
  S = spdiagm(0 => s)
  P = sparse(1.0I, M.n, M.n)[p, :]
  L = convert(SparseMatrixCSC{Float64, Int}, L) # Convert to 64 bits because \ is not defined for 32 bits.
  @test norm(P * S * A * S * P' - L * D * L') ≤ ϵ * norm(A)

  # test partial solves
  b1 = S \ (P' * (L \ (P * (S * b))))
  x1 = ma57_solve(M, b, job = :LS)
  @test norm(x1 - b1) ≤ ϵ * norm(b1)

  b2 = S * (P' * (Matrix(D) \ (P * (S * b))))
  x2 = ma57_solve(M, b, job = :DS)
  @test norm(x2 - b2) ≤ ϵ * norm(b2)

  b3 = S * (P' * (L' \ (P * (S \ b))))
  x3 = ma57_solve(M, b, job = :LPS)
  @test norm(x3 - b3) ≤ ϵ * norm(b3)

  # Test ma57_alter_d
  B = inv(Tridiagonal(D))
  d1 = diag(B)
  d2 = [diag(B, 1); 0][:]
  ma57_alter_d(M, [Vector(d1)'; Vector(d2)'])
  x4 = ma57_solve(M, b)
  @test norm(x4 - xexact) ≤ ϵ * norm(xexact)

  (L2, D2, s2, p2) = ma57_get_factors(M)
  @test norm(D - D2) ≤ ϵ

  # alter the D factor
  Dabs = abs.(D)
  Babs = inv(Tridiagonal(Dabs))
  d1 = diag(Babs)
  d2 = [diag(Babs, 1); 0][:]
  ma57_alter_d(M, [Vector(d1)'; Vector(d2)'])

  (L3, D3, s3, p3) = ma57_get_factors(M)
  @test norm(Dabs - D3) ≤ ϵ
end

@testset "hsl_ma57_patch" begin
  @testset "Data Type: $T" for T in (Float32, Float64)
    rows = Cint[1, 1, 2, 2, 3, 3, 5]
    cols = Cint[1, 2, 3, 5, 3, 4, 5]
    vals = T[2, 3, 4, 6, 1, 5, 1]
    A = sparse(rows, cols, vals)
    A = A + triu(A, 1)'

    M = ma57_coord(5, rows, cols, vals)

    b = T[8, 45, 31, 15, 17]
    xexact = T[1, 2, 3, 4, 5]
    test_ma57_patch(A, M, b, xexact)

    n = 5
    A = convert(T, 3) * convert(SparseMatrixCSC{T, Cint}, sprand(T, n, n, 0.5))
    A = A + A' + convert(SparseMatrixCSC{T, Cint}, sparse(T(1) * I, n, n))
    M = Ma57(A)
    b = rand(T, n)
    xexact = lu(A) \ b
    test_ma57_patch(A, M, b, xexact)
  end
end
