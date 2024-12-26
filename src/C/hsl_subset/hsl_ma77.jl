mutable struct Ma77Control{T, INT}
  f_arrays::INT
  print_level::INT
  unit_diagnostics::INT
  unit_error::INT
  unit_warning::INT
  bits::INT
  buffer_lpage::NTuple{2, INT}
  buffer_npage::NTuple{2, INT}
  file_size::Int64
  maxstore::Int64
  storage::NTuple{3, Int64}
  nemin::INT
  maxit::INT
  infnorm::INT
  thresh::T
  nb54::INT
  action::INT
  multiplier::T
  nb64::INT
  nbi::INT
  small::T
  static_::T
  storage_indef::Int64
  u::T
  umin::T
  consist_tol::T
  ispare::NTuple{5, INT}
  lspare::NTuple{5, Int64}
  rspare::NTuple{5, T}
end

mutable struct Ma77Info{T, INT}
  detlog::T
  detsign::INT
  flag::INT
  iostat::INT
  matrix_dup::INT
  matrix_rank::INT
  matrix_outrange::INT
  maxdepth::INT
  maxfront::INT
  minstore::Int64
  ndelay::INT
  nfactor::Int64
  nflops::Int64
  niter::INT
  nsup::INT
  num_neg::INT
  num_nothresh::INT
  num_perturbed::INT
  ntwo::INT
  stat::INT
  index::NTuple{4, INT}
  nio_read::NTuple{2, Int64}
  nio_write::NTuple{2, Int64}
  nwd_read::NTuple{2, Int64}
  nwd_write::NTuple{2, Int64}
  num_file::NTuple{4, INT}
  storage::NTuple{4, Int64}
  tree_nodes::INT
  unit_restart::INT
  unused::INT
  usmall::T
  ispare::NTuple{5, INT}
  lspare::NTuple{5, Int64}
  rspare::NTuple{5, T}
end

function ma77_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma77_default_control_s(control::Ref{Ma77Control{Float32, Int32}})::Cvoid
end

function ma77_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma77_default_control_d(control::Ref{Ma77Control{Float64, Int32}})::Cvoid
end

function ma77_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma77_default_control_q(control::Ref{Ma77Control{Float128, Int32}})::Cvoid
end

function ma77_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma77_default_control_s_64(control::Ref{Ma77Control{Float32, Int64}})::Cvoid
end

function ma77_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma77_default_control_d_64(control::Ref{Ma77Control{Float64, Int64}})::Cvoid
end

function ma77_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma77_default_control_q_64(control::Ref{Ma77Control{Float128, Int64}})::Cvoid
end

function ma77_open_nelt(::Type{Float32}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset.ma77_open_nelt_s(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                        fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float32, Int32}},
                                        info::Ref{Ma77Info{Float32, Int32}},
                                        nelt::Int32)::Cvoid
end

function ma77_open_nelt(::Type{Float64}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset.ma77_open_nelt_d(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                        fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float64, Int32}},
                                        info::Ref{Ma77Info{Float64, Int32}},
                                        nelt::Int32)::Cvoid
end

function ma77_open_nelt(::Type{Float128}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset.ma77_open_nelt_q(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                        fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float128, Int32}},
                                        info::Ref{Ma77Info{Float128, Int32}},
                                        nelt::Int32)::Cvoid
end

function ma77_open_nelt(::Type{Float32}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset_64.ma77_open_nelt_s_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                              fname3::Cstring,
                                              fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float32, Int64}},
                                              info::Ref{Ma77Info{Float32, Int64}},
                                              nelt::Int64)::Cvoid
end

function ma77_open_nelt(::Type{Float64}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset_64.ma77_open_nelt_d_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                              fname3::Cstring,
                                              fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float64, Int64}},
                                              info::Ref{Ma77Info{Float64, Int64}},
                                              nelt::Int64)::Cvoid
end

