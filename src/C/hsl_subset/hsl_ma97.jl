mutable struct Ma97Control{T, INT}
  f_arrays::INT
  action::INT
  nemin::INT
  multiplier::T
  ordering::INT
  print_level::INT
  scaling::INT
  small::T
  u::T
  unit_diagnostics::INT
  unit_error::INT
  unit_warning::INT
  factor_min::Int64
  solve_blas3::INT
  solve_min::Int64
  solve_mf::INT
  consist_tol::T
  ispare::NTuple{5, INT}
  rspare::NTuple{10, T}
end

mutable struct Ma97Info{T, INT}
  flag::INT
  flag68::INT
  flag77::INT
  matrix_dup::INT
  matrix_rank::INT
  matrix_outrange::INT
  matrix_missing_diag::INT
  maxdepth::INT
  maxfront::INT
  num_delay::INT
  num_factor::Int64
  num_flops::Int64
  num_neg::INT
  num_sup::INT
  num_two::INT
  ordering::INT
  stat::INT
  maxsupernode::INT
  ispare::NTuple{4, INT}
  rspare::NTuple{10, T}
end

function ma97_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma97_default_control_s(control::Ref{Ma97Control{Float32, Int32}})::Cvoid
end

function ma97_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma97_default_control_d(control::Ref{Ma97Control{Float64, Int32}})::Cvoid
end

function ma97_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma97_default_control_q(control::Ref{Ma97Control{Float128, Int32}})::Cvoid
end

function ma97_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma97_default_control_s_64(control::Ref{Ma97Control{Float32, Int64}})::Cvoid
end

function ma97_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma97_default_control_d_64(control::Ref{Ma97Control{Float64, Int64}})::Cvoid
end

function ma97_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma97_default_control_q_64(control::Ref{Ma97Control{Float128, Int64}})::Cvoid
end

function ma97_analyse(::Type{Float32}, ::Type{Int32}, check, n, ptr, row, val, akeep, control, info,
                      order)
  @ccall libhsl_subset.ma97_analyse_s(check::Cint, n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                      val::Ptr{Float32},
                                      akeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma97Control{Float32, Int32}},
                                      info::Ref{Ma97Info{Float32, Int32}}, order::Ptr{Int32})::Cvoid
end

function ma97_analyse(::Type{Float64}, ::Type{Int32}, check, n, ptr, row, val, akeep, control, info,
                      order)
  @ccall libhsl_subset.ma97_analyse_d(check::Cint, n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                      val::Ptr{Float64},
                                      akeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma97Control{Float64, Int32}},
                                      info::Ref{Ma97Info{Float64, Int32}}, order::Ptr{Int32})::Cvoid
end

function ma97_analyse(::Type{Float128}, ::Type{Int32}, check, n, ptr, row, val, akeep, control,
                      info, order)
  @ccall libhsl_subset.ma97_analyse_q(check::Cint, n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                      val::Ptr{Float128},
                                      akeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma97Control{Float128, Int32}},
                                      info::Ref{Ma97Info{Float128, Int32}},
                                      order::Ptr{Int32})::Cvoid
end

function ma97_analyse(::Type{Float32}, ::Type{Int64}, check, n, ptr, row, val, akeep, control, info,
                      order)
  @ccall libhsl_subset_64.ma97_analyse_s_64(check::Cint, n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            val::Ptr{Float32},
                                            akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float32, Int64}},
                                            info::Ref{Ma97Info{Float32, Int64}},
                                            order::Ptr{Int64})::Cvoid
end

function ma97_analyse(::Type{Float64}, ::Type{Int64}, check, n, ptr, row, val, akeep, control, info,
                      order)
  @ccall libhsl_subset_64.ma97_analyse_d_64(check::Cint, n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            val::Ptr{Float64},
                                            akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float64, Int64}},
                                            info::Ref{Ma97Info{Float64, Int64}},
                                            order::Ptr{Int64})::Cvoid
end

