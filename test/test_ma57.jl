function test_ma57(A, M, b, xexact)
  ϵ = sqrt(eps(eltype(A)))
  ma57_factorize(M)
  x = ma57_solve(M, b)
  @test norm(x - xexact) ≤ ϵ * norm(xexact)

  # solve with iterative refinement
  x = ma57_solve(M, b, 2)
  @test norm(x - xexact) ≤ ϵ * norm(xexact)

  # extract factors
  (L, D, s, p) = ma57_get_factors(M)
  S = spdiagm(s)
  P = speye(M.n)[p, :]
  @test vecnorm(P * S * A * S * P' - L * D * L') ≤ ϵ * vecnorm(A)

  # test partial solves
  b1 = S \ (P' * (L \ (P * (S * b))))
  x1 = ma57_solve(M, b, job=:LS)
  @test norm(x1 - b1) ≤ ϵ * norm(b1)

  b2 = S * (P' * (full(D) \ (P * (S * b))))
  x2 = ma57_solve(M, b, job=:DS)
  @test norm(x2 - b2) ≤ ϵ * norm(b2)

  b3 = S * (P' * (L' \ (P * (S \ b))))
  x3 = ma57_solve(M, b, job=:LPS)
  @test norm(x3 - b3) ≤ ϵ * norm(b3)

  # alter the D factor
  d1 = abs(diag(D))
  d2 = [diag(D, 1) ; 0]
  ma57_alter_d(M, [full(d1)' ; full(d2)'])
end


for T in (Float32, Float64)

  info("Testing hsl_ma57 with $T data")
  rows = Int32[1, 1, 2, 2, 3, 3, 5]
  cols = Int32[1, 2, 3, 5, 3, 4, 5]
  vals = T[2, 3, 4, 6, 1, 5, 1]
  A = sparse(rows, cols, vals) ; A = A + triu(A, 1)'

  M = ma57_coord(5, rows, cols, vals)

  b = T[8, 45, 31, 15, 17]
  xexact = T[1, 2, 3, 4, 5]
  test_ma57(A, M, b, xexact)

  n = 5
  if VERSION >= v"0.5"
    A = convert(T, 3) * sprand(T, n, n, .5)
  else
    A = convert(T, 3) * convert(SparseMatrixCSC{T,Int}, sprand(n, n, .5))
  end

  A = A + A' + speye(T, n)
  M = Ma57(A)
  b = rand(T, n)
  xexact = A \ b
  test_ma57(A, M, b, xexact)
end
