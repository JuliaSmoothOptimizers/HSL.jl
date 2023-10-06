import SparseArrays.getindex_traverse_col
# this should be fixed in a future release
# see
getindex_traverse_col(::AbstractUnitRange, lo::Integer, hi::Integer) = lo:hi

function test_ma57(A, M, b, xexact)
  ϵ = sqrt(eps(eltype(A)))
  ma57_factorize!(M)
  x = ma57_solve(M, b)
  @test norm(x - xexact) ≤ ϵ * norm(xexact)

  # solve with iterative refinement
  x = ma57_solve(M, b, 2)
  @test norm(x - xexact) ≤ ϵ * norm(xexact)

  # test min norm
  A_mn = A[1:2, :]
  x_mn, y_mn = ma57_min_norm(A_mn, b[1:2]) # == ma57_solve(A_mn, b[1:2])
  x_mn_star = A_mn' * (inv(Matrix(A_mn * A_mn')) * b[1:2])
  @test norm(x_mn - x_mn_star) ≤ ϵ * norm(x_mn_star)

  ## solve least squares
  A_ls = A[:, 1:2]
  r_ls, x_ls = ma57_least_squares(A_ls, b)   # == ma57_solve(A_ls, b)
  x_ls_star = qr(Matrix(A_ls)) \ b
  @test norm(x_ls - x_ls_star) ≤ ϵ * norm(x_ls_star)
end

function test_ma57_factors(A, M, b, xexact)
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

@testset "hsl_ma57" begin
  @testset "Data Type: $T" for T in (Float32, Float64)
    n = 5
    rows = Cint[1, 1, 2, 2, 3, 3, 5]
    cols = Cint[1, 2, 3, 5, 3, 4, 5]
    vals = T[2, 3, 4, 6, 1, 5, 1]
    A = sparse(rows, cols, vals, n, n)
    A = A + triu(A, 1)'

    M = ma57_coord(n, rows, cols, vals)

    b = T[8, 45, 31, 15, 17]
    xexact = T[1, 2, 3, 4, 5]
    test_ma57(A, M, b, xexact)

    # test with non-default options
    control = Ma57_Control{T}()
    info = Ma57_Info{T}()
    control.icntl[6] = 4  # choose a different ordering
    # give lower triangle: swap rows and cols
    LBL = ma57_coord(n, cols, rows, vals, control, info)
    ma57_factorize!(LBL)
    work = similar(b)
    x = copy(b)
    ma57_solve!(LBL, x, work)
    ϵ = sqrt(eps(T))
    @test norm(x - xexact) ≤ ϵ * norm(xexact)

    A = convert(T, 3) * convert(SparseMatrixCSC{T, Cint}, sprand(T, n, n, 0.5))
    A = A + A' + convert(SparseMatrixCSC{T, Cint}, sparse(T(1) * I, n, n))
    M = Ma57(A)
    b = rand(T, n)
    xexact = lu(A) \ b
    test_ma57(A, M, b, xexact)

    @testset "hsl_ma57_factors" begin
      rows = Cint[1, 1, 2, 2, 3, 3, 5]
      cols = Cint[1, 2, 3, 5, 3, 4, 5]
      vals = T[2, 3, 4, 6, 1, 5, 1]
      A = sparse(rows, cols, vals)
      A = A + triu(A, 1)'

      M = ma57_coord(5, rows, cols, vals)

      b = T[8, 45, 31, 15, 17]
      xexact = T[1, 2, 3, 4, 5]
      test_ma57_factors(A, M, b, xexact)

      n = 5
      A = convert(T, 3) * convert(SparseMatrixCSC{T, Cint}, sprand(T, n, n, 0.5))
      A = A + A' + convert(SparseMatrixCSC{T, Cint}, sparse(T(1) * I, n, n))
      M = Ma57(A)
      b = rand(T, n)
      xexact = lu(A) \ b
      test_ma57_factors(A, M, b, xexact)
    end
  end
end