function ma97_analyse(::Type{Float128}, ::Type{Int64}, check, n, ptr, row, val, akeep, control,
                      info, order)
  @ccall libhsl_subset_64.ma97_analyse_q_64(check::Cint, n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                            val::Ptr{Float128},
                                            akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float128, Int64}},
                                            info::Ref{Ma97Info{Float128, Int64}},
                                            order::Ptr{Int64})::Cvoid
end

function ma97_analyse_coord(::Type{Float32}, ::Type{Int32}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset.ma97_analyse_coord_s(n::Cint, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                            val::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float32, Int32}},
                                            info::Ref{Ma97Info{Float32, Int32}},
                                            order::Ptr{Int32})::Cvoid
end

function ma97_analyse_coord(::Type{Float64}, ::Type{Int32}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset.ma97_analyse_coord_d(n::Cint, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                            val::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float64, Int32}},
                                            info::Ref{Ma97Info{Float64, Int32}},
                                            order::Ptr{Int32})::Cvoid
end

function ma97_analyse_coord(::Type{Float128}, ::Type{Int32}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset.ma97_analyse_coord_q(n::Cint, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                            val::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float128, Int32}},
                                            info::Ref{Ma97Info{Float128, Int32}},
                                            order::Ptr{Int32})::Cvoid
end

function ma97_analyse_coord(::Type{Float32}, ::Type{Int64}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset_64.ma97_analyse_coord_s_64(n::Cint, ne::Int64, row::Ptr{Int64},
                                                  col::Ptr{Int64},
                                                  val::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float32, Int64}},
                                                  info::Ref{Ma97Info{Float32, Int64}},
                                                  order::Ptr{Int64})::Cvoid
end

function ma97_analyse_coord(::Type{Float64}, ::Type{Int64}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset_64.ma97_analyse_coord_d_64(n::Cint, ne::Int64, row::Ptr{Int64},
                                                  col::Ptr{Int64},
                                                  val::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float64, Int64}},
                                                  info::Ref{Ma97Info{Float64, Int64}},
                                                  order::Ptr{Int64})::Cvoid
end

function ma97_analyse_coord(::Type{Float128}, ::Type{Int64}, n, ne, row, col, val, akeep, control,
                            info, order)
  @ccall libhsl_subset_64.ma97_analyse_coord_q_64(n::Cint, ne::Int64, row::Ptr{Int64},
                                                  col::Ptr{Int64},
                                                  val::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float128, Int64}},
                                                  info::Ref{Ma97Info{Float128, Int64}},
                                                  order::Ptr{Int64})::Cvoid
end

function ma97_factor(::Type{Float32}, ::Type{Int32}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset.ma97_factor_s(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                     val::Ptr{Float32},
                                     akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma97Control{Float32, Int32}},
                                     info::Ref{Ma97Info{Float32, Int32}},
                                     scale::Ptr{Float32})::Cvoid
end

function ma97_factor(::Type{Float64}, ::Type{Int32}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset.ma97_factor_d(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                     val::Ptr{Float64},
                                     akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma97Control{Float64, Int32}},
                                     info::Ref{Ma97Info{Float64, Int32}},
                                     scale::Ptr{Float64})::Cvoid
end

function ma97_factor(::Type{Float128}, ::Type{Int32}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset.ma97_factor_q(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                     val::Ptr{Float128},
                                     akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{Ma97Control{Float128, Int32}},
                                     info::Ref{Ma97Info{Float128, Int32}},
                                     scale::Ptr{Float128})::Cvoid
end

function ma97_factor(::Type{Float32}, ::Type{Int64}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset_64.ma97_factor_s_64(matrix_type::Cint, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float32},
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float32, Int64}},
                                           info::Ref{Ma97Info{Float32, Int64}},
                                           scale::Ptr{Float32})::Cvoid
end

function ma97_factor(::Type{Float64}, ::Type{Int64}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset_64.ma97_factor_d_64(matrix_type::Cint, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float64},
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float64, Int64}},
                                           info::Ref{Ma97Info{Float64, Int64}},
                                           scale::Ptr{Float64})::Cvoid
end