function ma77_open_nelt(::Type{Float128}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep,
                        control, info, nelt)
  @ccall libhsl_subset_64.ma77_open_nelt_q_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                              fname3::Cstring,
                                              fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float128, Int64}},
                                              info::Ref{Ma77Info{Float128, Int64}},
                                              nelt::Int64)::Cvoid
end

function ma77_open(::Type{Float32}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep, control,
                   info)
  @ccall libhsl_subset.ma77_open_s(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                   fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{Ma77Control{Float32, Int32}},
                                   info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_open(::Type{Float64}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep, control,
                   info)
  @ccall libhsl_subset.ma77_open_d(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                   fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{Ma77Control{Float64, Int32}},
                                   info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_open(::Type{Float128}, ::Type{Int32}, n, fname1, fname2, fname3, fname4, keep,
                   control, info)
  @ccall libhsl_subset.ma77_open_q(n::Int32, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                                   fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{Ma77Control{Float128, Int32}},
                                   info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_open(::Type{Float32}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep, control,
                   info)
  @ccall libhsl_subset_64.ma77_open_s_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                         fname3::Cstring,
                                         fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float32, Int64}},
                                         info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_open(::Type{Float64}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep, control,
                   info)
  @ccall libhsl_subset_64.ma77_open_d_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                         fname3::Cstring,
                                         fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float64, Int64}},
                                         info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_open(::Type{Float128}, ::Type{Int64}, n, fname1, fname2, fname3, fname4, keep,
                   control, info)
  @ccall libhsl_subset_64.ma77_open_q_64(n::Int64, fname1::Cstring, fname2::Cstring,
                                         fname3::Cstring,
                                         fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float128, Int64}},
                                         info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_input_vars(::Type{Float32}, ::Type{Int32}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset.ma77_input_vars_s(idx::Int32, nvar::Int32, list::Ptr{Int32},
                                         keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float32, Int32}},
                                         info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_input_vars(::Type{Float64}, ::Type{Int32}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset.ma77_input_vars_d(idx::Int32, nvar::Int32, list::Ptr{Int32},
                                         keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float64, Int32}},
                                         info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_input_vars(::Type{Float128}, ::Type{Int32}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset.ma77_input_vars_q(idx::Int32, nvar::Int32, list::Ptr{Int32},
                                         keep::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma77Control{Float128, Int32}},
                                         info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_input_vars(::Type{Float32}, ::Type{Int64}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_vars_s_64(idx::Int64, nvar::Int64, list::Ptr{Int64},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma77Control{Float32, Int64}},
                                               info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_input_vars(::Type{Float64}, ::Type{Int64}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_vars_d_64(idx::Int64, nvar::Int64, list::Ptr{Int64},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma77Control{Float64, Int64}},
                                               info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_input_vars(::Type{Float128}, ::Type{Int64}, idx, nvar, list, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_vars_q_64(idx::Int64, nvar::Int64, list::Ptr{Int64},
                                               keep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma77Control{Float128, Int64}},
                                               info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_input_reals(::Type{Float32}, ::Type{Int32}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset.ma77_input_reals_s(idx::Int32, length::Int32, reals::Ptr{Float32},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float32, Int32}},
                                          info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_input_reals(::Type{Float64}, ::Type{Int32}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset.ma77_input_reals_d(idx::Int32, length::Int32, reals::Ptr{Float64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float64, Int32}},
                                          info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_input_reals(::Type{Float128}, ::Type{Int32}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset.ma77_input_reals_q(idx::Int32, length::Int32, reals::Ptr{Float128},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float128, Int32}},
                                          info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_input_reals(::Type{Float32}, ::Type{Int64}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_reals_s_64(idx::Int64, length::Int64, reals::Ptr{Float32},
                                                keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma77Control{Float32, Int64}},
                                                info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_input_reals(::Type{Float64}, ::Type{Int64}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_reals_d_64(idx::Int64, length::Int64, reals::Ptr{Float64},
                                                keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma77Control{Float64, Int64}},
                                                info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_input_reals(::Type{Float128}, ::Type{Int64}, idx, length, reals, keep, control, info)
  @ccall libhsl_subset_64.ma77_input_reals_q_64(idx::Int64, length::Int64, reals::Ptr{Float128},
                                                keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma77Control{Float128, Int64}},
                                                info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_analyse(::Type{Float32}, ::Type{Int32}, order, keep, control, info)
  @ccall libhsl_subset.ma77_analyse_s(order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float32, Int32}},
                                      info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_analyse(::Type{Float64}, ::Type{Int32}, order, keep, control, info)
  @ccall libhsl_subset.ma77_analyse_d(order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float64, Int32}},
                                      info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_analyse(::Type{Float128}, ::Type{Int32}, order, keep, control, info)
  @ccall libhsl_subset.ma77_analyse_q(order::Ptr{Int32}, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float128, Int32}},
                                      info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_analyse(::Type{Float32}, ::Type{Int64}, order, keep, control, info)
  @ccall libhsl_subset_64.ma77_analyse_s_64(order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float32, Int64}},
                                            info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_analyse(::Type{Float64}, ::Type{Int64}, order, keep, control, info)
  @ccall libhsl_subset_64.ma77_analyse_d_64(order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float64, Int64}},
                                            info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_analyse(::Type{Float128}, ::Type{Int64}, order, keep, control, info)
  @ccall libhsl_subset_64.ma77_analyse_q_64(order::Ptr{Int64}, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float128, Int64}},
                                            info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_factor(::Type{Float32}, ::Type{Int32}, posdef, keep, control, info, scale)
  @ccall libhsl_subset.ma77_factor_s(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma77Control{Float32, Int32}},
                                     info::Ref{Ma77Info{Float32, Int32}},
                                     scale::Ptr{Float32})::Cvoid
