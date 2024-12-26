mutable struct Ma86Control{T, INT}
  f_arrays::INT
  diagnostics_level::INT
  unit_diagnostics::INT
  unit_error::INT
  unit_warning::INT
  nemin::INT
  nb::INT
  action::INT
  nbi::INT
  pool_size::INT
  small_::T
  static_::T
  u::T
  umin::T
  scaling::INT
end

mutable struct Ma86Info{T, INT}
  detlog::T
  detsign::INT
  flag::INT
  matrix_rank::INT
  maxdepth::INT
  num_delay::INT
  num_factor::Int64
  num_flops::Int64
  num_neg::INT
  num_nodes::INT
  num_nothresh::INT
  num_perturbed::INT
  num_two::INT
  pool_size::INT
  stat::INT
  usmall::T
end

function ma86_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma86_default_control_s(control::Ref{Ma86Control{Float32, Int32}})::Cvoid
end

function ma86_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma86_default_control_d(control::Ref{Ma86Control{Float64, Int32}})::Cvoid
end

function ma86_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma86_default_control_q(control::Ref{Ma86Control{Float128, Int32}})::Cvoid
end

function ma86_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma86_default_control_s_64(control::Ref{Ma86Control{Float32, Int64}})::Cvoid
end

function ma86_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma86_default_control_d_64(control::Ref{Ma86Control{Float64, Int64}})::Cvoid
end

function ma86_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma86_default_control_q_64(control::Ref{Ma86Control{Float128, Int64}})::Cvoid
end

function ma86_analyse(::Type{Float32}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma86_analyse_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma86Control{Float32, Int32}},
                                      info::Ref{Ma86Info{Float32, Int32}})::Cvoid
end

function ma86_analyse(::Type{Float64}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma86_analyse_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma86Control{Float64, Int32}},
                                      info::Ref{Ma86Info{Float64, Int32}})::Cvoid
end

function ma86_analyse(::Type{Float128}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma86_analyse_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma86Control{Float128, Int32}},
                                      info::Ref{Ma86Info{Float128, Int32}})::Cvoid
end

function ma86_analyse(::Type{Float32}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma86_analyse_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma86Control{Float32, Int64}},
                                            info::Ref{Ma86Info{Float32, Int64}})::Cvoid
end

function ma86_analyse(::Type{Float64}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma86_analyse_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma86Control{Float64, Int64}},
                                            info::Ref{Ma86Info{Float64, Int64}})::Cvoid
end

function ma86_analyse(::Type{Float128}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma86_analyse_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma86Control{Float128, Int64}},
                                            info::Ref{Ma86Info{Float128, Int64}})::Cvoid
end

function ma86_factor(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset.ma86_factor_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float32},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma86Control{Float32, Int32}},
                                     info::Ref{Ma86Info{Float32, Int32}},
                                     scale::Ptr{Float32})::Cvoid
end

function ma86_factor(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset.ma86_factor_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float64},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma86Control{Float64, Int32}},
                                     info::Ref{Ma86Info{Float64, Int32}},
                                     scale::Ptr{Float64})::Cvoid
end

function ma86_factor(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset.ma86_factor_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float128},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma86Control{Float128, Int32}},
                                     info::Ref{Ma86Info{Float128, Int32}},
                                     scale::Ptr{Float128})::Cvoid
end

function ma86_factor(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset_64.ma86_factor_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float32},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float32, Int64}},
                                           info::Ref{Ma86Info{Float32, Int64}},
                                           scale::Ptr{Float32})::Cvoid
end

function ma86_factor(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset_64.ma86_factor_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float64},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float64, Int64}},
                                           info::Ref{Ma86Info{Float64, Int64}},
                                           scale::Ptr{Float64})::Cvoid
end

function ma86_factor(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info,
                     scale)
  @ccall libhsl_subset_64.ma86_factor_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float128},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float128, Int64}},
                                           info::Ref{Ma86Info{Float128, Int64}},
                                           scale::Ptr{Float128})::Cvoid