function ma97_factor(::Type{Float128}, ::Type{Int64}, matrix_type, ptr, row, val, akeep, fkeep,
                     control, info, scale)
  @ccall libhsl_subset_64.ma97_factor_q_64(matrix_type::Cint, ptr::Ptr{Int64}, row::Ptr{Int64},
                                           val::Ptr{Float128},
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float128, Int64}},
                                           info::Ref{Ma97Info{Float128, Int64}},
                                           scale::Ptr{Float128})::Cvoid
end

function ma97_factor_solve(::Type{Float32}, ::Type{Int32}, matrix_type, ptr, row, val, nrhs, x, ldx,
                           akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset.ma97_factor_solve_s(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float32}, nrhs::Int32, x::Ptr{Float32},
                                           ldx::Int32,
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float32, Int32}},
                                           info::Ref{Ma97Info{Float32, Int32}},
                                           scale::Ptr{Float32})::Cvoid
end

function ma97_factor_solve(::Type{Float64}, ::Type{Int32}, matrix_type, ptr, row, val, nrhs, x, ldx,
                           akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset.ma97_factor_solve_d(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float64}, nrhs::Int32, x::Ptr{Float64},
                                           ldx::Int32,
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float64, Int32}},
                                           info::Ref{Ma97Info{Float64, Int32}},
                                           scale::Ptr{Float64})::Cvoid
end

function ma97_factor_solve(::Type{Float128}, ::Type{Int32}, matrix_type, ptr, row, val, nrhs, x,
                           ldx, akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset.ma97_factor_solve_q(matrix_type::Cint, ptr::Ptr{Int32}, row::Ptr{Int32},
                                           val::Ptr{Float128}, nrhs::Int32, x::Ptr{Float128},
                                           ldx::Int32,
                                           akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                           control::Ref{Ma97Control{Float128, Int32}},
                                           info::Ref{Ma97Info{Float128, Int32}},
                                           scale::Ptr{Float128})::Cvoid
end

function ma97_factor_solve(::Type{Float32}, ::Type{Int64}, matrix_type, ptr, row, val, nrhs, x, ldx,
                           akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset_64.ma97_factor_solve_s_64(matrix_type::Cint, ptr::Ptr{Int64},
                                                 row::Ptr{Int64},
                                                 val::Ptr{Float32}, nrhs::Int64, x::Ptr{Float32},
                                                 ldx::Int64,
                                                 akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma97Control{Float32, Int64}},
                                                 info::Ref{Ma97Info{Float32, Int64}},
                                                 scale::Ptr{Float32})::Cvoid
end

function ma97_factor_solve(::Type{Float64}, ::Type{Int64}, matrix_type, ptr, row, val, nrhs, x, ldx,
                           akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset_64.ma97_factor_solve_d_64(matrix_type::Cint, ptr::Ptr{Int64},
                                                 row::Ptr{Int64},
                                                 val::Ptr{Float64}, nrhs::Int64, x::Ptr{Float64},
                                                 ldx::Int64,
                                                 akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma97Control{Float64, Int64}},
                                                 info::Ref{Ma97Info{Float64, Int64}},
                                                 scale::Ptr{Float64})::Cvoid
end

function ma97_factor_solve(::Type{Float128}, ::Type{Int64}, matrix_type, ptr, row, val, nrhs, x,
                           ldx, akeep, fkeep, control, info,
                           scale)
  @ccall libhsl_subset_64.ma97_factor_solve_q_64(matrix_type::Cint, ptr::Ptr{Int64},
                                                 row::Ptr{Int64},
                                                 val::Ptr{Float128}, nrhs::Int64, x::Ptr{Float128},
                                                 ldx::Int64,
                                                 akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                 control::Ref{Ma97Control{Float128, Int64}},
                                                 info::Ref{Ma97Info{Float128, Int64}},
                                                 scale::Ptr{Float128})::Cvoid
end

function ma97_solve(::Type{Float32}, ::Type{Int32}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_solve_s(job::Cint, nrhs::Int32, x::Ptr{Float32}, ldx::Int32,
                                    akeep::Ptr{Ptr{Cvoid}},
                                    fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float32, Int32}},
                                    info::Ref{Ma97Info{Float32, Int32}})::Cvoid
end