end

function ma77_factor(::Type{Float64}, ::Type{Int32}, posdef, keep, control, info, scale)
  @ccall libhsl_subset.ma77_factor_d(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma77Control{Float64, Int32}},
                                     info::Ref{Ma77Info{Float64, Int32}},
                                     scale::Ptr{Float64})::Cvoid
end

function ma77_factor(::Type{Float128}, ::Type{Int32}, posdef, keep, control, info, scale)
  @ccall libhsl_subset.ma77_factor_q(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma77Control{Float128, Int32}},
                                     info::Ref{Ma77Info{Float128, Int32}},
                                     scale::Ptr{Float128})::Cvoid
end

function ma77_factor(::Type{Float32}, ::Type{Int64}, posdef, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_factor_s_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float32, Int64}},
                                           info::Ref{Ma77Info{Float32, Int64}},
                                           scale::Ptr{Float32})::Cvoid
end

function ma77_factor(::Type{Float64}, ::Type{Int64}, posdef, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_factor_d_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float64, Int64}},
                                           info::Ref{Ma77Info{Float64, Int64}},
                                           scale::Ptr{Float64})::Cvoid
end

function ma77_factor(::Type{Float128}, ::Type{Int64}, posdef, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_factor_q_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float128, Int64}},
                                           info::Ref{Ma77Info{Float128, Int64}},
                                           scale::Ptr{Float128})::Cvoid
end

function ma77_factor_solve(::Type{Float32}, ::Type{Int32}, posdef, keep, control, info, scale, nrhs,
                           lx, rhs)
  @ccall libhsl_subset.ma77_factor_solve_s(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float32, Int32}},
                                           info::Ref{Ma77Info{Float32, Int32}},
                                           scale::Ptr{Float32}, nrhs::Int32, lx::Int32,
                                           rhs::Ptr{Float32})::Cvoid
end

function ma77_factor_solve(::Type{Float64}, ::Type{Int32}, posdef, keep, control, info, scale, nrhs,
                           lx, rhs)
  @ccall libhsl_subset.ma77_factor_solve_d(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float64, Int32}},
                                           info::Ref{Ma77Info{Float64, Int32}},
                                           scale::Ptr{Float64}, nrhs::Int32, lx::Int32,
                                           rhs::Ptr{Float64})::Cvoid
