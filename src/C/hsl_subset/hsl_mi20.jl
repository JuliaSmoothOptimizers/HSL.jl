mutable struct Mi20Control{T, INT}
  f_arrays::INT
  aggressive::INT
  c_fail::INT
  max_levels::INT
  max_points::INT
  reduction::T
  st_method::INT
  st_parameter::T
  testing::INT
  trunc_parameter::T
  coarse_solver::INT
  coarse_solver_its::INT
  damping::T
  err_tol::T
  levels::INT
  pre_smoothing::INT
  smoother::INT
  post_smoothing::INT
  v_iterations::INT
  print_level::INT
  print::INT
  error::INT
  one_pass_coarsen::INT

  Mi20Control{T, INT}() where {T,INT} = new{T, INT}()

  function Mi20Control{T, INT}(f_arrays, aggressive, c_fail, max_levels, max_points, reduction,
                               st_method, st_parameter, testing, trunc_parameter, coarse_solver,
                               coarse_solver_its, damping, err_tol, levels, pre_smoothing, smoother,
                               post_smoothing, v_iterations, print_level, print, error,
                               one_pass_coarsen) where {T,INT}
    return new{T, INT}(f_arrays, aggressive, c_fail, max_levels, max_points, reduction, st_method,
                       st_parameter, testing, trunc_parameter, coarse_solver, coarse_solver_its,
                       damping, err_tol, levels, pre_smoothing, smoother, post_smoothing,
                       v_iterations, print_level, print, error, one_pass_coarsen)
  end
end

mutable struct Mi20SolveControl{T, INT}
  abs_tol::T
  breakdown_tol::T
  gmres_restart::INT
  init_guess::Bool
  krylov_solver::INT
  max_its::INT
  preconditioner_side::INT
  rel_tol::T

  Mi20SolveControl{T, INT}() where {T,INT} = new{T, INT}()

  function Mi20SolveControl{T, INT}(abs_tol, breakdown_tol, gmres_restart, init_guess,
                                    krylov_solver, max_its, preconditioner_side,
                                    rel_tol) where {T,INT}
    return new{T, INT}(abs_tol, breakdown_tol, gmres_restart, init_guess, krylov_solver, max_its,
                       preconditioner_side, rel_tol)
  end
end

mutable struct Mi20Info{T, INT}
  flag::INT
  clevels::INT
  cpoints::INT
  cnnz::INT
  stat::INT
  getrf_info::INT
  iterations::INT
  residual::T

  Mi20Info{T, INT}() where {T,INT} = new{T, INT}()

  function Mi20Info{T, INT}(flag, clevels, cpoints, cnnz, stat, getrf_info, iterations,
                            residual) where {T,INT}
    return new{T, INT}(flag, clevels, cpoints, cnnz, stat, getrf_info, iterations, residual)
  end
end

function mi20_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi20_default_control_s(control::Ref{Mi20Control{Float32, Int32}})::Cvoid
end

function mi20_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi20_default_control_d(control::Ref{Mi20Control{Float64, Int32}})::Cvoid
end

function mi20_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi20_default_control_q(control::Ref{Mi20Control{Float128, Int32}})::Cvoid
end

function mi20_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi20_default_control_s_64(control::Ref{Mi20Control{Float32, Int64}})::Cvoid
end

function mi20_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi20_default_control_d_64(control::Ref{Mi20Control{Float64, Int64}})::Cvoid
end

function mi20_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi20_default_control_q_64(control::Ref{Mi20Control{Float128, Int64}})::Cvoid
end

function mi20_default_solve_control(::Type{Float32}, ::Type{Int32}, solve_control)
  @ccall libhsl_subset.mi20_default_solve_control_s(solve_control::Ref{Mi20SolveControl{Float32,
                                                                                        Int32}})::Cvoid
end

function mi20_default_solve_control(::Type{Float64}, ::Type{Int32}, solve_control)
  @ccall libhsl_subset.mi20_default_solve_control_d(solve_control::Ref{Mi20SolveControl{Float64,
                                                                                        Int32}})::Cvoid
end

function mi20_default_solve_control(::Type{Float128}, ::Type{Int32}, solve_control)
  @ccall libhsl_subset.mi20_default_solve_control_q(solve_control::Ref{Mi20SolveControl{Float128,
                                                                                        Int32}})::Cvoid
end

function mi20_default_solve_control(::Type{Float32}, ::Type{Int64}, solve_control)
  @ccall libhsl_subset_64.mi20_default_solve_control_s_64(solve_control::Ref{Mi20SolveControl{Float32,
                                                                                              Int64}})::Cvoid
end