function ma97_solve(::Type{Float64}, ::Type{Int32}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_solve_d(job::Cint, nrhs::Int32, x::Ptr{Float64}, ldx::Int32,
                                    akeep::Ptr{Ptr{Cvoid}},
                                    fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float64, Int32}},
                                    info::Ref{Ma97Info{Float64, Int32}})::Cvoid
end

function ma97_solve(::Type{Float128}, ::Type{Int32}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_solve_q(job::Cint, nrhs::Int32, x::Ptr{Float128}, ldx::Int32,
                                    akeep::Ptr{Ptr{Cvoid}},
                                    fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float128, Int32}},
                                    info::Ref{Ma97Info{Float128, Int32}})::Cvoid
end

function ma97_solve(::Type{Float32}, ::Type{Int64}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_solve_s_64(job::Cint, nrhs::Int64, x::Ptr{Float32}, ldx::Int64,
                                          akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float32, Int64}},
                                          info::Ref{Ma97Info{Float32, Int64}})::Cvoid
end

function ma97_solve(::Type{Float64}, ::Type{Int64}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_solve_d_64(job::Cint, nrhs::Int64, x::Ptr{Float64}, ldx::Int64,
                                          akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float64, Int64}},
                                          info::Ref{Ma97Info{Float64, Int64}})::Cvoid
end

function ma97_solve(::Type{Float128}, ::Type{Int64}, job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_solve_q_64(job::Cint, nrhs::Int64, x::Ptr{Float128}, ldx::Int64,
                                          akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float128, Int64}},
                                          info::Ref{Ma97Info{Float128, Int64}})::Cvoid
end

function ma97_free_akeep(::Type{Float32}, ::Type{Int32}, akeep)
  @ccall libhsl_subset.ma97_free_akeep_s(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_akeep(::Type{Float64}, ::Type{Int32}, akeep)
  @ccall libhsl_subset.ma97_free_akeep_d(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_akeep(::Type{Float128}, ::Type{Int32}, akeep)
  @ccall libhsl_subset.ma97_free_akeep_q(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_akeep(::Type{Float32}, ::Type{Int64}, akeep)
  @ccall libhsl_subset_64.ma97_free_akeep_s_64(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_akeep(::Type{Float64}, ::Type{Int64}, akeep)
  @ccall libhsl_subset_64.ma97_free_akeep_d_64(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_akeep(::Type{Float128}, ::Type{Int64}, akeep)
  @ccall libhsl_subset_64.ma97_free_akeep_q_64(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float32}, ::Type{Int32}, fkeep)
  @ccall libhsl_subset.ma97_free_fkeep_s(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float64}, ::Type{Int32}, fkeep)
  @ccall libhsl_subset.ma97_free_fkeep_d(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float128}, ::Type{Int32}, fkeep)
  @ccall libhsl_subset.ma97_free_fkeep_q(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float32}, ::Type{Int64}, fkeep)
  @ccall libhsl_subset_64.ma97_free_fkeep_s_64(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float64}, ::Type{Int64}, fkeep)
  @ccall libhsl_subset_64.ma97_free_fkeep_d_64(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep(::Type{Float128}, ::Type{Int64}, fkeep)
  @ccall libhsl_subset_64.ma97_free_fkeep_q_64(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float32}, ::Type{Int32}, akeep, fkeep)
  @ccall libhsl_subset.ma97_finalise_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float64}, ::Type{Int32}, akeep, fkeep)
  @ccall libhsl_subset.ma97_finalise_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float128}, ::Type{Int32}, akeep, fkeep)
  @ccall libhsl_subset.ma97_finalise_q(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float32}, ::Type{Int64}, akeep, fkeep)
  @ccall libhsl_subset_64.ma97_finalise_s_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float64}, ::Type{Int64}, akeep, fkeep)
  @ccall libhsl_subset_64.ma97_finalise_d_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise(::Type{Float128}, ::Type{Int64}, akeep, fkeep)
  @ccall libhsl_subset_64.ma97_finalise_q_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_enquire_posdef(::Type{Float32}, ::Type{Int32}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset.ma97_enquire_posdef_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float32, Int32}},
                                             info::Ref{Ma97Info{Float32, Int32}},
                                             d::Ptr{Float32})::Cvoid