end

function ma77_factor_solve(::Type{Float128}, ::Type{Int32}, posdef, keep, control, info, scale,
                           nrhs, lx, rhs)
  @ccall libhsl_subset.ma77_factor_solve_q(posdef::Int32, keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma77Control{Float128, Int32}},
                                           info::Ref{Ma77Info{Float128, Int32}},
                                           scale::Ptr{Float128}, nrhs::Int32, lx::Int32,
                                           rhs::Ptr{Float128})::Cvoid
end

function ma77_factor_solve(::Type{Float32}, ::Type{Int64}, posdef, keep, control, info, scale, nrhs,
                           lx, rhs)
  @ccall libhsl_subset_64.ma77_factor_solve_s_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma77Control{Float32, Int64}},
                                                 info::Ref{Ma77Info{Float32, Int64}},
                                                 scale::Ptr{Float32}, nrhs::Int64, lx::Int64,
                                                 rhs::Ptr{Float32})::Cvoid
end

function ma77_factor_solve(::Type{Float64}, ::Type{Int64}, posdef, keep, control, info, scale, nrhs,
                           lx, rhs)
  @ccall libhsl_subset_64.ma77_factor_solve_d_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma77Control{Float64, Int64}},
                                                 info::Ref{Ma77Info{Float64, Int64}},
                                                 scale::Ptr{Float64}, nrhs::Int64, lx::Int64,
                                                 rhs::Ptr{Float64})::Cvoid
end

function ma77_factor_solve(::Type{Float128}, ::Type{Int64}, posdef, keep, control, info, scale,
                           nrhs, lx, rhs)
  @ccall libhsl_subset_64.ma77_factor_solve_q_64(posdef::Int64, keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma77Control{Float128, Int64}},
                                                 info::Ref{Ma77Info{Float128, Int64}},
                                                 scale::Ptr{Float128}, nrhs::Int64, lx::Int64,
                                                 rhs::Ptr{Float128})::Cvoid
end

function ma77_solve(::Type{Float32}, ::Type{Int32}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset.ma77_solve_s(job::Int32, nrhs::Int32, lx::Int32, x::Ptr{Float32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float32, Int32}},
                                    info::Ref{Ma77Info{Float32, Int32}},
                                    scale::Ptr{Float32})::Cvoid
end

function ma77_solve(::Type{Float64}, ::Type{Int32}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset.ma77_solve_d(job::Int32, nrhs::Int32, lx::Int32, x::Ptr{Float64},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float64, Int32}},
                                    info::Ref{Ma77Info{Float64, Int32}},
                                    scale::Ptr{Float64})::Cvoid
end

function ma77_solve(::Type{Float128}, ::Type{Int32}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset.ma77_solve_q(job::Int32, nrhs::Int32, lx::Int32, x::Ptr{Float128},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float128, Int32}},
                                    info::Ref{Ma77Info{Float128, Int32}},
                                    scale::Ptr{Float128})::Cvoid
end

function ma77_solve(::Type{Float32}, ::Type{Int64}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_solve_s_64(job::Int64, nrhs::Int64, lx::Int64, x::Ptr{Float32},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float32, Int64}},
                                          info::Ref{Ma77Info{Float32, Int64}},
                                          scale::Ptr{Float32})::Cvoid
end

function ma77_solve(::Type{Float64}, ::Type{Int64}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_solve_d_64(job::Int64, nrhs::Int64, lx::Int64, x::Ptr{Float64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float64, Int64}},
                                          info::Ref{Ma77Info{Float64, Int64}},
                                          scale::Ptr{Float64})::Cvoid
end