end

function ma86_factor_solve(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset.ma86_factor_solve_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float32},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float32, Int32}},
                                           info::Ref{Ma86Info{Float32, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float32},
                                           scale::Ptr{Float32})::Cvoid
end

function ma86_factor_solve(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset.ma86_factor_solve_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float64},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float64, Int32}},
                                           info::Ref{Ma86Info{Float64, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float64},
                                           scale::Ptr{Float64})::Cvoid
end

function ma86_factor_solve(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset.ma86_factor_solve_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float128},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma86Control{Float128, Int32}},
                                           info::Ref{Ma86Info{Float128, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float128},
                                           scale::Ptr{Float128})::Cvoid
end

function ma86_factor_solve(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset_64.ma86_factor_solve_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float32},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma86Control{Float32, Int64}},
                                                 info::Ref{Ma86Info{Float32, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float32},
                                                 scale::Ptr{Float32})::Cvoid
end

function ma86_factor_solve(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset_64.ma86_factor_solve_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float64},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma86Control{Float64, Int64}},
                                                 info::Ref{Ma86Info{Float64, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float64},
                                                 scale::Ptr{Float64})::Cvoid
end

function ma86_factor_solve(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x, scale)
  @ccall libhsl_subset_64.ma86_factor_solve_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float128},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma86Control{Float128, Int64}},
                                                 info::Ref{Ma86Info{Float128, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float128},
                                                 scale::Ptr{Float128})::Cvoid
end

function ma86_solve(::Type{Float32}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset.ma86_solve_s(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float32},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma86Control{Float32, Int32}},
                                    info::Ref{Ma86Info{Float32, Int32}}, scale::Ptr{Float32})::Cvoid
end

function ma86_solve(::Type{Float64}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset.ma86_solve_d(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float64},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma86Control{Float64, Int32}},
                                    info::Ref{Ma86Info{Float64, Int32}}, scale::Ptr{Float64})::Cvoid
end

function ma86_solve(::Type{Float128}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset.ma86_solve_q(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float128},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma86Control{Float128, Int32}},
                                    info::Ref{Ma86Info{Float128, Int32}},
                                    scale::Ptr{Float128})::Cvoid
end

function ma86_solve(::Type{Float32}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset_64.ma86_solve_s_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float32},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma86Control{Float32, Int64}},
                                          info::Ref{Ma86Info{Float32, Int64}},
                                          scale::Ptr{Float32})::Cvoid
end

function ma86_solve(::Type{Float64}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset_64.ma86_solve_d_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float64},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma86Control{Float64, Int64}},
                                          info::Ref{Ma86Info{Float64, Int64}},
                                          scale::Ptr{Float64})::Cvoid
end

function ma86_solve(::Type{Float128}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info,
                    scale)
  @ccall libhsl_subset_64.ma86_solve_q_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float128},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma86Control{Float128, Int64}},
                                          info::Ref{Ma86Info{Float128, Int64}},
                                          scale::Ptr{Float128})::Cvoid
end

function ma86_finalise(::Type{Float32}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma86_finalise_s(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma86Control{Float32, Int32}})::Cvoid
end

function ma86_finalise(::Type{Float64}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma86_finalise_d(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma86Control{Float64, Int32}})::Cvoid
end

function ma86_finalise(::Type{Float128}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma86_finalise_q(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma86Control{Float128, Int32}})::Cvoid
end

function ma86_finalise(::Type{Float32}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma86_finalise_s_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma86Control{Float32, Int64}})::Cvoid
end

function ma86_finalise(::Type{Float64}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma86_finalise_d_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma86Control{Float64, Int64}})::Cvoid
end

function ma86_finalise(::Type{Float128}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma86_finalise_q_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma86Control{Float128, Int64}})::Cvoid
end
