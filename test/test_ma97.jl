n = 5
A = 3 * sprand(n, n, .5)
A = A + A' + speye(n)

# Test symmetric indefinite A.
ma97 = Ma97(A)
ma97_factorize(ma97)
@assert ma97.info.flag == 0

# Solve with one rhs.
b = rand(n)
x = ma97_solve(ma97, b)
@assert ma97.info.flag == 0
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

# Solve with multiple rhs.
b = rand(n, 3)
x = ma97_solve(ma97, b)
@assert ma97.info.flag == 0
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

piv_order, d = ma97_inquire(ma97)
@assert ma97.info.flag == 0

# Test backslash.
x = ma97 \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

# Alter d.
d[1,1] *= 2
ma97_alter(ma97, d)

# Test convenience interface.
x = ma97_solve(A, b)
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

# Test symmetric positive definite A.
A = A * A';
ma97 = Ma97(A)
ma97_factorize(ma97, matrix_type=:real_spd)
@assert ma97.info.flag == 0

b = rand(n)
x = ma97_solve(ma97, b)
@assert ma97.info.flag == 0
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

# Solve with multiple rhs.
b = rand(n, 3)
x = ma97_solve(ma97, b)
@assert ma97.info.flag == 0
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

d = ma97_inquire(ma97, matrix_type=:real_spd)
@assert ma97.info.flag == 0

# Test rectangular A.
A = rand(10, 6)
b = rand(10)
(r, x) = ma97_least_squares(A, b)
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)

A = rand(6, 10)
b = rand(6)
(x, y) = ma97_min_norm(A, b)
x_exact = A \ b
@assert norm(x - x_exact) ≤ 1.0e-8 * norm(x_exact)