function ma77_solve(::Type{Float128}, ::Type{Int64}, job, nrhs, lx, x, keep, control, info, scale)
  @ccall libhsl_subset_64.ma77_solve_q_64(job::Int64, nrhs::Int64, lx::Int64, x::Ptr{Float128},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float128, Int64}},
                                          info::Ref{Ma77Info{Float128, Int64}},
                                          scale::Ptr{Float128})::Cvoid
end

function ma77_resid(::Type{Float32}, ::Type{Int32}, nrhs, lx, x, lresid, resid, keep, control, info,
                    anorm_bnd)
  @ccall libhsl_subset.ma77_resid_s(nrhs::Int32, lx::Int32, x::Ptr{Float32}, lresid::Int32,
                                    resid::Ptr{Float32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float32, Int32}},
                                    info::Ref{Ma77Info{Float32, Int32}},
                                    anorm_bnd::Ptr{Float32})::Cvoid
end

function ma77_resid(::Type{Float64}, ::Type{Int32}, nrhs, lx, x, lresid, resid, keep, control, info,
                    anorm_bnd)
  @ccall libhsl_subset.ma77_resid_d(nrhs::Int32, lx::Int32, x::Ptr{Float64}, lresid::Int32,
                                    resid::Ptr{Float64},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float64, Int32}},
                                    info::Ref{Ma77Info{Float64, Int32}},
                                    anorm_bnd::Ptr{Float64})::Cvoid
end

function ma77_resid(::Type{Float128}, ::Type{Int32}, nrhs, lx, x, lresid, resid, keep, control,
                    info, anorm_bnd)
  @ccall libhsl_subset.ma77_resid_q(nrhs::Int32, lx::Int32, x::Ptr{Float128}, lresid::Int32,
                                    resid::Ptr{Float128},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float128, Int32}},
                                    info::Ref{Ma77Info{Float128, Int32}},
                                    anorm_bnd::Ptr{Float128})::Cvoid
end

function ma77_resid(::Type{Float32}, ::Type{Int64}, nrhs, lx, x, lresid, resid, keep, control, info,
                    anorm_bnd)
  @ccall libhsl_subset_64.ma77_resid_s_64(nrhs::Int64, lx::Int64, x::Ptr{Float32}, lresid::Int64,
                                          resid::Ptr{Float32},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float32, Int64}},
                                          info::Ref{Ma77Info{Float32, Int64}},
                                          anorm_bnd::Ptr{Float32})::Cvoid
end

function ma77_resid(::Type{Float64}, ::Type{Int64}, nrhs, lx, x, lresid, resid, keep, control, info,
                    anorm_bnd)
  @ccall libhsl_subset_64.ma77_resid_d_64(nrhs::Int64, lx::Int64, x::Ptr{Float64}, lresid::Int64,
                                          resid::Ptr{Float64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float64, Int64}},
                                          info::Ref{Ma77Info{Float64, Int64}},
                                          anorm_bnd::Ptr{Float64})::Cvoid
end

function ma77_resid(::Type{Float128}, ::Type{Int64}, nrhs, lx, x, lresid, resid, keep, control,
                    info, anorm_bnd)
  @ccall libhsl_subset_64.ma77_resid_q_64(nrhs::Int64, lx::Int64, x::Ptr{Float128}, lresid::Int64,
                                          resid::Ptr{Float128},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float128, Int64}},
                                          info::Ref{Ma77Info{Float128, Int64}},
                                          anorm_bnd::Ptr{Float128})::Cvoid
end

function ma77_scale(::Type{Float32}, ::Type{Int32}, scale, keep, control, info, anorm)
  @ccall libhsl_subset.ma77_scale_s(scale::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float32, Int32}},
                                    info::Ref{Ma77Info{Float32, Int32}}, anorm::Ptr{Float32})::Cvoid
end

function ma77_scale(::Type{Float64}, ::Type{Int32}, scale, keep, control, info, anorm)
  @ccall libhsl_subset.ma77_scale_d(scale::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float64, Int32}},
                                    info::Ref{Ma77Info{Float64, Int32}}, anorm::Ptr{Float64})::Cvoid
end

