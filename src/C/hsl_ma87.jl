mutable struct ma87_control{T}
  f_arrays::Cint
  diagnostics_level::Cint
  unit_diagnostics::Cint
  unit_error::Cint
  unit_warning::Cint
  nemin::Cint
  nb::Cint
  pool_size::Cint
  diag_zero_minus::T
  diag_zero_plus::T
  unused::NTuple{40, Cchar}

  ma87_control{T}() where {T} = new()

  function ma87_control{T}(f_arrays, diagnostics_level, unit_diagnostics, unit_error, unit_warning,
                           nemin, nb, pool_size, diag_zero_minus, diag_zero_plus, unused) where {T}
    return new(f_arrays, diagnostics_level, unit_diagnostics, unit_error, unit_warning, nemin, nb,
               pool_size, diag_zero_minus, diag_zero_plus, unused)
  end
end

function ma87_default_control_s(control)
  @ccall libhsl.ma87_default_control_s(control::Ref{ma87_control{Float32}})::Cvoid
end

mutable struct ma87_info{T}
  detlog::T
  flag::Cint
  maxdepth::Cint
  num_factor::Clong
  num_flops::Clong
  num_nodes::Cint
  pool_size::Cint
  stat::Cint
  num_zero::Cint
  unused::NTuple{40, Cchar}

  ma87_info{T}() where {T} = new()

  function ma87_info{T}(detlog, flag, maxdepth, num_factor, num_flops, num_nodes, pool_size, stat,
                        num_zero, unused) where {T}
    return new(detlog, flag, maxdepth, num_factor, num_flops, num_nodes, pool_size, stat, num_zero,
               unused)
  end
end

function ma87_analyse_s(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma87_analyse_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}},
                               info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_factor_s(n, ptr, row, val, order, keep, control, info)
  @ccall libhsl.ma87_factor_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float32},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma87_control{Float32}},
                              info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_factor_solve_s(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x)
  @ccall libhsl.ma87_factor_solve_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float32}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}},
                                    info::Ref{ma87_info{Float32}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{Float32})::Cvoid
end

function ma87_solve_s(job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl.ma87_solve_s(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{Float32},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma87_control{Float32}},
                             info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_sparse_fwd_solve_s(nbi, bindex, b, order, invp, nxi, index, x, w, keep, control, info)
  @ccall libhsl.ma87_sparse_fwd_solve_s(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{Float32},
                                        order::Ptr{Cint}, invp::Ptr{Cint}, nxi::Ptr{Cint},
                                        index::Ptr{Cint}, x::Ptr{Float32},
                                        w::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma87_control{Float32}},
                                        info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_finalise_s(keep, control)
  @ccall libhsl.ma87_finalise_s(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}})::Cvoid
end

function ma87_default_control_d(control)
  @ccall libhsl.ma87_default_control_d(control::Ref{ma87_control{Float64}})::Cvoid
end

function ma87_analyse_d(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma87_analyse_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}},
                               info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_factor_d(n, ptr, row, val, order, keep, control, info)
  @ccall libhsl.ma87_factor_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float64},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma87_control{Float64}},
                              info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_factor_solve_d(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x)
  @ccall libhsl.ma87_factor_solve_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float64}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}},
                                    info::Ref{ma87_info{Float64}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{Float64})::Cvoid
end

function ma87_solve_d(job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl.ma87_solve_d(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{Float64},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma87_control{Float64}},
                             info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_sparse_fwd_solve_d(nbi, bindex, b, order, invp, nxi, index, x, w, keep, control, info)
  @ccall libhsl.ma87_sparse_fwd_solve_d(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{Float64},
                                        order::Ptr{Cint}, invp::Ptr{Cint}, nxi::Ptr{Cint},
                                        index::Ptr{Cint}, x::Ptr{Float64},
                                        w::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma87_control{Float64}},
                                        info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_finalise_d(keep, control)
  @ccall libhsl.ma87_finalise_d(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}})::Cvoid
end

function ma87_default_control_c(control)
  @ccall libhsl.ma87_default_control_c(control::Ref{ma87_control{Float32}})::Cvoid
end

function ma87_analyse_c(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma87_analyse_c(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}},
                               info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_factor_c(n, ptr, row, val, order, keep, control, info)
  @ccall libhsl.ma87_factor_c(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF32},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma87_control{Float32}},
                              info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_factor_solve_c(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x)
  @ccall libhsl.ma87_factor_solve_c(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF32}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}},
                                    info::Ref{ma87_info{Float32}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{ComplexF32})::Cvoid
end

function ma87_solve_c(job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl.ma87_solve_c(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{ComplexF32},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma87_control{Float32}},
                             info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_sparse_fwd_solve_c(nbi, bindex, b, order, invp, nxi, index, x, w, keep, control, info)
  @ccall libhsl.ma87_sparse_fwd_solve_c(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{ComplexF32},
                                        order::Ptr{Cint}, invp::Ptr{Cint}, nxi::Ptr{Cint},
                                        index::Ptr{Cint}, x::Ptr{ComplexF32},
                                        w::Ptr{ComplexF32}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma87_control{Float32}},
                                        info::Ref{ma87_info{Float32}})::Cvoid
end

function ma87_finalise_c(keep, control)
  @ccall libhsl.ma87_finalise_c(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float32}})::Cvoid
end

function ma87_default_control_z(control)
  @ccall libhsl.ma87_default_control_z(control::Ref{ma87_control{Float64}})::Cvoid
end

function ma87_analyse_z(n, ptr, row, order, keep, control, info)
  @ccall libhsl.ma87_analyse_z(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, order::Ptr{Cint},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}},
                               info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_factor_z(n, ptr, row, val, order, keep, control, info)
  @ccall libhsl.ma87_factor_z(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF64},
                              order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma87_control{Float64}},
                              info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_factor_solve_z(n, ptr, row, val, order, keep, control, info, nrhs, ldx, x)
  @ccall libhsl.ma87_factor_solve_z(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF64}, order::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}},
                                    info::Ref{ma87_info{Float64}}, nrhs::Cint, ldx::Cint,
                                    x::Ptr{ComplexF64})::Cvoid
end

function ma87_solve_z(job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl.ma87_solve_z(job::Cint, nrhs::Cint, ldx::Cint, x::Ptr{ComplexF64},
                             order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma87_control{Float64}},
                             info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_sparse_fwd_solve_z(nbi, bindex, b, order, invp, nxi, index, x, w, keep, control, info)
  @ccall libhsl.ma87_sparse_fwd_solve_z(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{ComplexF64},
                                        order::Ptr{Cint}, invp::Ptr{Cint}, nxi::Ptr{Cint},
                                        index::Ptr{Cint}, x::Ptr{ComplexF64},
                                        w::Ptr{ComplexF64}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma87_control{Float64}},
                                        info::Ref{ma87_info{Float64}})::Cvoid
end

function ma87_finalise_z(keep, control)
  @ccall libhsl.ma87_finalise_z(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma87_control{Float64}})::Cvoid
end
