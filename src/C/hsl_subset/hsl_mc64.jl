mutable struct Mc64Control{INT}
  f_arrays::INT
  lp::INT
  wp::INT
  sp::INT
  ldiag::INT
  checking::INT

  Mc64Control{INT}() where {INT} = new{INT}()

  function Mc64Control{INT}(f_arrays, lp, wp, sp, ldiag, checking) where {INT}
    return new{INT}(f_arrays, lp, wp, sp, ldiag, checking)
  end
end

mutable struct Mc64Info{INT}
  flag::INT
  more::INT
  strucrank::INT
  stat::INT

  Mc64Info{INT}() where {INT} = new{INT}()

  Mc64Info{INT}(flag, more, strucrank, stat) where {INT} = new{INT}(flag, more, strucrank, stat)
end

function mc64_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.mc64_default_control_s(control::Ref{Mc64Control{Int32}})::Cvoid
end

function mc64_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.mc64_default_control_d(control::Ref{Mc64Control{Int32}})::Cvoid
end

function mc64_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.mc64_default_control_q(control::Ref{Mc64Control{Int32}})::Cvoid
end

function mc64_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mc64_default_control_s_64(control::Ref{Mc64Control{Int64}})::Cvoid
end

function mc64_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mc64_default_control_d_64(control::Ref{Mc64Control{Int64}})::Cvoid
end

function mc64_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mc64_default_control_q_64(control::Ref{Mc64Control{Int64}})::Cvoid
end

function mc64_matching(::Type{Float32}, ::Type{Int32}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset.mc64_matching_s(job::Int32, matrix_type::Int32, m::Int32, n::Int32,
                                       ptr::Ptr{Int32},
                                       row::Ptr{Int32}, cval::Ptr{Float32},
                                       control::Ref{Mc64Control{Int32}},
                                       info::Ref{Mc64Info{Int32}}, perm::Ptr{Int32},
                                       scale::Ptr{Float32})::Cvoid
end

function mc64_matching(::Type{Float64}, ::Type{Int32}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset.mc64_matching_d(job::Int32, matrix_type::Int32, m::Int32, n::Int32,
                                       ptr::Ptr{Int32},
                                       row::Ptr{Int32}, cval::Ptr{Float64},
                                       control::Ref{Mc64Control{Int32}},
                                       info::Ref{Mc64Info{Int32}}, perm::Ptr{Int32},
                                       scale::Ptr{Float64})::Cvoid
end

function mc64_matching(::Type{Float128}, ::Type{Int32}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset.mc64_matching_q(job::Int32, matrix_type::Int32, m::Int32, n::Int32,
                                       ptr::Ptr{Int32},
                                       row::Ptr{Int32}, cval::Ptr{Float128},
                                       control::Ref{Mc64Control{Int32}},
                                       info::Ref{Mc64Info{Int32}}, perm::Ptr{Int32},
                                       scale::Ptr{Float128})::Cvoid
end

function mc64_matching(::Type{Float32}, ::Type{Int64}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset_64.mc64_matching_s_64(job::Int64, matrix_type::Int64, m::Int64, n::Int64,
                                             ptr::Ptr{Int64},
                                             row::Ptr{Int64}, cval::Ptr{Float32},
                                             control::Ref{Mc64Control{Int64}},
                                             info::Ref{Mc64Info{Int64}}, perm::Ptr{Int64},
                                             scale::Ptr{Float32})::Cvoid
end

function mc64_matching(::Type{Float64}, ::Type{Int64}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset_64.mc64_matching_d_64(job::Int64, matrix_type::Int64, m::Int64, n::Int64,
                                             ptr::Ptr{Int64},
                                             row::Ptr{Int64}, cval::Ptr{Float64},
                                             control::Ref{Mc64Control{Int64}},
                                             info::Ref{Mc64Info{Int64}}, perm::Ptr{Int64},
                                             scale::Ptr{Float64})::Cvoid
end

function mc64_matching(::Type{Float128}, ::Type{Int64}, job, matrix_type, m, n, ptr, row, cval,
                       control, info, perm, scale)
  @ccall libhsl_subset_64.mc64_matching_q_64(job::Int64, matrix_type::Int64, m::Int64, n::Int64,
                                             ptr::Ptr{Int64},
                                             row::Ptr{Int64}, cval::Ptr{Float128},
                                             control::Ref{Mc64Control{Int64}},
                                             info::Ref{Mc64Info{Int64}}, perm::Ptr{Int64},
                                             scale::Ptr{Float128})::Cvoid
end