function ma77_scale(::Type{Float128}, ::Type{Int32}, scale, keep, control, info, anorm)
  @ccall libhsl_subset.ma77_scale_q(scale::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float128, Int32}},
                                    info::Ref{Ma77Info{Float128, Int32}},
                                    anorm::Ptr{Float128})::Cvoid
end

function ma77_scale(::Type{Float32}, ::Type{Int64}, scale, keep, control, info, anorm)
  @ccall libhsl_subset_64.ma77_scale_s_64(scale::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float32, Int64}},
                                          info::Ref{Ma77Info{Float32, Int64}},
                                          anorm::Ptr{Float32})::Cvoid
end

function ma77_scale(::Type{Float64}, ::Type{Int64}, scale, keep, control, info, anorm)
  @ccall libhsl_subset_64.ma77_scale_d_64(scale::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float64, Int64}},
                                          info::Ref{Ma77Info{Float64, Int64}},
                                          anorm::Ptr{Float64})::Cvoid
end

function ma77_scale(::Type{Float128}, ::Type{Int64}, scale, keep, control, info, anorm)
  @ccall libhsl_subset_64.ma77_scale_q_64(scale::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float128, Int64}},
                                          info::Ref{Ma77Info{Float128, Int64}},
                                          anorm::Ptr{Float128})::Cvoid
end

function ma77_enquire_posdef(::Type{Float32}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_posdef_s(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float32, Int32}},
                                             info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_enquire_posdef(::Type{Float64}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_posdef_d(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float64, Int32}},
                                             info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_enquire_posdef(::Type{Float128}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_posdef_q(d::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float128, Int32}},
                                             info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_enquire_posdef(::Type{Float32}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_posdef_s_64(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float32, Int64}},
                                                   info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_enquire_posdef(::Type{Float64}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_posdef_d_64(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float64, Int64}},
                                                   info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_enquire_posdef(::Type{Float128}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_posdef_q_64(d::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float128, Int64}},
                                                   info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_enquire_indef(::Type{Float32}, ::Type{Int32}, piv_order, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_indef_s(piv_order::Ptr{Cint}, d::Ptr{Float32},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float32, Int32}},
                                            info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_enquire_indef(::Type{Float64}, ::Type{Int32}, piv_order, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_indef_d(piv_order::Ptr{Cint}, d::Ptr{Float64},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float64, Int32}},
                                            info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_enquire_indef(::Type{Float128}, ::Type{Int32}, piv_order, d, keep, control, info)
  @ccall libhsl_subset.ma77_enquire_indef_q(piv_order::Ptr{Cint}, d::Ptr{Float128},
                                            keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float128, Int32}},
                                            info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_enquire_indef(::Type{Float32}, ::Type{Int64}, piv_order, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_indef_s_64(piv_order::Ptr{Cint}, d::Ptr{Float32},
                                                  keep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma77Control{Float32, Int64}},
                                                  info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_enquire_indef(::Type{Float64}, ::Type{Int64}, piv_order, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_indef_d_64(piv_order::Ptr{Cint}, d::Ptr{Float64},
                                                  keep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma77Control{Float64, Int64}},
                                                  info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_enquire_indef(::Type{Float128}, ::Type{Int64}, piv_order, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_enquire_indef_q_64(piv_order::Ptr{Cint}, d::Ptr{Float128},
                                                  keep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma77Control{Float128, Int64}},
                                                  info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_alter(::Type{Float32}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_alter_s(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float32, Int32}},
                                    info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_alter(::Type{Float64}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_alter_d(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float64, Int32}},
                                    info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_alter(::Type{Float128}, ::Type{Int32}, d, keep, control, info)
  @ccall libhsl_subset.ma77_alter_q(d::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma77Control{Float128, Int32}},
                                    info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_alter(::Type{Float32}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_alter_s_64(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float32, Int64}},
                                          info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_alter(::Type{Float64}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_alter_d_64(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float64, Int64}},
                                          info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_alter(::Type{Float128}, ::Type{Int64}, d, keep, control, info)
  @ccall libhsl_subset_64.ma77_alter_q_64(d::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma77Control{Float128, Int64}},
                                          info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_restart(::Type{Float32}, ::Type{Int32}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset.ma77_restart_s(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                      fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float32, Int32}},
                                      info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_restart(::Type{Float64}, ::Type{Int32}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset.ma77_restart_d(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                      fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float64, Int32}},
                                      info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_restart(::Type{Float128}, ::Type{Int32}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset.ma77_restart_q(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                      fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma77Control{Float128, Int32}},
                                      info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_restart(::Type{Float32}, ::Type{Int64}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset_64.ma77_restart_s_64(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                            fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float32, Int64}},
                                            info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_restart(::Type{Float64}, ::Type{Int64}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset_64.ma77_restart_d_64(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                            fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float64, Int64}},
                                            info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_restart(::Type{Float128}, ::Type{Int64}, restart_file, fname1, fname2, fname3, fname4,
                      keep, control, info)
  @ccall libhsl_subset_64.ma77_restart_q_64(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                            fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma77Control{Float128, Int64}},
                                            info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_finalise(::Type{Float32}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.ma77_finalise_s(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma77Control{Float32, Int32}},
                                       info::Ref{Ma77Info{Float32, Int32}})::Cvoid
end

function ma77_finalise(::Type{Float64}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.ma77_finalise_d(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma77Control{Float64, Int32}},
                                       info::Ref{Ma77Info{Float64, Int32}})::Cvoid
end

function ma77_finalise(::Type{Float128}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.ma77_finalise_q(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma77Control{Float128, Int32}},
                                       info::Ref{Ma77Info{Float128, Int32}})::Cvoid
end

function ma77_finalise(::Type{Float32}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.ma77_finalise_s_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float32, Int64}},
                                             info::Ref{Ma77Info{Float32, Int64}})::Cvoid
end

function ma77_finalise(::Type{Float64}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.ma77_finalise_d_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float64, Int64}},
                                             info::Ref{Ma77Info{Float64, Int64}})::Cvoid
