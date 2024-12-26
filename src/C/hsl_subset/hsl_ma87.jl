mutable struct Ma87Control{T, INT}
  f_arrays::INT
  diagnostics_level::INT
  unit_diagnostics::INT
  unit_error::INT
  unit_warning::INT
  nemin::INT
  nb::INT
  pool_size::INT
  diag_zero_minus::T
  diag_zero_plus::T
  unused::NTuple{40, Cchar}

  Ma87Control{T, INT}() where {T,INT} = new{T, INT}()

  function Ma87Control{T, INT}(f_arrays, diagnostics_level, unit_diagnostics, unit_error,
                               unit_warning, nemin, nb, pool_size, diag_zero_minus, diag_zero_plus,
                               unused) where {T,INT}
    return new{T, INT}(f_arrays, diagnostics_level, unit_diagnostics, unit_error, unit_warning,
                       nemin, nb, pool_size, diag_zero_minus, diag_zero_plus, unused)
  end
end

mutable struct Ma87Info{T, INT}
  detlog::T
  flag::INT
  maxdepth::INT
  num_factor::Int64
  num_flops::Int64
  num_nodes::INT
  pool_size::INT
  stat::INT
  num_zero::INT
  unused::NTuple{40, Cchar}

  Ma87Info{T, INT}() where {T,INT} = new{T, INT}()

  function Ma87Info{T, INT}(detlog, flag, maxdepth, num_factor, num_flops, num_nodes, pool_size,
                            stat, num_zero, unused) where {T,INT}
    return new{T, INT}(detlog, flag, maxdepth, num_factor, num_flops, num_nodes, pool_size, stat,
                       num_zero, unused)
  end
end

function ma87_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma87_default_control_s(control::Ref{Ma87Control{Float32, Int32}})::Cvoid
end

function ma87_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma87_default_control_d(control::Ref{Ma87Control{Float64, Int32}})::Cvoid
end

function ma87_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma87_default_control_q(control::Ref{Ma87Control{Float128, Int32}})::Cvoid
end

function ma87_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma87_default_control_s_64(control::Ref{Ma87Control{Float32, Int64}})::Cvoid
end

function ma87_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma87_default_control_d_64(control::Ref{Ma87Control{Float64, Int64}})::Cvoid
end

function ma87_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma87_default_control_q_64(control::Ref{Ma87Control{Float128, Int64}})::Cvoid
end

function ma87_analyse(::Type{Float32}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma87_analyse_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma87Control{Float32, Int32}},
                                      info::Ref{Ma87Info{Float32, Int32}})::Cvoid
end

function ma87_analyse(::Type{Float64}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma87_analyse_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma87Control{Float64, Int32}},
                                      info::Ref{Ma87Info{Float64, Int32}})::Cvoid
end

function ma87_analyse(::Type{Float128}, ::Type{Int32}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset.ma87_analyse_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, order::Ptr{Int32},
                                      keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma87Control{Float128, Int32}},
                                      info::Ref{Ma87Info{Float128, Int32}})::Cvoid
end

function ma87_analyse(::Type{Float32}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_analyse_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma87Control{Float32, Int64}},
                                            info::Ref{Ma87Info{Float32, Int64}})::Cvoid
end

function ma87_analyse(::Type{Float64}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_analyse_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma87Control{Float64, Int64}},
                                            info::Ref{Ma87Info{Float64, Int64}})::Cvoid
end

function ma87_analyse(::Type{Float128}, ::Type{Int64}, n, ptr, row, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_analyse_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            order::Ptr{Int64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma87Control{Float128, Int64}},
                                            info::Ref{Ma87Info{Float128, Int64}})::Cvoid
end

function ma87_factor(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset.ma87_factor_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float32},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma87Control{Float32, Int32}},
                                     info::Ref{Ma87Info{Float32, Int32}})::Cvoid
end

function ma87_factor(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset.ma87_factor_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float64},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma87Control{Float64, Int32}},
                                     info::Ref{Ma87Info{Float64, Int32}})::Cvoid
