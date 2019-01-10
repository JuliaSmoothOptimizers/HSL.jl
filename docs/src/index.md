# Reference

HSL MA57 and MA97 can be used for the solution of symmetric, possibly indefinite, linear systems.
They are often used for the solution of saddle-point systems, i.e., systems of the form
```math
\begin{bmatrix}
H & A^T \\
A &
\end{bmatrix}
\begin{bmatrix}
x \\ y
\end{bmatrix}
=
\begin{bmatrix}
b \\ c
\end{bmatrix}.
```
Special cases occur when ``H`` is the identity matrix and either ``b = 0`` or ``c = 0``, which correspond to the least-squares problem
```math
\min_y \ \|A^T y - b\|
```
and to the least-norm problem
```math
\min_x \ \|x\| \ \text{subject to } Ax = c
```
respectively.

```@autodocs
Modules = [HSL]
Private = false
Order   = [:module, :constant, :type, :function, :macro]
```
