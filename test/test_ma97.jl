for T in (Float32, Float64, ComplexF32, ComplexF64)

  @info "Testing hsl_ma97 with $T data"
  matrix_type = T in (ComplexF32, ComplexF64) ? :herm_indef : :real_indef

  ϵ = sqrt(eps(real(T)))
  n = 5
  A = convert(T, 3) * sprand(T, n, n, .5)
  A = A + A' + sparse(T(1)*I, n, n)

  # Test symmetric indefinite A.
  ma97 = Ma97(A)
  ma97_factorize!(ma97, matrix_type=matrix_type)
  @test ma97.info.flag == 0

  # Solve with one rhs.
  b = rand(T, n)
  x = ma97_solve(ma97, b)
  @test ma97.info.flag == 0
  LU = lu(A)
  x_exact = LU \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  # Solve with multiple rhs.
  b = rand(T, n, 3)
  x = ma97_solve(ma97, b)
  @test ma97.info.flag == 0
  x_exact = LU \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  piv_order, d = ma97_inquire(ma97, matrix_type=matrix_type)
  @test ma97.info.flag == 0

  # Test backslash.
  x = ma97 \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  # Alter d.
  d[1,1] *= 2
  ma97_alter!(ma97, d)

  # Test convenience interface.
  x = ma97_solve(A, b, matrix_type=matrix_type)
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  # Test symmetric positive definite A.
  A = A * A';
  matrix_type = T in (ComplexF32, ComplexF64) ? :herm_pd : :real_spd

  ma97 = Ma97(A)
  ma97_factorize!(ma97, matrix_type=matrix_type)
  @test ma97.info.flag == 0

  b = rand(T, n)
  x = ma97_solve(ma97, b)
  @test ma97.info.flag == 0
  LU = lu(A)
  x_exact = LU \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  # Solve with multiple rhs.
  b = rand(T, n, 3)
  x = ma97_solve(ma97, b)
  @test ma97.info.flag == 0
  x_exact = LU \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  d = ma97_inquire(ma97, matrix_type=matrix_type)
  @test ma97.info.flag == 0

  # Test rectangular A.
  A = rand(T, 10, 6)
  b = rand(T, 10)
  @info "Warning below is expected and normal"
  (r, x) = ma97_least_squares(A, b)
  x_exact = A \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  A = rand(T, 6, 10)
  b = rand(T, 6)
  @info "Warning below is expected and normal"
  (x, y) = ma97_min_norm(A, b)
  x_exact = A \ b
  @test norm(x - x_exact) ≤ ϵ * norm(x_exact)

  # Test if errors are thrown correctly.
  A = rand(T, 10, 5)
  @test_throws Ma97Exception Ma97(A)

  A = rand(T, 6, 10)
  b = rand(T, 3)
  @test_throws Ma97Exception ma97_min_norm(A, b)
  @test_throws Ma97Exception ma97_solve(ma97, b)

end