end

function ma87_factor(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset.ma87_factor_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32}, val::Ptr{Float128},
                                     order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma87Control{Float128, Int32}},
                                     info::Ref{Ma87Info{Float128, Int32}})::Cvoid
end

function ma87_factor(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_factor_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float32},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float32, Int64}},
                                           info::Ref{Ma87Info{Float32, Int64}})::Cvoid
end

function ma87_factor(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_factor_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float64},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float64, Int64}},
                                           info::Ref{Ma87Info{Float64, Int64}})::Cvoid
end

function ma87_factor(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_factor_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float128},
                                           order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float128, Int64}},
                                           info::Ref{Ma87Info{Float128, Int64}})::Cvoid
end

function ma87_factor_solve(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset.ma87_factor_solve_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float32},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float32, Int32}},
                                           info::Ref{Ma87Info{Float32, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float32})::Cvoid
end

function ma87_factor_solve(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset.ma87_factor_solve_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float64},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float64, Int32}},
                                           info::Ref{Ma87Info{Float64, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float64})::Cvoid
end

function ma87_factor_solve(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset.ma87_factor_solve_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float128},
                                           order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma87Control{Float128, Int32}},
                                           info::Ref{Ma87Info{Float128, Int32}},
                                           nrhs::Int32, ldx::Int32, x::Ptr{Float128})::Cvoid
end

function ma87_factor_solve(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset_64.ma87_factor_solve_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float32},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma87Control{Float32, Int64}},
                                                 info::Ref{Ma87Info{Float32, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float32})::Cvoid
end

function ma87_factor_solve(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset_64.ma87_factor_solve_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float64},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma87Control{Float64, Int64}},
                                                 info::Ref{Ma87Info{Float64, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float64})::Cvoid
end

function ma87_factor_solve(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, order, keep, control,
                           info, nrhs, ldx, x)
  @ccall libhsl_subset_64.ma87_factor_solve_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                                 val::Ptr{Float128},
                                                 order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma87Control{Float128, Int64}},
                                                 info::Ref{Ma87Info{Float128, Int64}},
                                                 nrhs::Int64, ldx::Int64, x::Ptr{Float128})::Cvoid
end

function ma87_solve(::Type{Float32}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset.ma87_solve_s(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float32},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma87Control{Float32, Int32}},
                                    info::Ref{Ma87Info{Float32, Int32}})::Cvoid
end

function ma87_solve(::Type{Float64}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset.ma87_solve_d(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float64},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma87Control{Float64, Int32}},
                                    info::Ref{Ma87Info{Float64, Int32}})::Cvoid
end

function ma87_solve(::Type{Float128}, ::Type{Int32}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset.ma87_solve_q(job::Int32, nrhs::Int32, ldx::Int32, x::Ptr{Float128},
                                    order::Ptr{Int32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma87Control{Float128, Int32}},
                                    info::Ref{Ma87Info{Float128, Int32}})::Cvoid
end

function ma87_solve(::Type{Float32}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_solve_s_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float32},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma87Control{Float32, Int64}},
                                          info::Ref{Ma87Info{Float32, Int64}})::Cvoid
end

function ma87_solve(::Type{Float64}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_solve_d_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float64},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma87Control{Float64, Int64}},
                                          info::Ref{Ma87Info{Float64, Int64}})::Cvoid
end

