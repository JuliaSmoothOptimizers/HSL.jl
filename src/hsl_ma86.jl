export Ma86, Ma86_Control, Ma86_Info

const Ma86Data = Union{Float32, Float64, ComplexF32, ComplexF64}
const Ma86Real = Union{Cfloat, Cdouble}

function appendtype(fname, T)
  typesuffix = Dict(Float32=>"s", Float64=>"d", ComplexF32=>"c", ComplexF64=>"z")
  return string(fname) * "_" * typesuffix[T]
end

"""
    Ma86_Control

A simple wrapper around the C control structure for C HSL Ma86 interface. Consult HSL 
  documentation for more details.
"""
mutable struct Ma86_Control{S <: Ma86Real}
  f_arrays::Cint
  diagnostics_level::Cint
  unit_diagnostics::Cint
  unit_error::Cint
  unit_warning::Cint
  nemin::Cint
  nb::Cint
  action::Cint
  nbi::Cint
  bool_size::Cint
  small_::S
  static_::S
  u::S
  umin::S
  scaling::Cint
  function Ma86_Control(::Type{T}) where T
    S = data_map[T]
    control = new{S}(0,0,0,0,0,0,0,0,0,0,zero(S),zero(S),zero(S),zero(S),0)
    ma86_default_control(T,control)
    control.f_arrays = 1  # Use 1-based indexing for arrays, avoiding copies.
    return control
  end
end
Ma86_Control{S}() where S <: Ma86Real = Ma86_Control(S)

"""
    Ma86_Info

A simple wrapper around the C info structure for C HSL Ma86 interface. Consult HSL 
  documentation for more details.
"""
mutable struct Ma86_Info{S <: Ma86Real}
  detlog::S
  detsign::Cint
  flag::Cint
  matrix_rank::Cint
  maxdepth::Cint
  num_delay::Cint
  num_factor::Clong
  num_flops::Clong
  num_neg::Cint
  num_nodes::Cint
  num_nothresh::Cint
  num_perturbed::Cint
  num_two::Cint
  pool_size::Cint
  stat::Cint
  usmall::S
  function Ma86_Info(::Type{T}) where T <: Ma86Data
    S = data_map[T]
    new{S}(
      zero(S), zero(Cint), zero(Cint), zero(Cint), zero(Cint), zero(Cint), zero(Clong), 
      zero(Clong), zero(Cint), zero(Cint), zero(Cint), zero(Cint), zero(Cint), zero(Cint), 
      zero(Cint), zero(S)
    )
  end
end
Ma86_Info{S}() where S <: Ma86Real = Ma86_Info(S)

##############################
# Convenience Wrapper Types 
##############################
struct Keep
  ptr::Vector{Ptr{Cvoid}}
end
@inline Base.cconvert(::Type{Ref{Ptr{Cvoid}}}, akeep::Keep) = akeep.ptr
@inline Base.unsafe_convert(::Type{Ptr{Ptr{Cvoid}}}, akeep::Keep) = 
  Base.unsafe_convert(Ptr{Ptr{Cvoid}}, akeep.ptr)
Keep() = Keep([C_NULL])
isnull(akeep::Keep) = akeep.ptr[1] == C_NULL

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
    Ma86{T,S}

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
mutable struct Ma86{T<:Ma86Data, S<:Ma86Real}
  __keep::Keep
  n::Cint
  colptr::Vector{Cint}
  rowval::Vector{Cint}
  nzval::Vector{T}
  control::Ma86_Control{S}
  info::Ma86_Info{S}
  order::Vector{Cint}
  scale::Vector{S}
  flags::Ma86_Flags
  function Ma86(colptr::Vector{<:Integer}, rowval::Vector{<:Integer}, nzval::Vector{T}, 
                control::Ma86_Control{S}, info::Ma86_Info{S}, order::Vector{<:Integer}, 
                scale::Vector{<:Real}; doanalyse::Bool=true) where {T <: Ma86Data, S}
    S == data_map[T] || throw(TypeError(:Ma86, "MA86{$T, $S}\n", data_map[T], T))
    keep = Keep()
    n = length(colptr) - 1
    @assert length(order) == n
    @assert length(scale) == n
    flags = Ma86_Flags()
    ma86 = new{T,S}(keep, n, colptr, rowval, nzval, control, info, order, scale, flags)
    if doanalyse
      analyse!(ma86)
    end
    finalizer(_finalize, ma86)
  end