end

function ma97_enquire_posdef(::Type{Float64}, ::Type{Int32}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset.ma97_enquire_posdef_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float64, Int32}},
                                             info::Ref{Ma97Info{Float64, Int32}},
                                             d::Ptr{Float64})::Cvoid
end

function ma97_enquire_posdef(::Type{Float128}, ::Type{Int32}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset.ma97_enquire_posdef_q(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float128, Int32}},
                                             info::Ref{Ma97Info{Float128, Int32}},
                                             d::Ptr{Float128})::Cvoid
end

function ma97_enquire_posdef(::Type{Float32}, ::Type{Int64}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset_64.ma97_enquire_posdef_s_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float32, Int64}},
                                                   info::Ref{Ma97Info{Float32, Int64}},
                                                   d::Ptr{Float32})::Cvoid
end

function ma97_enquire_posdef(::Type{Float64}, ::Type{Int64}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset_64.ma97_enquire_posdef_d_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float64, Int64}},
                                                   info::Ref{Ma97Info{Float64, Int64}},
                                                   d::Ptr{Float64})::Cvoid
end

function ma97_enquire_posdef(::Type{Float128}, ::Type{Int64}, akeep, fkeep, control, info, d)
  @ccall libhsl_subset_64.ma97_enquire_posdef_q_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float128, Int64}},
                                                   info::Ref{Ma97Info{Float128, Int64}},
                                                   d::Ptr{Float128})::Cvoid
end

function ma97_enquire_indef(::Type{Float32}, ::Type{Int32}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset.ma97_enquire_indef_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float32, Int32}},
                                            info::Ref{Ma97Info{Float32, Int32}},
                                            piv_order::Ptr{Int32}, d::Ptr{Float32})::Cvoid
end

function ma97_enquire_indef(::Type{Float64}, ::Type{Int32}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset.ma97_enquire_indef_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float64, Int32}},
                                            info::Ref{Ma97Info{Float64, Int32}},
                                            piv_order::Ptr{Int32}, d::Ptr{Float64})::Cvoid
end

function ma97_enquire_indef(::Type{Float128}, ::Type{Int32}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset.ma97_enquire_indef_q(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma97Control{Float128, Int32}},
                                            info::Ref{Ma97Info{Float128, Int32}},
                                            piv_order::Ptr{Int32}, d::Ptr{Float128})::Cvoid
end

function ma97_enquire_indef(::Type{Float32}, ::Type{Int64}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset_64.ma97_enquire_indef_s_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float32, Int64}},
                                                  info::Ref{Ma97Info{Float32, Int64}},
                                                  piv_order::Ptr{Int64}, d::Ptr{Float32})::Cvoid
end

function ma97_enquire_indef(::Type{Float64}, ::Type{Int64}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset_64.ma97_enquire_indef_d_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float64, Int64}},
                                                  info::Ref{Ma97Info{Float64, Int64}},
                                                  piv_order::Ptr{Int64}, d::Ptr{Float64})::Cvoid
end

function ma97_enquire_indef(::Type{Float128}, ::Type{Int64}, akeep, fkeep, control, info, piv_order,
                            d)
  @ccall libhsl_subset_64.ma97_enquire_indef_q_64(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma97Control{Float128, Int64}},
                                                  info::Ref{Ma97Info{Float128, Int64}},
                                                  piv_order::Ptr{Int64}, d::Ptr{Float128})::Cvoid
end

function ma97_alter(::Type{Float32}, ::Type{Int32}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_alter_s(d::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float32, Int32}},
                                    info::Ref{Ma97Info{Float32, Int32}})::Cvoid
end

function ma97_alter(::Type{Float64}, ::Type{Int32}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_alter_d(d::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float64, Int32}},
                                    info::Ref{Ma97Info{Float64, Int32}})::Cvoid
end

function ma97_alter(::Type{Float128}, ::Type{Int32}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_alter_q(d::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                    fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{Ma97Control{Float128, Int32}},
                                    info::Ref{Ma97Info{Float128, Int32}})::Cvoid
end

function ma97_alter(::Type{Float32}, ::Type{Int64}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_alter_s_64(d::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float32, Int64}},
                                          info::Ref{Ma97Info{Float32, Int64}})::Cvoid