function ma87_solve(::Type{Float128}, ::Type{Int64}, job, nrhs, ldx, x, order, keep, control, info)
  @ccall libhsl_subset_64.ma87_solve_q_64(job::Int64, nrhs::Int64, ldx::Int64, x::Ptr{Float128},
                                          order::Ptr{Int64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma87Control{Float128, Int64}},
                                          info::Ref{Ma87Info{Float128, Int64}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float32}, ::Type{Int32}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset.ma87_sparse_fwd_solve_s(nbi::Int32, bindex::Ptr{Int32}, b::Ptr{Float32},
                                               order::Ptr{Int32}, invp::Ptr{Int32}, nxi::Ptr{Int32},
                                               index::Ptr{Int32}, x::Ptr{Float32}, w::Ptr{Float32},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma87Control{Float32, Int32}},
                                               info::Ref{Ma87Info{Float32, Int32}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float64}, ::Type{Int32}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset.ma87_sparse_fwd_solve_d(nbi::Int32, bindex::Ptr{Int32}, b::Ptr{Float64},
                                               order::Ptr{Int32}, invp::Ptr{Int32}, nxi::Ptr{Int32},
                                               index::Ptr{Int32}, x::Ptr{Float64}, w::Ptr{Float64},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma87Control{Float64, Int32}},
                                               info::Ref{Ma87Info{Float64, Int32}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float128}, ::Type{Int32}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset.ma87_sparse_fwd_solve_q(nbi::Int32, bindex::Ptr{Int32}, b::Ptr{Float128},
                                               order::Ptr{Int32}, invp::Ptr{Int32}, nxi::Ptr{Int32},
                                               index::Ptr{Int32}, x::Ptr{Float128},
                                               w::Ptr{Float128},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma87Control{Float128, Int32}},
                                               info::Ref{Ma87Info{Float128, Int32}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float32}, ::Type{Int64}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset_64.ma87_sparse_fwd_solve_s_64(nbi::Int64, bindex::Ptr{Int64},
                                                     b::Ptr{Float32},
                                                     order::Ptr{Int64}, invp::Ptr{Int64},
                                                     nxi::Ptr{Int64},
                                                     index::Ptr{Int64}, x::Ptr{Float32},
                                                     w::Ptr{Float32},
                                                     keep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma87Control{Float32, Int64}},
                                                     info::Ref{Ma87Info{Float32, Int64}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float64}, ::Type{Int64}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset_64.ma87_sparse_fwd_solve_d_64(nbi::Int64, bindex::Ptr{Int64},
                                                     b::Ptr{Float64},
                                                     order::Ptr{Int64}, invp::Ptr{Int64},
                                                     nxi::Ptr{Int64},
                                                     index::Ptr{Int64}, x::Ptr{Float64},
                                                     w::Ptr{Float64},
                                                     keep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma87Control{Float64, Int64}},
                                                     info::Ref{Ma87Info{Float64, Int64}})::Cvoid
end

function ma87_sparse_fwd_solve(::Type{Float128}, ::Type{Int64}, nbi, bindex, b, order, invp, nxi,
                               index, x, w, keep, control, info)
  @ccall libhsl_subset_64.ma87_sparse_fwd_solve_q_64(nbi::Int64, bindex::Ptr{Int64},
                                                     b::Ptr{Float128},
                                                     order::Ptr{Int64}, invp::Ptr{Int64},
                                                     nxi::Ptr{Int64},
                                                     index::Ptr{Int64}, x::Ptr{Float128},
                                                     w::Ptr{Float128},
                                                     keep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma87Control{Float128, Int64}},
                                                     info::Ref{Ma87Info{Float128, Int64}})::Cvoid
end

function ma87_finalise(::Type{Float32}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma87_finalise_s(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma87Control{Float32, Int32}})::Cvoid
end

function ma87_finalise(::Type{Float64}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma87_finalise_d(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma87Control{Float64, Int32}})::Cvoid
end

function ma87_finalise(::Type{Float128}, ::Type{Int32}, keep, control)
  @ccall libhsl_subset.ma87_finalise_q(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma87Control{Float128, Int32}})::Cvoid
end

function ma87_finalise(::Type{Float32}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma87_finalise_s_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma87Control{Float32, Int64}})::Cvoid
end

function ma87_finalise(::Type{Float64}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma87_finalise_d_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma87Control{Float64, Int64}})::Cvoid
end

function ma87_finalise(::Type{Float128}, ::Type{Int64}, keep, control)
  @ccall libhsl_subset_64.ma87_finalise_q_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma87Control{Float128, Int64}})::Cvoid
end
