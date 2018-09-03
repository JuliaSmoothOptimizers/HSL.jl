# HSL

These are the beginnings of a set of interfaces to
[HSL](http://www.hsl.rl.ac.uk) packages for sparse linear algebra.

Certain HSL packages are freely available to all, others are freely available
to academics only. Please refer to the website above for licensing information.
In all cases, users are responsible for obtaining HSL packages.

## Installing

```JULIA
julia> Pkg.clone("https://github.com/JuliaSmoothOptimizers/HSL.jl.git")
```

At this point, make sure that there isn't a stray METIS library on your library
path. You especially want to make sure that METIS 5 is not accessible because
the HSL library currently interfaced only supports METIS 4. If you have such
library accessible, it is important to remove it from the library path, at
least temporarily. For example, if you are on OSX and are using Homebrew, you
can hide METIS 5 with `brew unlink metis`. After the install procedure is
complete, it is fine to link `metis` again with `brew link metis`.

The source archive, as obtained from the HSL download process, should be placed
as is in `Pkg.dir("HSL", "deps", "downloads")`. The `HSL` Julia module will
take care of compilation. Once the source archives have been placed in the
location indicated, run

```JULIA
julia> Pkg.build("HSL")
julia> Pkg.test("HSL")
```

Note that a C and Fortran compilers are required.

## Supported Packages

### HSL_MA97

[HSL_MA97](http://www.hsl.rl.ac.uk/catalogue/hsl_ma97.html) version 2.4.0: an
OpenMP-based direct solver for symmetric linear systems. Example:

```JULIA
using MatrixMarket
using HSL

K = MatrixMarket.mmread("K.mtx")  # only the lower triangle
rhs = readdlm("rhs.rhs")

LBL = Ma97(K)
ma97_factorize(LBL)
x = ma97_solve(LBL, rhs)  # or x = LBL \ rhs
```

#### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When *A* is *m*-by-*n* with *m* < *n* and has full row rank,
```JULIA
(x, y) = ma97_solve(A, b)
```
solves for the minimum-norm solution, i.e., *x* such that *Ax = b* and *x +
Aᵀ y = 0*. The call
```JULIA
(x, y) = ma97_min_norm(A, b)
```
is also defined, and is equivalent to the above.

When *m* > *n* and has full column rank,
```JULIA
(r, x) = ma97_solve(A, b)
```
solves for the least-squares solution, i.e., *x* such that *r = b - Ax*
satisfies *Aᵀ r = 0*. The call
```JULIA
(r, x) = ma97_least_squares(A, b)
```
is also defined, and is equivalent to the above.

### HSL_MA57

[HSL_MA57](http://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:
a sparse, multifrontal solver for symmetric linear systems. Example:

```JULIA
using MatrixMarket
using HSL

K = MatrixMarket.mmread("examples/K_0.mtx")  # only the lower triangle
rhs = readdlm("examples/rhs_0.rhs")
rhss = hcat(rhs, rhs)

## factorize and solve
LDL = Ma57(K)
ma57_factorize(LDL)
LDL.info.rank
x = ma57_solve(LDL, rhs)  # or x = LBL \ rhs
norm(K*x - rhs)
xx = ma57_solve(LDL, rhss)  # or x = LBL \ rhss
```

#### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When *A* is *m*-by-*n* with *m* < *n* and has full row rank,
```JULIA
(x, y) = ma57_solve(A, b)
```
solves for the minimum-norm solution, i.e., *x* such that *Ax = b* and *x +
Aᵀ y = 0*. The call
```JULIA
(x, y) = ma57_min_norm(A, b)
```
is also defined, and is equivalent to the above.

When *m* > *n* and has full column rank,
```JULIA
(r, x) = ma57_solve(A, b)
```
solves for the least-squares solution, i.e., *x* such that *r = b - Ax*
satisfies *Aᵀ r = 0*. The call
```JULIA
(r, x) = ma57_least_squares(A, b)
```
is also defined, and is equivalent to the above. Example:


```JULIA
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

## TODO List

- [ ] Convenient constructor for rectangular matrices to enable `\`
- [ ] Convenient access to control parameters, especially pivot tolerance
- [X] Real single precision arithmetic [(e59c501)](https://github.com/JuliaSmoothOptimizers/HSL.jl/commit/e59c5015297bad38357c7cf64bd0dc5fa68e3ba5)
- [X] Complex single precision arithmetic [(e59c501)](https://github.com/JuliaSmoothOptimizers/HSL.jl/commit/e59c5015297bad38357c7cf64bd0dc5fa68e3ba5)
- [X] Complex double precision arithmetic [(e59c501)](https://github.com/JuliaSmoothOptimizers/HSL.jl/commit/e59c5015297bad38357c7cf64bd0dc5fa68e3ba5)
