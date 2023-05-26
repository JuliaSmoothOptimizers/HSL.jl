# [HSL.jl documentation](@id Home)

A set of interfaces to [HSL](http://www.hsl.rl.ac.uk) packages for sparse linear algebra.

Certain HSL packages are freely available to all, others are freely available
to academics only. Please refer to the website above for licensing information.
In all cases, users are responsible for obtaining HSL packages.

## Installing

```JULIA
julia> ]
pkg> add HSL
```

At this point, make sure that there isn't a stray METIS library on your library
path. You especially want to make sure that METIS 5 is not accessible because
the HSL library currently interfaced only supports METIS 4. If you have such
library accessible, it is important to remove it from the library path, at
least temporarily. For example, if you are on OSX and are using Homebrew, you
can hide METIS 5 with `brew unlink metis`. After the install procedure is
complete, it is fine to link `metis` again with `brew link metis`.

Set the environment variables `HSL_MA57_PATH` and `HSL_MA97_PATH` to specify where the source archives `tar.gz` are stored.
Alternatively, you can use the `zip` archive as long as `unzip` is installed on your system.
The `HSL` Julia module will take care of compilation.
Once the source archives have been placed in the locations indicated by the environment variables, run

```JULIA
julia> ]
pkg> build HSL
pkg> test HSL
```

Note that a C and Fortran compilers are required.
Should it be necessary, you can set the compilers to use by setting the environment variables
* `HSL_FC`: the Fortran 90/95 compiler (default: `gfortran`)
* `HSL_F77`: the Fortran 77 compiler (default: the same as `FC`)
* `HSL_CC`: the C compiler (default: `gcc`).

### General Guidelines on Compilers

The version of gcc and gfortran used to compile HSL.jl should be based on the same version of the shared `libgfortran` library as the version of Julia being used.
On Linux, Julia ≥ 1.8 is based on `libgfortran` version 5, whereas on macOS, they are based on `libgfortran` version 4.
Thus for instance, versions of gcc/gfortran as recent as 11 are appropriate on Linux, but version 7 could be used on macOS.
On macOS, the compilers can be installed with Homebrew using
```
brew install gcc@7
```

### Installing on Apple Silicon

Homebrew does not (yet) provide precompiled binaries for gcc/gfortran based on `libgfortran` version 4.
One solution is to use Julia and the compilers built for Intel Macs via Rosetta.
First make sure that Rosetta is installed by following, e.g., [these instructions](https://osxdaily.com/2020/12/04/how-install-rosetta-2-apple-silicon-mac).

You may now install Homebrew for Intel Macs on your Silicon Mac:
```
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Note that Homebrew for Silicon installs in `/opt/homebrew` whereas Homebrew for Intel installs in `/usr/local`.

Next, install gcc/gfortran version 7 for Intel:
```
arch -x86_64 /usr/local/bin/brew install gcc@7
```

Finally, define the environment variables
* `HSL_FC=/usr/local/bin/gfortran-7 -arch x86_64`
* `HSL_CC=/usr/local/bin/gcc-7 -arch x86_64`
prior to building HSL.jl from the Julia command prompt.

## Supported Packages

### HSL_MA97

Supported versions:
* 2.6.0
* 2.7.0

[HSL_MA97](http://www.hsl.rl.ac.uk/catalogue/hsl_ma97.html): an OpenMP-based direct solver for symmetric linear systems. Example:

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

[HSL_MA57](http://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:
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