end

function ma97_alter(::Type{Float64}, ::Type{Int64}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_alter_d_64(d::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float64, Int64}},
                                          info::Ref{Ma97Info{Float64, Int64}})::Cvoid
end

function ma97_alter(::Type{Float128}, ::Type{Int64}, d, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_alter_q_64(d::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                          fkeep::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma97Control{Float128, Int64}},
                                          info::Ref{Ma97Info{Float128, Int64}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float32}, ::Type{Int32}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset.ma97_solve_fredholm_s(nrhs::Cint, flag_out::Ptr{Int32}, x::Ptr{Float32},
                                             ldx::Int32,
                                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float32, Int32}},
                                             info::Ref{Ma97Info{Float32, Int32}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float64}, ::Type{Int32}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset.ma97_solve_fredholm_d(nrhs::Cint, flag_out::Ptr{Int32}, x::Ptr{Float64},
                                             ldx::Int32,
                                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float64, Int32}},
                                             info::Ref{Ma97Info{Float64, Int32}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float128}, ::Type{Int32}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset.ma97_solve_fredholm_q(nrhs::Cint, flag_out::Ptr{Int32}, x::Ptr{Float128},
                                             ldx::Int32,
                                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma97Control{Float128, Int32}},
                                             info::Ref{Ma97Info{Float128, Int32}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float32}, ::Type{Int64}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset_64.ma97_solve_fredholm_s_64(nrhs::Cint, flag_out::Ptr{Int64},
                                                   x::Ptr{Float32}, ldx::Int64,
                                                   akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float32, Int64}},
                                                   info::Ref{Ma97Info{Float32, Int64}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float64}, ::Type{Int64}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset_64.ma97_solve_fredholm_d_64(nrhs::Cint, flag_out::Ptr{Int64},
                                                   x::Ptr{Float64}, ldx::Int64,
                                                   akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float64, Int64}},
                                                   info::Ref{Ma97Info{Float64, Int64}})::Cvoid
end

function ma97_solve_fredholm(::Type{Float128}, ::Type{Int64}, nrhs, flag_out, x, ldx, akeep, fkeep,
                             control, info)
  @ccall libhsl_subset_64.ma97_solve_fredholm_q_64(nrhs::Cint, flag_out::Ptr{Int64},
                                                   x::Ptr{Float128}, ldx::Int64,
                                                   akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma97Control{Float128, Int64}},
                                                   info::Ref{Ma97Info{Float128, Int64}})::Cvoid
end

function ma97_lmultiply(::Type{Float32}, ::Type{Int32}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset.ma97_lmultiply_s(trans::Cint, k::Int32, x::Ptr{Float32}, ldx::Int32,
                                        y::Ptr{Float32},
                                        ldy::Int32, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma97Control{Float32, Int32}},
                                        info::Ref{Ma97Info{Float32, Int32}})::Cvoid
end

function ma97_lmultiply(::Type{Float64}, ::Type{Int32}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset.ma97_lmultiply_d(trans::Cint, k::Int32, x::Ptr{Float64}, ldx::Int32,
                                        y::Ptr{Float64},
                                        ldy::Int32, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma97Control{Float64, Int32}},
                                        info::Ref{Ma97Info{Float64, Int32}})::Cvoid
end

function ma97_lmultiply(::Type{Float128}, ::Type{Int32}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset.ma97_lmultiply_q(trans::Cint, k::Int32, x::Ptr{Float128}, ldx::Int32,
                                        y::Ptr{Float128},
                                        ldy::Int32, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma97Control{Float128, Int32}},
                                        info::Ref{Ma97Info{Float128, Int32}})::Cvoid
end

function ma97_lmultiply(::Type{Float32}, ::Type{Int64}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset_64.ma97_lmultiply_s_64(trans::Cint, k::Int64, x::Ptr{Float32}, ldx::Int64,
                                              y::Ptr{Float32},
                                              ldy::Int64, akeep::Ptr{Ptr{Cvoid}},
                                              fkeep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma97Control{Float32, Int64}},
                                              info::Ref{Ma97Info{Float32, Int64}})::Cvoid