end
function Ma86(colptr::Vector{<:Integer}, rowval::Vector{<:Integer}, nzval::Vector{T}; 
              control::Ma86_Control=Ma86_Control(T), 
              info::Ma86_Info=Ma86_Info(T), 
              order::Vector{<:Integer}=collect(1:length(colptr)-1),
              scale::Vector{<:Real}=fill(one(data_map[T]), length(colptr)-1),
              kwargs...) where T
  # Assumes the data is already lower triangular
  Ma86(colptr, rowval, nzval, control, info, order, scale; kwargs...)
end
function Ma86(A::SparseMatrixCSC; kwargs...)
  if !istril(A)
    A = tril(A)
  end
  Ma86(A.colptr, A.rowval, A.nzval; kwargs...)
end
datatype(::Ma86{T}) where T = T
realtype(::Ma86{<:Any,S}) where S = S

function _finalize(m::Ma86{T}) where T
  if !isnull(m.__keep)
    ma86_finalise(T, m.__keep, m.control)
  end
  m.flags.isanalysisdone = false
  m.flags.isfactordone = false
  m.__keep.ptr[1] = C_NULL
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

function analyse!(m::Ma86{T}) where T
  ma86_analyse(T, m.n, m.colptr, m.rowval, m.order, m.__keep, m.control, m.info)
  checkerror(m, "MA86: Error during symbol analysis.")
  m.flags.isanalysisdone = true
  return nothing
end

function factor!(m::Ma86{<:Ma86Data}; matrix_type::Integer=matrix_types86.herm_indef)
  if isnull(m.__keep) || !m.flags.isanalysisdone
    error("Cannot call factor! before analyse!")
    return nothing
  end
  ma86_factor(
    Cint(matrix_type), m.n, m.colptr, m.rowval, m.nzval, m.order, m.__keep, m.control, m.info, 
    m.scale
  )
  checkerror(m, "MA86: Error during factorization.")
  m.flags.isfactordone = true
  return nothing
end

function solve!(m::Ma86{T}, x::VecOrMat{T}; job::Integer=jobs86.A) where T
  if !m.flags.isanalysisdone || !m.flags.isfactordone
    error("Cannot call solve! before factor!")
    return x
  end
  size(x,1) != m.n && throw(DimensionMismatch("x must have $(m.n) rows, got $(size(x,1))."))
  ldx = Cint(stride(x,2))
  nrhs = Cint(size(x,2))
  ma86_solve(Cint(job), nrhs, ldx, x, m.order, m.__keep, m.control, m.info)
  checkerror(m, "MA86: Error during solve.")
  return x
end
solve(m::Ma86{T}, b::VecOrMat{T}; kwargs...) where T = solve!(m, copy(b); kwargs...)

function factorsolve!(m::Ma86{T}, x::VecOrMat{T}; 
  matrix_type::Integer=matrix_types86.herm_indef
) where T <: Ma86Data
  if isnull(m.__keep) || !m.flags.isanalysisdone
    error("Cannot call factorsolve! before analyse!")
    return x 
  end
  size(x,1) != m.n && throw(DimensionMismatch("x must have $(m.n) rows, got $(size(x,1))."))
  ldx = Cint(stride(x,2))
  nrhs = Cint(size(x,2))
  ma86_factor_solve(
    Cint(matrix_type), m.n, m.colptr, m.rowval, m.nzval, m.order, m.__keep, m.control, m.info, 
    nrhs, ldx, x, m.scale
  )
  checkerror(m, "MA86: Error during factorsolve.")
  m.flags.isfactordone = true
  return x
