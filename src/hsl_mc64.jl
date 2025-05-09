export mc64

"""
    rp, cp, u, v = mc64(A::SparseMatrixCSC; job::Integer=5, symmetric::Bool=false)

Compute row and column permutations (and optional scalings) of a sparse matrix `A` to enhance numerical stability 
and expose a structurally nonsingular block.

`mc64` finds a maximum matching in the bipartite graph of `A`, corresponding to a set of `n` structurally nonzero 
entries located on distinct rows and columns (ideally on the diagonal after permutation).

The `job` parameter determines the matching and scaling strategy:

- `job = 1`: Find a permutation with as many entries on the diagonal as possible (structural matching only).
- `job = 2`: Maximize the smallest numerical value among the matched entries (using one algorithm).
- `job = 3`: Same as job = 2, but with a different algorithm, possibly giving different results.
- `job = 4`: Maximize the **sum** of the matched entries.
- `job = 5`: Maximize the **product** of the matched entries and compute row and column scalings.

If `job == 5` (default), the routine also returns logarithmic scaling vectors `u` and `v` such that the scaled matrix `B` satisfies:

    B[i,j] = A[i,j] * exp(u[i] + v[j])

where:
- Diagonal entries are scaled to have absolute value 1
- Off-diagonal entries have absolute value ≤ 1
"""
function mc64 end

function mc64(A::SparseMatrixCSC{T,INT}; job::Integer=5, symmetric::Bool=false) where {T,INT}
    m, n = size(A)
    ptr = A.colptr
    row = A.rowval
    cval = A.nzval
    control = Mc64Control{INT}()
    info = Mc64Info{INT}()
    mc64_default_control(T, INT, control)
    matrix_type = symmetric ? 3 : 0
    perm = Vector{INT}(undef, n+m)
    scale = Vector{T}(undef, n+m)
    mc64_matching(T, INT, job, matrix_type, m, n, ptr, row, cval, control, info, perm, scale)
    rp = perm[1:m]
    cp = perm[m+1:m+n]
    u = scale[1:m]
    v = scale[m+1:m+n]
    return rp, cp, u, v
end