function mi20_default_solve_control(::Type{Float64}, ::Type{Int64}, solve_control)
  @ccall libhsl_subset_64.mi20_default_solve_control_d_64(solve_control::Ref{Mi20SolveControl{Float64,
                                                                                              Int64}})::Cvoid
end

function mi20_default_solve_control(::Type{Float128}, ::Type{Int64}, solve_control)
  @ccall libhsl_subset_64.mi20_default_solve_control_q_64(solve_control::Ref{Mi20SolveControl{Float128,
                                                                                              Int64}})::Cvoid
end

function mi20_setup(::Type{Float32}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_s(n::Cint, ptr::Ptr{Int32}, col::Ptr{Int32}, val::Ptr{Float32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float32, Int32}},
                                    info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_setup(::Type{Float64}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_d(n::Cint, ptr::Ptr{Int32}, col::Ptr{Int32}, val::Ptr{Float64},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float64, Int32}},
                                    info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_setup(::Type{Float128}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_q(n::Cint, ptr::Ptr{Int32}, col::Ptr{Int32}, val::Ptr{Float128},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float128, Int32}},
                                    info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_setup(::Type{Float32}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_s_64(n::Cint, ptr::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float32},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float32, Int64}},
                                          info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_setup(::Type{Float64}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_d_64(n::Cint, ptr::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float64, Int64}},
                                          info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_setup(::Type{Float128}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_q_64(n::Cint, ptr::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float128},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float128, Int64}},
                                          info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_setup_csr(::Type{Float32}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csr_s(n::Int32, ptr::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float32},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float32, Int32}},
                                        info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_setup_csr(::Type{Float64}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csr_d(n::Int32, ptr::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float64},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float64, Int32}},
                                        info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_setup_csr(::Type{Float128}, ::Type{Int32}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csr_q(n::Int32, ptr::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float128},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float128, Int32}},
                                        info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_setup_csr(::Type{Float32}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csr_s_64(n::Int64, ptr::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float32},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float32, Int64}},
                                              info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_setup_csr(::Type{Float64}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csr_d_64(n::Int64, ptr::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float64},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float64, Int64}},
                                              info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_setup_csr(::Type{Float128}, ::Type{Int64}, n, ptr, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csr_q_64(n::Int64, ptr::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float128},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float128, Int64}},
                                              info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_setup_csc(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csc_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float32},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float32, Int32}},
                                        info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_setup_csc(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csc_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float64},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float64, Int32}},
                                        info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_setup_csc(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_csc_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float128},
                                        keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi20Control{Float128, Int32}},
                                        info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_setup_csc(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csc_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float32},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float32, Int64}},
                                              info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_setup_csc(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csc_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float64},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float64, Int64}},
                                              info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_setup_csc(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_csc_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float128},
                                              keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi20Control{Float128, Int64}},
                                              info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_setup_coord(::Type{Float32}, ::Type{Int32}, n, ne, row, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_coord_s(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                          val::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float32, Int32}},
                                          info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_setup_coord(::Type{Float64}, ::Type{Int32}, n, ne, row, col, val, keep, control, info)
  @ccall libhsl_subset.mi20_setup_coord_d(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                          val::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float64, Int32}},
                                          info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_setup_coord(::Type{Float128}, ::Type{Int32}, n, ne, row, col, val, keep, control,
                          info)
  @ccall libhsl_subset.mi20_setup_coord_q(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                          val::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float128, Int32}},
                                          info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_setup_coord(::Type{Float32}, ::Type{Int64}, n, ne, row, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_coord_s_64(n::Int64, ne::Int64, row::Ptr{Int64},
                                                col::Ptr{Int64},
                                                val::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Mi20Control{Float32, Int64}},
                                                info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_setup_coord(::Type{Float64}, ::Type{Int64}, n, ne, row, col, val, keep, control, info)
  @ccall libhsl_subset_64.mi20_setup_coord_d_64(n::Int64, ne::Int64, row::Ptr{Int64},
                                                col::Ptr{Int64},
                                                val::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Mi20Control{Float64, Int64}},
                                                info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_setup_coord(::Type{Float128}, ::Type{Int64}, n, ne, row, col, val, keep, control,
                          info)
  @ccall libhsl_subset_64.mi20_setup_coord_q_64(n::Int64, ne::Int64, row::Ptr{Int64},
                                                col::Ptr{Int64},
                                                val::Ptr{Float128}, keep::Ptr{Ptr{Cvoid}},
                                                control::Ref{Mi20Control{Float128, Int64}},
                                                info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_finalize(::Type{Float32}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.mi20_finalize_s(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Mi20Control{Float32, Int32}},
                                       info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_finalize(::Type{Float64}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.mi20_finalize_d(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Mi20Control{Float64, Int32}},
                                       info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_finalize(::Type{Float128}, ::Type{Int32}, keep, control, info)
  @ccall libhsl_subset.mi20_finalize_q(keep::Ptr{Ptr{Cvoid}},
                                       control::Ref{Mi20Control{Float128, Int32}},
                                       info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_finalize(::Type{Float32}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.mi20_finalize_s_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Mi20Control{Float32, Int64}},
                                             info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_finalize(::Type{Float64}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.mi20_finalize_d_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Mi20Control{Float64, Int64}},
                                             info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_finalize(::Type{Float128}, ::Type{Int64}, keep, control, info)
  @ccall libhsl_subset_64.mi20_finalize_q_64(keep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Mi20Control{Float128, Int64}},
                                             info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_precondition(::Type{Float32}, ::Type{Int32}, rhs, solution, keep, control, info)
  @ccall libhsl_subset.mi20_precondition_s(rhs::Ptr{Float32}, solution::Ptr{Float32},
                                           keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Mi20Control{Float32, Int32}},
                                           info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_precondition(::Type{Float64}, ::Type{Int32}, rhs, solution, keep, control, info)
  @ccall libhsl_subset.mi20_precondition_d(rhs::Ptr{Float64}, solution::Ptr{Float64},
                                           keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Mi20Control{Float64, Int32}},
                                           info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_precondition(::Type{Float128}, ::Type{Int32}, rhs, solution, keep, control, info)
  @ccall libhsl_subset.mi20_precondition_q(rhs::Ptr{Float128}, solution::Ptr{Float128},
                                           keep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Mi20Control{Float128, Int32}},
                                           info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_precondition(::Type{Float32}, ::Type{Int64}, rhs, solution, keep, control, info)
  @ccall libhsl_subset_64.mi20_precondition_s_64(rhs::Ptr{Float32}, solution::Ptr{Float32},
                                                 keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Mi20Control{Float32, Int64}},
                                                 info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_precondition(::Type{Float64}, ::Type{Int64}, rhs, solution, keep, control, info)
  @ccall libhsl_subset_64.mi20_precondition_d_64(rhs::Ptr{Float64}, solution::Ptr{Float64},
                                                 keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Mi20Control{Float64, Int64}},
                                                 info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_precondition(::Type{Float128}, ::Type{Int64}, rhs, solution, keep, control, info)
  @ccall libhsl_subset_64.mi20_precondition_q_64(rhs::Ptr{Float128}, solution::Ptr{Float128},
                                                 keep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Mi20Control{Float128, Int64}},
                                                 info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end

function mi20_solve(::Type{Float32}, ::Type{Int32}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset.mi20_solve_s(rhs::Ptr{Float32}, solution::Ptr{Float32},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float32, Int32}},
                                    solve_control::Ref{Mi20SolveControl{Float32, Int32}},
                                    info::Ref{Mi20Info{Float32, Int32}})::Cvoid
end

function mi20_solve(::Type{Float64}, ::Type{Int32}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset.mi20_solve_d(rhs::Ptr{Float64}, solution::Ptr{Float64},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float64, Int32}},
                                    solve_control::Ref{Mi20SolveControl{Float64, Int32}},
                                    info::Ref{Mi20Info{Float64, Int32}})::Cvoid
end

function mi20_solve(::Type{Float128}, ::Type{Int32}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset.mi20_solve_q(rhs::Ptr{Float128}, solution::Ptr{Float128},
                                    keep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Mi20Control{Float128, Int32}},
                                    solve_control::Ref{Mi20SolveControl{Float128, Int32}},
                                    info::Ref{Mi20Info{Float128, Int32}})::Cvoid
end

function mi20_solve(::Type{Float32}, ::Type{Int64}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset_64.mi20_solve_s_64(rhs::Ptr{Float32}, solution::Ptr{Float32},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float32, Int64}},
                                          solve_control::Ref{Mi20SolveControl{Float32, Int64}},
                                          info::Ref{Mi20Info{Float32, Int64}})::Cvoid
end

function mi20_solve(::Type{Float64}, ::Type{Int64}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset_64.mi20_solve_d_64(rhs::Ptr{Float64}, solution::Ptr{Float64},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float64, Int64}},
                                          solve_control::Ref{Mi20SolveControl{Float64, Int64}},
                                          info::Ref{Mi20Info{Float64, Int64}})::Cvoid
end

function mi20_solve(::Type{Float128}, ::Type{Int64}, rhs, solution, keep, control, solve_control,
                    info)
  @ccall libhsl_subset_64.mi20_solve_q_64(rhs::Ptr{Float128}, solution::Ptr{Float128},
                                          keep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Mi20Control{Float128, Int64}},
                                          solve_control::Ref{Mi20SolveControl{Float128, Int64}},
                                          info::Ref{Mi20Info{Float128, Int64}})::Cvoid
end