end

# Out-of-place version
factorsolve(m::Ma86{T}, b::VecOrMat{T}; kwargs...) where T <: Ma86Data = 
  factorsolve!(m, copy(b); kwargs...)

# LinearAlgebra wrappers
function Base.:\(m::Ma86{T}, b::VecOrMat{T}) where T <: Ma86Data 
  !m.flags.isanalysisdone && analyse!(m)
  m.flags.isfactordone && return solve(m, b)
  factorsolve(m, b)
end

function LinearAlgebra.ldiv!(m::Ma86{T}, x::VecOrMat{T}) where T <: Ma86Data
  !m.flags.isanalysisdone && analyse!(m)
  m.flags.isfactordone && return solve!(m, x)
  factorsolve!(m, x)
end

##############################
# C Wrapper
##############################

for T in (Float32, Float64, ComplexF32, ComplexF64) 
  S = data_map[T]

  @eval function ma86_default_control(::Type{$T}, control::Ma86_Control{$S})
    ccall(($(appendtype(:ma86_default_control, T)), libhsl_ma86), Cvoid,
      (Ref{Ma86_Control{$S}},),
      control
    )
  end

  # Add type as argument to avoid ambiguity
  @eval function ma86_analyse(::Type{$T}, n::Cint, ptr::Vector{Cint}, row::Vector{Cint}, 
                              order::Vector{Cint}, keep::Keep, control::Ma86_Control, 
                              info::Ma86_Info)
    @assert length(ptr) == n+1
    @assert ptr[end] == length(row) + 1
    @assert length(order) == n
    ccall(($(appendtype(:ma86_analyse, T)), libhsl_ma86), Cvoid,
      (Cint, Ref{Cint}, Ref{Cint}, Ref{Cint}, Ptr{Ptr{Cvoid}}, Ref{Ma86_Control{$S}}, 
      Ref{Ma86_Info{$S}}),
      n, ptr, row, order, keep, control, info
    )
  end

  if T <: Ma86Real
    # Note that matrix_type argument is unused in these methods
    # Included to make the signature match for all data types
    @eval function ma86_factor(matrix_type::Cint, n::Cint, ptr::Vector{Cint}, row::Vector{Cint}, val::Vector{$T}, 
                              order::Vector{Cint}, keep::Keep, control::Ma86_Control{$S}, 
                              info::Ma86_Info{$S}, scale::Vector{$S})
      @assert length(ptr) == n+1
      @assert length(row) + 1 == ptr[end]
      @assert length(val) + 1 == ptr[end]
      @assert length(order) == n
      ccall(($(appendtype(:ma86_factor, T)), libhsl_ma86), Cvoid,
        (Cint, Ref{Cint}, Ref{Cint}, Ref{$T}, Ref{Cint}, Ptr{Ptr{Cvoid}}, 
        Ref{Ma86_Control{$S}}, Ref{Ma86_Info{$S}}, Ref{$S}),
        n, ptr, row, val, order, keep, control, info, scale
      )
    end

    @eval function ma86_factor_solve(matrix_type::Cint, n::Cint, ptr::Vector{Cint}, row::Vector{Cint}, 
                                    val::Vector{$T}, order::Vector{Cint}, keep::Keep, 
                                    control::Ma86_Control{$S}, info::Ma86_Info{$S}, 
                                    nrhs::Cint, ldx::Cint, x::VecOrMat{$T}, 
                                    scale::Vector{$S})
      @assert length(ptr) == n+1
      @assert length(row) + 1 == ptr[end]
      @assert length(val) + 1 == ptr[end]
      @assert length(order) == n
      @assert nrhs >= 1
      @assert ldx >= n
      @assert length(scale) == n
      @assert size(x,1) == n
      @assert size(x,2) == nrhs
      ccall(($(appendtype(:ma86_factor_solve, T)), libhsl_ma86), Cvoid,
        (Cint, Ref{Cint}, Ref{Cint}, Ref{$T}, Ref{Cint}, Ptr{Ptr{Cvoid}}, 
        Ref{Ma86_Control{$S}}, Ref{Ma86_Info{$S}}, Cint, Cint, Ref{$T}, Ref{$S}),
        n, ptr, row, val, order, keep, control, info, nrhs, ldx, x, scale
      )
    end
  else
    @eval function ma86_factor(matrix_type::Cint, n::Cint, ptr::Vector{Cint}, 
                               row::Vector{Cint}, val::Vector{$T}, 
                               order::Vector{Cint}, keep::Keep, control::Ma86_Control{$S}, 
                               info::Ma86_Info{$S}, scale::Vector{$S})
      @assert matrix_type ∈ (-4,-5)
      @assert length(ptr) == n+1
      @assert length(row) + 1 == ptr[end]
      @assert length(val) + 1 == ptr[end]
      @assert length(order) == n
      ccall(($(appendtype(:ma86_factor, T)), libhsl_ma86), Cvoid,
        (Cint, Cint, Ref{Cint}, Ref{Cint}, Ref{$T}, Ref{Cint}, Ptr{Ptr{Cvoid}}, 
        Ref{Ma86_Control{$S}}, Ref{Ma86_Info{$S}}, Ref{$S}),
        matrix_type, n, ptr, row, val, order, keep, control, info, scale
      )
    end

    @eval function ma86_factor_solve(matrix_type::Cint, n::Cint, ptr::Vector{Cint}, 
                                     row::Vector{Cint}, val::Vector{$T}, 
                                     order::Vector{Cint}, keep::Keep, 
                                     control::Ma86_Control{$S}, info::Ma86_Info{$S}, 
                                     nrhs::Cint, ldx::Cint, x::VecOrMat{$T}, 
                                     scale::Vector{$S})
      @assert matrix_type ∈ (-4,-5)
      @assert length(ptr) == n+1
      @assert length(row) + 1 == ptr[end]
      @assert length(val) + 1 == ptr[end]
      @assert length(order) == n
      @assert nrhs >= 1
      @assert ldx >= n
      @assert length(scale) == n
      @assert size(x,1) == n
      @assert size(x,2) == nrhs
      ccall(($(appendtype(:ma86_factor_solve, T)), libhsl_ma86), Cvoid,
        (Cint, Cint, Ref{Cint}, Ref{Cint}, Ref{$T}, Ref{Cint}, Ptr{Ptr{Cvoid}}, 
        Ref{Ma86_Control{$S}}, Ref{Ma86_Info{$S}}, Cint, Cint, Ref{$T}, Ref{$S}),
        matrix_type, n, ptr, row, val, order, keep, control, info, nrhs, ldx, x, scale
      )
    end
  end

  @eval function ma86_solve(job::Cint, nrhs::Cint, ldx::Cint, x::VecOrMat{$T}, 
                          order::Vector{Cint}, keep::Keep, control::Ma86_Control{$S}, 
                          info::Ma86_Info{$S})
    n = size(x,1)
    @assert job ∈ 0:4
    @assert nrhs >= 1
    @assert ldx >= n
    @assert size(x,2) == nrhs
    ccall(($(appendtype(:ma86_solve, T)), libhsl_ma86), Cvoid,
      (Cint, Cint, Cint, Ref{$T}, Ref{Cint}, Ptr{Ptr{Cvoid}}, Ref{Ma86_Control{$S}},
      Ref{Ma86_Info{$S}}, Ptr{$S}),
      job, nrhs, ldx, x, order, keep, control, info, C_NULL 
    )
  end

  # Add type as argument to avoid ambiguity
  @eval function ma86_finalise(::Type{$T}, keep::Keep, control::Ma86_Control{$S})
    ccall(($(appendtype(:ma86_finalise, T)), libhsl_ma86), Cvoid,
      (Ptr{Ptr{Cvoid}}, Ref{Ma86_Control{$S}}),
      keep, control
    )
  end

end
