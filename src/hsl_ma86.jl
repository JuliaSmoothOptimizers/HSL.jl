
const Ma86Data = Union{Float32, Float64, ComplexF32, ComplexF64}
const Ma86Real = Union{Cfloat, Cdouble}

function appendtype(fname, T)
  typesuffix = Dict(Float32=>"s", Float64=>"d", ComplexF32=>"c", ComplexF64=>"z")
  return string(fname) * "_" * typesuffix[T]
end

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

struct Keep
  ptr::Vector{Ptr{Cvoid}}
end
@inline Base.cconvert(::Type{Ref{Ptr{Cvoid}}}, akeep::Keep) = akeep.ptr
@inline Base.unsafe_convert(::Type{Ptr{Ptr{Cvoid}}}, akeep::Keep) = 
  Base.unsafe_convert(Ptr{Ptr{Cvoid}}, akeep.ptr)
Keep() = Keep([C_NULL])
isnull(akeep::Keep) = akeep.ptr[1] == C_NULL

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
    @eval function ma86_factor(n::Cint, ptr::Vector{Cint}, row::Vector{Cint}, val::Vector{$T}, 
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

    @eval function ma86_factor_solve(n::Cint, ptr::Vector{Cint}, row::Vector{Cint}, 
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
