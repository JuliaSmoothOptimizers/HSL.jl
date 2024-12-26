mutable struct ma86_control{T}
  f_arrays::Cint
  diagnostics_level::Cint
  unit_diagnostics::Cint
  unit_error::Cint
  unit_warning::Cint
  nemin::Cint
  nb::Cint
  action::Cint
  nbi::Cint
  pool_size::Cint
  small_::T
  static_::T
  u::T
  umin::T
  scaling::Cint

  ma86_control{T}() where {T} = new()

  function ma86_control{T}(f_arrays, diagnostics_level, unit_diagnostics, unit_error, unit_warning,
                           nemin, nb, action, nbi, pool_size, small_, static_, u, umin,
                           scaling) where {T}
    return new(f_arrays, diagnostics_level, unit_diagnostics, unit_error, unit_warning, nemin, nb,
               action, nbi, pool_size, small_, static_, u, umin, scaling)
  end
end

function ma86_default_control_s(control)
  @ccall libhsl.ma86_default_control_s(control::Ref{ma86_control{Float32}})::Cvoid
end

mutable struct ma86_info{T}
  detlog::T
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
  usmall::T

  ma86_info{T}() where {T} = new()

  function ma86_info{T}(detlog, detsign, flag, matrix_rank, maxdepth, num_delay, num_factor,
                        num_flops, num_neg, num_nodes, num_nothresh, num_perturbed, num_two,
                        pool_size, stat, usmall) where {T}
    return new(detlog, detsign, flag, matrix_rank, maxdepth, num_delay, num_factor, num_flops,
               num_neg, num_nodes, num_nothresh, num_perturbed, num_two, pool_size, stat, usmall)
  end
end

function ma86_analyse_s(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma86_analyse_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}},
                               info::Ref{ma86_info{Float32}})::Cvoid
end

function ma86_factor_s(n, ptr, row, val, order, keep, control, info, scale)
  @ccall libhsl.ma86_factor_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float32},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma86_control{Float32}},
                              info::Ref{ma86_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma86_factor_solve_s(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x, scale)
  @ccall libhsl.ma86_factor_solve_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float32}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}},
                                    info::Ref{ma86_info{Float32}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{Float32}, scale::Ptr{Float32})::Cvoid
end

function ma86_solve_s(job, nrhs, ldx, x, order, keep, control, info, scale)
  @ccall libhsl.ma86_solve_s(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{Float32},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma86_control{Float32}},
                             info::Ref{ma86_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma86_finalise_s(keep, control)
  @ccall libhsl.ma86_finalise_s(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}})::Cvoid
end

function ma86_default_control_d(control)
  @ccall libhsl.ma86_default_control_d(control::Ref{ma86_control{Float64}})::Cvoid
end

function ma86_analyse_d(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma86_analyse_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}},
                               info::Ref{ma86_info{Float64}})::Cvoid
end

function ma86_factor_d(n, ptr, row, val, order, keep, control, info, scale)
  @ccall libhsl.ma86_factor_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float64},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma86_control{Float64}},
                              info::Ref{ma86_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma86_factor_solve_d(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x, scale)
  @ccall libhsl.ma86_factor_solve_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float64}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}},
                                    info::Ref{ma86_info{Float64}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{Float64}, scale::Ptr{Float64})::Cvoid
end

function ma86_solve_d(job, nrhs, ldx, x, order, keep, control, info, scale)
  @ccall libhsl.ma86_solve_d(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{Float64},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma86_control{Float64}},
                             info::Ref{ma86_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma86_finalise_d(keep, control)
  @ccall libhsl.ma86_finalise_d(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}})::Cvoid
end

function ma86_default_control_c(control)
  @ccall libhsl.ma86_default_control_c(control::Ref{ma86_control{Float32}})::Cvoid
end

function ma86_analyse_c(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma86_analyse_c(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}},
                               info::Ref{ma86_info{Float32}})::Cvoid
end

function ma86_factor_c(matrix_type, n, ptr, row, val, order, keep, control, info, scale)
  @ccall libhsl.ma86_factor_c(matrix_type::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{ComplexF32}, order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma86_control{Float32}}, info::Ref{ma86_info{Float32}},
                              scale::Ptr{Float32})::Cvoid
end

function ma86_factor_solve_c(matrix_type, n, ptr, row, val, order, keep, control, info, nrhs, ldx,
                             x, scale)
  @ccall libhsl.ma86_factor_solve_c(matrix_type::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF32}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}},
                                    info::Ref{ma86_info{Float32}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{ComplexF32}, scale::Ptr{Float32})::Cvoid
end

function ma86_solve_c(job, nrhs, ldx, x, order, keep, control, info, scale)
  @ccall libhsl.ma86_solve_c(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{ComplexF32},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma86_control{Float32}},
                             info::Ref{ma86_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma86_finalise_c(keep, control)
  @ccall libhsl.ma86_finalise_c(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float32}})::Cvoid
end

function ma86_default_control_z(control)
  @ccall libhsl.ma86_default_control_z(control::Ref{ma86_control{Float64}})::Cvoid
end

function ma86_analyse_z(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma86_analyse_z(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}},
                               info::Ref{ma86_info{Float64}})::Cvoid
end

function ma86_factor_z(matrix_type, n, ptr, row, val, order, keep, control, info, scale)
  @ccall libhsl.ma86_factor_z(matrix_type::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{ComplexF64}, order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma86_control{Float64}}, info::Ref{ma86_info{Float64}},
                              scale::Ptr{Float64})::Cvoid
end

function ma86_factor_solve_z(matrix_type, n, ptr, row, val, order, keep, control, info, nrhs, ldx,
                             x, scale)
  @ccall libhsl.ma86_factor_solve_z(matrix_type::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF64}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}},
                                    info::Ref{ma86_info{Float64}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{ComplexF64}, scale::Ptr{Float64})::Cvoid
end

function ma86_solve_z(job, nrhs, ldx, x, order, keep, control, info, scale)
  @ccall libhsl.ma86_solve_z(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{ComplexF64},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma86_control{Float64}},
                             info::Ref{ma86_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma86_finalise_z(keep, control)
  @ccall libhsl.ma86_finalise_z(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma86_control{Float64}})::Cvoid
end