end

function ma97_lmultiply(::Type{Float64}, ::Type{Int64}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset_64.ma97_lmultiply_d_64(trans::Cint, k::Int64, x::Ptr{Float64}, ldx::Int64,
                                              y::Ptr{Float64},
                                              ldy::Int64, akeep::Ptr{Ptr{Cvoid}},
                                              fkeep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma97Control{Float64, Int64}},
                                              info::Ref{Ma97Info{Float64, Int64}})::Cvoid
end

function ma97_lmultiply(::Type{Float128}, ::Type{Int64}, trans, k, x, ldx, y, ldy, akeep, fkeep,
                        control, info)
  @ccall libhsl_subset_64.ma97_lmultiply_q_64(trans::Cint, k::Int64, x::Ptr{Float128}, ldx::Int64,
                                              y::Ptr{Float128},
                                              ldy::Int64, akeep::Ptr{Ptr{Cvoid}},
                                              fkeep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma97Control{Float128, Int64}},
                                              info::Ref{Ma97Info{Float128, Int64}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float32}, ::Type{Int32}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_sparse_fwd_solve_s(nbi::Cint, bindex::Ptr{Int32}, b::Ptr{Float32},
                                               order::Ptr{Int32}, nxi::Ptr{Int32},
                                               xindex::Ptr{Int32},
                                               x::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                               fkeep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma97Control{Float32, Int32}},
                                               info::Ref{Ma97Info{Float32, Int32}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float64}, ::Type{Int32}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_sparse_fwd_solve_d(nbi::Cint, bindex::Ptr{Int32}, b::Ptr{Float64},
                                               order::Ptr{Int32}, nxi::Ptr{Int32},
                                               xindex::Ptr{Int32},
                                               x::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                               fkeep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma97Control{Float64, Int32}},
                                               info::Ref{Ma97Info{Float64, Int32}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float128}, ::Type{Int32}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset.ma97_sparse_fwd_solve_q(nbi::Cint, bindex::Ptr{Int32}, b::Ptr{Float128},
                                               order::Ptr{Int32}, nxi::Ptr{Int32},
                                               xindex::Ptr{Int32},
                                               x::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                               fkeep::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma97Control{Float128, Int32}},
                                               info::Ref{Ma97Info{Float128, Int32}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float32}, ::Type{Int64}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_sparse_fwd_solve_s_64(nbi::Cint, bindex::Ptr{Int64}, b::Ptr{Float32},
                                                     order::Ptr{Int64}, nxi::Ptr{Int64},
                                                     xindex::Ptr{Int64},
                                                     x::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                                     fkeep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma97Control{Float32, Int64}},
                                                     info::Ref{Ma97Info{Float32, Int64}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float64}, ::Type{Int64}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_sparse_fwd_solve_d_64(nbi::Cint, bindex::Ptr{Int64}, b::Ptr{Float64},
                                                     order::Ptr{Int64}, nxi::Ptr{Int64},
                                                     xindex::Ptr{Int64},
                                                     x::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                                     fkeep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma97Control{Float64, Int64}},
                                                     info::Ref{Ma97Info{Float64, Int64}})::Cvoid
end

function ma97_sparse_fwd_solve(::Type{Float128}, ::Type{Int64}, nbi, bindex, b, order, nxi, xindex,
                               x, akeep, fkeep, control, info)
  @ccall libhsl_subset_64.ma97_sparse_fwd_solve_q_64(nbi::Cint, bindex::Ptr{Int64},
                                                     b::Ptr{Float128},
                                                     order::Ptr{Int64}, nxi::Ptr{Int64},
                                                     xindex::Ptr{Int64},
                                                     x::Ptr{Float128}, akeep::Ptr{Ptr{Cvoid}},
                                                     fkeep::Ptr{Ptr{Cvoid}},
                                                     control::Ref{Ma97Control{Float128, Int64}},
                                                     info::Ref{Ma97Info{Float128, Int64}})::Cvoid
end
