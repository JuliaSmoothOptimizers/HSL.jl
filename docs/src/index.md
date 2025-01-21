# [HSL.jl documentation](@id Home)

A set of interfaces to [HSL](https://www.hsl.rl.ac.uk) packages for sparse linear algebra.

## Installing

```JULIA
julia> ]
pkg> add HSL
```

## Supported Packages

### HSL_MA97

[HSL_MA97](https://www.hsl.rl.ac.uk/catalogue/hsl_ma97.html): an OpenMP-based direct solver for symmetric linear systems. Example:

```julia
using MatrixMarket
using HSL

K = MatrixMarket.mmread("K.mtx")  # only the lower triangle
rhs = readdlm("rhs.rhs")

LBL = Ma97(K)
ma97_factorize!(LBL)
x = ma97_solve(LBL, rhs)  # or x = LBL \ rhs
```

#### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When *A* is *m*-by-*n* with *m* < *n* and has full row rank,
```julia
(x, y) = ma97_solve(A, b)
```
solves for the minimum-norm solution, i.e., *x* such that *Ax = b* and *x +
Aᵀ y = 0*. The call
```julia
(x, y) = ma97_min_norm(A, b)
```
is also defined, and is equivalent to the above.

When *m* > *n* and has full column rank,
```julia
(r, x) = ma97_solve(A, b)
```
solves for the least-squares solution, i.e., *x* such that *r = b - Ax*
satisfies *Aᵀ r = 0*. The call
```julia
(r, x) = ma97_least_squares(A, b)
```
is also defined, and is equivalent to the above.

### HSL_MA57

[HSL_MA57](https://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:
a sparse, multifrontal solver for symmetric linear systems. Example:

```julia
using MatrixMarket
using HSL

K = MatrixMarket.mmread("examples/K_0.mtx")  # only the lower triangle
rhs = readdlm("examples/rhs_0.rhs")
rhss = hcat(rhs, rhs)

## factorize and solve
LDL = Ma57(K)
ma57_factorize!(LDL)
LDL.info.rank
x = ma57_solve(LDL, rhs)  # or x = LBL \ rhs
norm(K*x - rhs)
xx = ma57_solve(LDL, rhss)  # or x = LBL \ rhss
```

#### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When *A* is *m*-by-*n* with *m* < *n* and has full row rank,
```julia
(x, y) = ma57_solve(A, b)
```
solves for the minimum-norm solution, i.e., *x* such that *Ax = b* and *x +
Aᵀ y = 0*. The call
```julia
(x, y) = ma57_min_norm(A, b)
```
is also defined, and is equivalent to the above.

When *m* > *n* and has full column rank,
```julia
(r, x) = ma57_solve(A, b)
```
solves for the least-squares solution, i.e., *x* such that *r = b - Ax*
satisfies *Aᵀ r = 0*. The call
```julia
(r, x) = ma57_least_squares(A, b)
```
is also defined, and is equivalent to the above. Example:


```julia
using MatrixMarket
using HSL

K = MatrixMarket.mmread("examples/K_0.mtx")  # only the lower triangle
rhs = readdlm("examples/rhs_0.rhs")

## solve min norm
K_mn = K[1:200,:]
x_mn, y_mn = ma57_min_norm(K_mn, rhs[1:200]) # == ma57_solve(K_mn, rhs[1:200])

## solve least squares
K_ls = K[:,1:200]
r_ls, x_ls = ma57_least_squares(K_ls, rhs)   # == ma57_solve(K_ls, rhs)
```
