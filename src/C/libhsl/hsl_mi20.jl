mutable struct mi20_control{T}
  f_arrays::Cint
  aggressive::Cint
  c_fail::Cint
  max_levels::Cint
  max_points::Cint
  reduction::T
  st_method::Cint
  st_parameter::T
  testing::Cint
  trunc_parameter::T
  coarse_solver::Cint
  coarse_solver_its::Cint
  damping::T
  err_tol::T
  levels::Cint
  pre_smoothing::Cint
  smoother::Cint
  post_smoothing::Cint
  v_iterations::Cint
  print_level::Cint
  print::Cint
  error::Cint
  one_pass_coarsen::Cint

  mi20_control{T}() where {T} = new()

  function mi20_control{T}(f_arrays, aggressive, c_fail, max_levels, max_points, reduction,
                           st_method, st_parameter, testing, trunc_parameter, coarse_solver,
                           coarse_solver_its, damping, err_tol, levels, pre_smoothing, smoother,
                           post_smoothing, v_iterations, print_level, print, error,
                           one_pass_coarsen) where {T}
    return new(f_arrays, aggressive, c_fail, max_levels, max_points, reduction, st_method,
               st_parameter, testing, trunc_parameter, coarse_solver, coarse_solver_its, damping,
               err_tol, levels, pre_smoothing, smoother, post_smoothing, v_iterations, print_level,
               print, error, one_pass_coarsen)
  end
end

function mi20_default_control_s(control)
  @ccall libhsl.mi20_default_control_s(control::Ref{mi20_control{Float32}})::Cvoid
end

mutable struct mi20_solve_control{T}
  abs_tol::T
  breakdown_tol::T
  gmres_restart::Cint
  init_guess::Bool
  krylov_solver::Cint
  max_its::Cint
  preconditioner_side::Cint
  rel_tol::T

  mi20_solve_control{T}() where {T} = new()

  function mi20_solve_control{T}(abs_tol, breakdown_tol, gmres_restart, init_guess, krylov_solver,
                                 max_its, preconditioner_side, rel_tol) where {T}
    return new(abs_tol, breakdown_tol, gmres_restart, init_guess, krylov_solver, max_its,
               preconditioner_side, rel_tol)
  end
end

function mi20_default_solve_control_s(solve_control)
  @ccall libhsl.mi20_default_solve_control_s(solve_control::Ref{mi20_solve_control{Float32}})::Cvoid
end

mutable struct mi20_info{T}
  flag::Cint
  clevels::Cint
  cpoints::Cint
  cnnz::Cint
  stat::Cint
  getrf_info::Cint
  iterations::Cint
  residual::T

  mi20_info{T}() where {T} = new()

  function mi20_info{T}(flag, clevels, cpoints, cnnz, stat, getrf_info, iterations,
                        residual) where {T}
    return new(flag, clevels, cpoints, cnnz, stat, getrf_info, iterations, residual)
  end
end

function mi20_setup_s(n, ptr, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_s(n::Cint, ptr::Ptr{Cint}, col::Ptr{Cint}, val::Ptr{Float32},
                             keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                             info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_setup_csr_s(n, ptr, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_csr_s(n::Cint, ptr::Ptr{Cint}, col::Ptr{Cint}, val::Ptr{Float32},
                                 keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                                 info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_setup_csc_s(n, ptr, row, val, keep, control, info)
  @ccall libhsl.mi20_setup_csc_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float32},
                                 keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                                 info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_setup_coord_s(n, ne, row, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_coord_s(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                   val::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{mi20_control{Float32}},
                                   info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_finalize_s(keep, control, info)
  @ccall libhsl.mi20_finalize_s(keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                                info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_precondition_s(rhs, solution, keep, control, info)
  @ccall libhsl.mi20_precondition_s(rhs::Ptr{Float32}, solution::Ptr{Float32},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                                    info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_solve_s(rhs, solution, keep, control, solve_control, info)
  @ccall libhsl.mi20_solve_s(rhs::Ptr{Float32}, solution::Ptr{Float32},
                             keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float32}},
                             solve_control::Ref{mi20_solve_control{Float32}},
                             info::Ref{mi20_info{Float32}})::Cvoid
end

function mi20_default_control_d(control)
  @ccall libhsl.mi20_default_control_d(control::Ref{mi20_control{Float64}})::Cvoid
end

function mi20_default_solve_control_d(solve_control)
  @ccall libhsl.mi20_default_solve_control_d(solve_control::Ref{mi20_solve_control{Float64}})::Cvoid
end

function mi20_setup_d(n, ptr, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_d(n::Cint, ptr::Ptr{Cint}, col::Ptr{Cint}, val::Ptr{Float64},
                             keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                             info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_setup_csr_d(n, ptr, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_csr_d(n::Cint, ptr::Ptr{Cint}, col::Ptr{Cint}, val::Ptr{Float64},
                                 keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                                 info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_setup_csc_d(n, ptr, row, val, keep, control, info)
  @ccall libhsl.mi20_setup_csc_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float64},
                                 keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                                 info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_setup_coord_d(n, ne, row, col, val, keep, control, info)
  @ccall libhsl.mi20_setup_coord_d(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                   val::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{mi20_control{Float64}},
                                   info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_finalize_d(keep, control, info)
  @ccall libhsl.mi20_finalize_d(keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                                info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_precondition_d(rhs, solution, keep, control, info)
  @ccall libhsl.mi20_precondition_d(rhs::Ptr{Float64}, solution::Ptr{Float64},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                                    info::Ref{mi20_info{Float64}})::Cvoid
end

function mi20_solve_d(rhs, solution, keep, control, solve_control, info)
  @ccall libhsl.mi20_solve_d(rhs::Ptr{Float64}, solution::Ptr{Float64},
                             keep::Ptr{Ptr{Cvoid}}, control::Ref{mi20_control{Float64}},
                             solve_control::Ref{mi20_solve_control{Float64}},
                             info::Ref{mi20_info{Float64}})::Cvoid
end
