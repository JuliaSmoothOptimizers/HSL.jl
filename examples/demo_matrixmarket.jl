using MatrixMarket
using HSL
using LinearOperators

K = MatrixMarket.mmread("K_0.mtx")
rhs = readdlm("rhs_0.rhs")

# Version 1: simple
# x = ma97_solve(K, rhs)

# Version 2: intermediate
# LBL = ma97_factorize(K)
# x = ma97_solve(LBL, b)  # or x = LBL \ b

# Version 3: finer control
LBL = Ma97(K)
ma97_factorize(LBL)
x = ma97_solve(LBL, rhs)  # or x = LBL \ b

# Only the lower triangle appears in K.
# We use a linear operator to compute products with the symmetric matrix.
H = opHermitian(K)
@printf("Relative residual: %7.1e\n", norm(H * x[:] - rhs) / norm(rhs))
