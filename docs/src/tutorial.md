# Tutorial

HSL MA57 and MA97 can be used for the solution of symmetric, possibly indefinite, linear systems.
They are often used for the solution of saddle-point systems, i.e., systems of the form
```math
\begin{equation}
  \label{SP}
  \begin{bmatrix}
    -H & A^T \\
     A & G
  \end{bmatrix}
  \begin{bmatrix}
    x \\ y
  \end{bmatrix}
  =
  \begin{bmatrix}
    c \\ b
  \end{bmatrix}.
\end{equation}
```
A special case occurs when $H = 0$, $G = I$ and $c = 0$, which corresponds to the least-squares problem
```math
\begin{equation}
  \label{LS}
  \min_x \ \|A x - b\|_2
\end{equation}
```
Another special case occurs when $H = -I$, $G = 0$ and $c = 0$, which corresponds to the least-norm problem
```math
\begin{equation}
  \label{LN}
  \min_x \ \|x\| \ \text{subject to } Ax = b.
\end{equation}
```

## HSL_MA97

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

### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When $A$ is $m$-by-$n$ with $m \geq n$ and has full column rank,
```julia
(r, x) = ma97_solve(A, b)
```
returns $x$ that solves \eqref{LS} and residual $r := b - Ax$ corresponding to $y$ in \eqref{SP}.
The call
```julia
(r, x) = ma97_least_squares(A, b)
```
is also defined, and is equivalent to the above.

When $A$ is $m$-by-$n$ with $m \leq n$ and has full row rank,
```julia
(x, y) = ma97_solve(A, b)
```
returns $x$ that solves \eqref{LN} and $y$ such that $x = -A^T y$ (and therefore $A A^T (-y) = b$).
The call
```julia
(x, y) = ma97_min_norm(A, b)
```
is also defined, and is equivalent to the above.

## HSL_MA57

[HSL_MA57](https://www.hsl.rl.ac.uk/specs/ma57.pdf):
a sparse, multifrontal solver for symmetric linear systems. Example:

```julia
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

### Rectangular Systems

There is a convenience interface to solve rectangular systems that complements
the sparse QR factorization in Julia.

When $A$ is $m$-by-$n$ with $m \geq n$ and has full column rank,
```julia
(r, x) = ma57_solve(A, b)
```
returns $x$ that solves \eqref{LS} and residual $r := b - Ax$ corresponding to $y$ in \eqref{SP}.
The call
```julia
(r, x) = ma57_least_squares(A, b)
```
is also defined, and is equivalent to the above.

When $A$ is $m$-by-$n$ with $m \leq n$ and has full row rank,
```julia
(x, y) = ma57_solve(A, b)
```
returns $x$ that solves \eqref{LN} and $y$ such that $x = -A^T y$ (and therefore $A A^T (-y) = b$).
The call
```julia
(x, y) = ma57_min_norm(A, b)
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