end

function ma77_finalise(::Type{Float128}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.ma77_finalise_q_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float128, Int64}},
                                             info::Ref{Ma77Info{Float128, Int64}})::Cvoid
end

function ma77_solve_fredholm(::Type{Float32}, ::Type{Int32}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset.ma77_solve_fredholm_s(nrhs::Cint, flag_out::Ptr{Int32}, lx::Int32,
                                             x::Ptr{Float32},
                                             keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float32, Int32}},
                                             info::Ref{Ma77Info{Float32, Int32}},
                                             scale::Ptr{Float32})::Cvoid
end

function ma77_solve_fredholm(::Type{Float64}, ::Type{Int32}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset.ma77_solve_fredholm_d(nrhs::Cint, flag_out::Ptr{Int32}, lx::Int32,
                                             x::Ptr{Float64},
                                             keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float64, Int32}},
                                             info::Ref{Ma77Info{Float64, Int32}},
                                             scale::Ptr{Float64})::Cvoid
end

function ma77_solve_fredholm(::Type{Float128}, ::Type{Int32}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset.ma77_solve_fredholm_q(nrhs::Cint, flag_out::Ptr{Int32}, lx::Int32,
                                             x::Ptr{Float128},
                                             keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma77Control{Float128, Int32}},
                                             info::Ref{Ma77Info{Float128, Int32}},
                                             scale::Ptr{Float128})::Cvoid
end

function ma77_solve_fredholm(::Type{Float32}, ::Type{Int64}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset_64.ma77_solve_fredholm_s_64(nrhs::Cint, flag_out::Ptr{Int64}, lx::Int64,
                                                   x::Ptr{Float32},
                                                   keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float32, Int64}},
                                                   info::Ref{Ma77Info{Float32, Int64}},
                                                   scale::Ptr{Float32})::Cvoid
