export Ma86

const matrix_types86 = (herm_indef = Cint(-4), cmpl_indef = Cint(-5))

const jobs86 = (
  A    = Cint(0),  # Solve Ax = b
  PL   = Cint(1),  # Solve PLx = b
  D    = Cint(2),  # Solve Dx = b
  PLt  = Cint(3),  # Solve (PL)ᴴ x = b
  DPLt = Cint(4),  # Solve D(PL)ᴴ x = b
)

Base.@kwdef mutable struct Ma86_Flags
  isanalysisdone::Bool = false
  isfactordone::Bool = false
end

"""
    Ma86{T,INT}

Type for the HSL Ma86 solver, a multithreaded solver for symmetric indefinite or 
symmetric positive definite systems.

# Constructors

    Ma86(colptr, rowval, nzval; [control, info, order, scale, doanalyse])

Creates a new Ma86 solver with the lower-triangular matrix data stored in CSC format. 
Both `colptr` and `rowval` will be converted to vectors of `Int32`. The element type of 
the nonzero values `nzval` will determine the data type used by the solver. The data types
of `control`, `info`, and `scale` should match the corresponding real data type.

    Ma86(A::SparseMatrix; kwargs...)

Extracts the CSC data from the sparse matrix `A`. If `A` is not lower triangular, the lower
triangular data will be pulled out automatically. The keyword arguments are identical those
of the previous constructor.

# Usage
With a constructed `Ma86` object, you can use any of the following methods to solve the 
linear system `Ax = b` where `b` can have any number of columns. 

## 1. Call HSL steps independently
This mirrors the C interface of Ma86. Call the following methods in the specified order:

    HSL.factor!(ma86)
    HSL.solve!(ma86, b)

Or

    HSL.factorsolve!(ma86, b)

Note the methods above will overwrite the data in `b` with the solution `x`. Alternatively,
you can use [`solve`](@ref) and ][`factorsolve`](@ref) which will return the solution 
vector `x` and leave `b` unchanged.

By default, the constructor will run the [`analyse!`](@ref) method on the provided sparsity 
structure. This step can be skipped by passing `doanalyse=false` to the constructor. The 
analysis step must then be called manually before calling either `factor!` or 
`factorsolve!`.

## 2. Use backslash or `ldiv!`
To return the solution matrix, use `x = ma86 \\ b`, or to overwrite the `b` matrix use 
`ldiv!(ma86, b)`.
"""
mutable struct Ma86{T, INT}
  __keep::Ref{Ptr{Cvoid}}
  n::INT
  colptr::Vector{INT}
  rowval::Vector{INT}
  nzval::Vector{T}
  control::Ma86Control{T, INT}
  info::Ma86Info{T, INT}
  order::Vector{INT}
  scale::Vector{T}
  flags::Ma86_Flags
  function Ma86(colptr::Vector{INT}, rowval::Vector{INT}, nzval::Vector{T}, 
                control::Ma86Control{T,INT}, info::Ma86Info{T,INT}, order::Vector{INT}, 
                scale::Vector{T}; doanalyse::Bool=true) where {T, INT}
    keep = Ref{Ptr{Cvoid}}()
    n = length(colptr) - 1
    @assert length(order) == n
    @assert length(scale) == n
    flags = Ma86_Flags()
    ma86 = new{T,INT}(keep, n, colptr, rowval, nzval, control, info, order, scale, flags)
    if doanalyse
      analyse!(ma86)
    end
    finalizer(_finalize, ma86)
  end
end
function Ma86(colptr::Vector{INT}, rowval::Vector{INT}, nzval::Vector{T}; 
              control::Ma86Control=Ma86Control{T,INT}(), 
              info::Ma86Info=Ma86Info{T,INT}(), 
              order::Vector{INT}=collect(1:length(colptr)-1),
              scale::Vector{T}=fill(one(data_map[T]), length(colptr)-1),
              kwargs...) where {T, INT}
  # Assumes the data is already lower triangular
  Ma86(colptr, rowval, nzval, control, info, order, scale; kwargs...)
end

function Ma86(A::SparseMatrixCSC; kwargs...)
  if !istril(A)
    A = tril(A)
  end
  Ma86(A.colptr, A.rowval, A.nzval; kwargs...)
end

function _finalize(m::Ma86{T,INT}) where {T, INT}
  (m.__keep[] != C_NULL) && ma86_finalise(T, INT, m.__keep, m.control)
  m.flags.isanalysisdone = false
  m.flags.isfactordone = false
  m.__keep[] = C_NULL
  return m
end

##############################
# Exception Handling
##############################
"""
   Ma86Exception

Exception thrown by HSL MA86 algorithm. The `flag` field contains the HSL flag 
for the error. Consult the documentation for details of the exception.
"""
mutable struct Ma86Exception <: Exception
  msg::AbstractString
  flag::Int
end

function checkerror(m::Ma86, msg)
  if m.info.flag != 0
    _finalize(m)  # free memory in keep before throwing an error
    throw(Ma86Exception(msg, m.info.flag))
  end
end

##############################
# Convenience Wrapper
##############################

function analyse!(m::Ma86{T,INT}) where {T,INT}
  ma86_analyse(T, INT, m.n, m.colptr, m.rowval, m.order, m.__keep, m.control, m.info)
  checkerror(m, "MA86: Error during symbol analysis.")
  m.flags.isanalysisdone = true
  return nothing
end

function factor!(m::Ma86{T,INT}; matrix_type::Integer=matrix_types86.herm_indef) where {T,INT}
  if (m.__keep == C_NULL) || !m.flags.isanalysisdone
    error("Cannot call factor! before analyse!")
    return nothing
  end
  ma86_factor(T, INT, matrix_type, m.n, m.colptr, m.rowval, m.nzval, m.order, m.__keep, m.control, m.info, m.scale)
  checkerror(m, "MA86: Error during factorization.")
  m.flags.isfactordone = true
  return nothing
end

function solve!(m::Ma86{T,INT}, x::VecOrMat{T}; job::Integer=jobs86.A) where {T,INT}
  if !m.flags.isanalysisdone || !m.flags.isfactordone
    error("Cannot call solve! before factor!")
    return x
  end
  size(x,1) != m.n && throw(DimensionMismatch("x must have $(m.n) rows, got $(size(x,1))."))
  ma86_solve(T, INT, job, nrhs, ldx, x, m.order, m.__keep, m.control, m.info)
  checkerror(m, "MA86: Error during solve.")
  return x
end

solve(m::Ma86{T,INT}, b::VecOrMat{T}; kwargs...) where {T,INT} = solve!(m, copy(b); kwargs...)

function factorsolve!(m::Ma86{T,INT}, x::VecOrMat{T}; 
  matrix_type::Integer=matrix_types86.herm_indef
) where {T,INT}
  if (m.__keep == C_NULL) || !m.flags.isanalysisdone
    error("Cannot call factorsolve! before analyse!")
    return x 
  end
  size(x,1) != m.n && throw(DimensionMismatch("x must have $(m.n) rows, got $(size(x,1))."))
  ldx = Cint(stride(x,2))
  nrhs = Cint(size(x,2))
  ma86_factor_solve(
    T, INT, INT(matrix_type), m.n, m.colptr, m.rowval, m.nzval, m.order, m.__keep, m.control, m.info, 
    nrhs, ldx, x, m.scale
  )
  checkerror(m, "MA86: Error during factorsolve.")
  m.flags.isfactordone = true
  return x
end

# Out-of-place version
function factorsolve(m::Ma86{T}, b::VecOrMat{T}; kwargs...) where T
  factorsolve!(m, copy(b); kwargs...)
end

# LinearAlgebra wrappers
function Base.:\(m::Ma86{T}, b::VecOrMat{T}) where T
  !m.flags.isanalysisdone && analyse!(m)
  m.flags.isfactordone && return solve(m, b)
  factorsolve(m, b)
end

function LinearAlgebra.ldiv!(m::Ma86{T}, x::VecOrMat{T}) where T
  !m.flags.isanalysisdone && analyse!(m)
  m.flags.isfactordone && return solve!(m, x)
  factorsolve!(m, x)
end