end

function ma77_solve_fredholm(::Type{Float64}, ::Type{Int64}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset_64.ma77_solve_fredholm_d_64(nrhs::Cint, flag_out::Ptr{Int64}, lx::Int64,
                                                   x::Ptr{Float64},
                                                   keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float64, Int64}},
                                                   info::Ref{Ma77Info{Float64, Int64}},
                                                   scale::Ptr{Float64})::Cvoid
end

function ma77_solve_fredholm(::Type{Float128}, ::Type{Int64}, nrhs, flag_out, lx, x, keep, control,
                             info, scale)
  @ccall libhsl_subset_64.ma77_solve_fredholm_q_64(nrhs::Cint, flag_out::Ptr{Int64}, lx::Int64,
                                                   x::Ptr{Float128},
                                                   keep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma77Control{Float128, Int64}},
                                                   info::Ref{Ma77Info{Float128, Int64}},
                                                   scale::Ptr{Float128})::Cvoid
end

function ma77_lmultiply(::Type{Float32}, ::Type{Int32}, trans, k, lx, x, ly, y, keep, control, info,
                        scale)
  @ccall libhsl_subset.ma77_lmultiply_s(trans::Cint, k::Int32, lx::Int32, x::Ptr{Float32},
                                        ly::Int32,
                                        y::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float32, Int32}},
                                        info::Ref{Ma77Info{Float32, Int32}},
                                        scale::Ptr{Float32})::Cvoid
end

function ma77_lmultiply(::Type{Float64}, ::Type{Int32}, trans, k, lx, x, ly, y, keep, control, info,
                        scale)
  @ccall libhsl_subset.ma77_lmultiply_d(trans::Cint, k::Int32, lx::Int32, x::Ptr{Float64},
                                        ly::Int32,
                                        y::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float64, Int32}},
                                        info::Ref{Ma77Info{Float64, Int32}},
                                        scale::Ptr{Float64})::Cvoid
end

function ma77_lmultiply(::Type{Float128}, ::Type{Int32}, trans, k, lx, x, ly, y, keep, control,
                        info, scale)
  @ccall libhsl_subset.ma77_lmultiply_q(trans::Cint, k::Int32, lx::Int32, x::Ptr{Float128},
                                        ly::Int32,
                                        y::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma77Control{Float128, Int32}},
                                        info::Ref{Ma77Info{Float128, Int32}},
                                        scale::Ptr{Float128})::Cvoid
end

function ma77_lmultiply(::Type{Float32}, ::Type{Int64}, trans, k, lx, x, ly, y, keep, control, info,
                        scale)
  @ccall libhsl_subset_64.ma77_lmultiply_s_64(trans::Cint, k::Int64, lx::Int64, x::Ptr{Float32},
                                              ly::Int64,
                                              y::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float32, Int64}},
                                              info::Ref{Ma77Info{Float32, Int64}},
                                              scale::Ptr{Float32})::Cvoid
end

function ma77_lmultiply(::Type{Float64}, ::Type{Int64}, trans, k, lx, x, ly, y, keep, control, info,
                        scale)
  @ccall libhsl_subset_64.ma77_lmultiply_d_64(trans::Cint, k::Int64, lx::Int64, x::Ptr{Float64},
                                              ly::Int64,
                                              y::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float64, Int64}},
                                              info::Ref{Ma77Info{Float64, Int64}},
                                              scale::Ptr{Float64})::Cvoid
end

function ma77_lmultiply(::Type{Float128}, ::Type{Int64}, trans, k, lx, x, ly, y, keep, control,
                        info, scale)
  @ccall libhsl_subset_64.ma77_lmultiply_q_64(trans::Cint, k::Int64, lx::Int64, x::Ptr{Float128},
                                              ly::Int64,
                                              y::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma77Control{Float128, Int64}},
                                              info::Ref{Ma77Info{Float128, Int64}},
                                              scale::Ptr{Float128})::Cvoid
end
