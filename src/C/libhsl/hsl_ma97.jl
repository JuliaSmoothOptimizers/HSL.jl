mutable struct ma97_control{T}
  f_arrays::Cint
  action::Cint
  nemin::Cint
  multiplier::T
  ordering::Cint
  print_level::Cint
  scaling::Cint
  small::T
  u::T
  unit_diagnostics::Cint
  unit_error::Cint
  unit_warning::Cint
  factor_min::Clong
  solve_blas3::Cint
  solve_min::Clong
  solve_mf::Cint
  consist_tol::T
  ispare::NTuple{5, Cint}
  rspare::NTuple{10, T}

  ma97_control{T}() where {T} = new{T}()

  function ma97_control{T}(f_arrays, action, nemin, multiplier, ordering, print_level, scaling,
                           small, u, unit_diagnostics, unit_error, unit_warning, factor_min,
                           solve_blas3, solve_min, solve_mf, consist_tol, ispare, rspare) where {T}
    return new{T}(f_arrays, action, nemin, multiplier, ordering, print_level, scaling, small, u,
                  unit_diagnostics, unit_error, unit_warning, factor_min, solve_blas3, solve_min,
                  solve_mf, consist_tol, ispare, rspare)
  end
end

function ma97_default_control_s(control)
  @ccall libhsl.ma97_default_control_s(control::Ref{ma97_control{Float32}})::Cvoid
end

mutable struct ma97_info{T}
  flag::Cint
  flag68::Cint
  flag77::Cint
  matrix_dup::Cint
  matrix_rank::Cint
  matrix_outrange::Cint
  matrix_missing_diag::Cint
  maxdepth::Cint
  maxfront::Cint
  num_delay::Cint
  num_factor::Clong
  num_flops::Clong
  num_neg::Cint
  num_sup::Cint
  num_two::Cint
  ordering::Cint
  stat::Cint
  maxsupernode::Cint
  ispare::NTuple{4, Cint}
  rspare::NTuple{10, T}

  ma97_info{T}() where {T} = new{T}()

  function ma97_info{T}(flag, flag68, flag77, matrix_dup, matrix_rank, matrix_outrange,
                        matrix_missing_diag, maxdepth, maxfront, num_delay, num_factor, num_flops,
                        num_neg, num_sup, num_two, ordering, stat, maxsupernode, ispare,
                        rspare) where {T}
    return new{T}(flag, flag68, flag77, matrix_dup, matrix_rank, matrix_outrange,
                  matrix_missing_diag, maxdepth, maxfront, num_delay, num_factor, num_flops,
                  num_neg, num_sup, num_two, ordering, stat, maxsupernode, ispare, rspare)
  end
end

function ma97_analyse_s(check, n, ptr, row, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_s(check::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                               val::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma97_control{Float32}}, info::Ref{ma97_info{Float32}},
                               order::Ptr{Cint})::Cvoid
end

function ma97_analyse_coord_s(n, ne, row, col, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_coord_s(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                     val::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float32}},
                                     info::Ref{ma97_info{Float32}},
                                     order::Ptr{Cint})::Cvoid
end

function ma97_factor_s(matrix_type, ptr, row, val, akeep, fkeep, control, info, scale)
  @ccall libhsl.ma97_factor_s(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                              fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                              info::Ref{ma97_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma97_factor_solve_s(matrix_type, ptr, row, val, nrhs, x, ldx, akeep, fkeep, control, info,
                             scale)
  @ccall libhsl.ma97_factor_solve_s(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float32}, nrhs::Cint, x::Ptr{Float32},
                                    ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{ma97_control{Float32}},
                                    info::Ref{ma97_info{Float32}},
                                    scale::Ptr{Float32})::Cvoid
end

function ma97_solve_s(job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_s(job::Cint, nrhs::Cint, x::Ptr{Float32}, ldx::Cint,
                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float32}},
                             info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_free_akeep_s(akeep)
  @ccall libhsl.ma97_free_akeep_s(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep_s(fkeep)
  @ccall libhsl.ma97_free_fkeep_s(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise_s(akeep, fkeep)
  @ccall libhsl.ma97_finalise_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_enquire_posdef_s(akeep, fkeep, control, info, d)
  @ccall libhsl.ma97_enquire_posdef_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float32}},
                                      info::Ref{ma97_info{Float32}},
                                      d::Ptr{Float32})::Cvoid
end

function ma97_enquire_indef_s(akeep, fkeep, control, info, piv_order, d)
  @ccall libhsl.ma97_enquire_indef_s(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float32}},
                                     info::Ref{ma97_info{Float32}},
                                     piv_order::Ptr{Cint}, d::Ptr{Float32})::Cvoid
end

function ma97_alter_s(d, akeep, fkeep, control, info)
  @ccall libhsl.ma97_alter_s(d::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float32}},
                             info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_solve_fredholm_s(nrhs, flag_out, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_fredholm_s(nrhs::Cint, flag_out::Ptr{Cint}, x::Ptr{Float32},
                                      ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float32}},
                                      info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_lmultiply_s(trans, k, x, ldx, y, ldy, akeep, fkeep, control, info)
  @ccall libhsl.ma97_lmultiply_s(trans::Cint, k::Cint, x::Ptr{Float32}, ldx::Cint,
                                 y::Ptr{Float32}, ldy::Cint, akeep::Ptr{Ptr{Cvoid}},
                                 fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                                 info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_sparse_fwd_solve_s(nbi, bindex, b, order, nxi, xindex, x, akeep, fkeep, control, info)
  @ccall libhsl.ma97_sparse_fwd_solve_s(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{Float32},
                                        order::Ptr{Cint}, nxi::Ptr{Cint}, xindex::Ptr{Cint},
                                        x::Ptr{Float32}, akeep::Ptr{Ptr{Cvoid}},
                                        fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                                        info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_default_control_d(control)
  @ccall libhsl.ma97_default_control_d(control::Ref{ma97_control{Float64}})::Cvoid
end

function ma97_analyse_d(check, n, ptr, row, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_d(check::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                               val::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma97_control{Float64}}, info::Ref{ma97_info{Float64}},
                               order::Ptr{Cint})::Cvoid
end

function ma97_analyse_coord_d(n, ne, row, col, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_coord_d(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                     val::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float64}},
                                     info::Ref{ma97_info{Float64}},
                                     order::Ptr{Cint})::Cvoid
end

function ma97_factor_d(matrix_type, ptr, row, val, akeep, fkeep, control, info, scale)
  @ccall libhsl.ma97_factor_d(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                              fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                              info::Ref{ma97_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma97_factor_solve_d(matrix_type, ptr, row, val, nrhs, x, ldx, akeep, fkeep, control, info,
                             scale)
  @ccall libhsl.ma97_factor_solve_d(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{Float64}, nrhs::Cint, x::Ptr{Float64},
                                    ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{ma97_control{Float64}},
                                    info::Ref{ma97_info{Float64}},
                                    scale::Ptr{Float64})::Cvoid
end

function ma97_solve_d(job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_d(job::Cint, nrhs::Cint, x::Ptr{Float64}, ldx::Cint,
                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float64}},
                             info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_free_akeep_d(akeep)
  @ccall libhsl.ma97_free_akeep_d(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep_d(fkeep)
  @ccall libhsl.ma97_free_fkeep_d(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise_d(akeep, fkeep)
  @ccall libhsl.ma97_finalise_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_enquire_posdef_d(akeep, fkeep, control, info, d)
  @ccall libhsl.ma97_enquire_posdef_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float64}},
                                      info::Ref{ma97_info{Float64}},
                                      d::Ptr{Float64})::Cvoid
end

function ma97_enquire_indef_d(akeep, fkeep, control, info, piv_order, d)
  @ccall libhsl.ma97_enquire_indef_d(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float64}},
                                     info::Ref{ma97_info{Float64}},
                                     piv_order::Ptr{Cint}, d::Ptr{Float64})::Cvoid
end

function ma97_alter_d(d, akeep, fkeep, control, info)
  @ccall libhsl.ma97_alter_d(d::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float64}},
                             info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_solve_fredholm_d(nrhs, flag_out, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_fredholm_d(nrhs::Cint, flag_out::Ptr{Cint}, x::Ptr{Float64},
                                      ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float64}},
                                      info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_lmultiply_d(trans, k, x, ldx, y, ldy, akeep, fkeep, control, info)
  @ccall libhsl.ma97_lmultiply_d(trans::Cint, k::Cint, x::Ptr{Float64}, ldx::Cint,
                                 y::Ptr{Float64}, ldy::Cint, akeep::Ptr{Ptr{Cvoid}},
                                 fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                                 info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_sparse_fwd_solve_d(nbi, bindex, b, order, nxi, xindex, x, akeep, fkeep, control, info)
  @ccall libhsl.ma97_sparse_fwd_solve_d(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{Float64},
                                        order::Ptr{Cint}, nxi::Ptr{Cint}, xindex::Ptr{Cint},
                                        x::Ptr{Float64}, akeep::Ptr{Ptr{Cvoid}},
                                        fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                                        info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_default_control_c(control)
  @ccall libhsl.ma97_default_control_c(control::Ref{ma97_control{Float32}})::Cvoid
end

function ma97_analyse_c(check, n, ptr, row, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_c(check::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                               val::Ptr{ComplexF32}, akeep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma97_control{Float32}}, info::Ref{ma97_info{Float32}},
                               order::Ptr{Cint})::Cvoid
end

function ma97_analyse_coord_c(n, ne, row, col, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_coord_c(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                     val::Ptr{ComplexF32}, akeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float32}},
                                     info::Ref{ma97_info{Float32}},
                                     order::Ptr{Cint})::Cvoid
end

function ma97_factor_c(matrix_type, ptr, row, val, akeep, fkeep, control, info, scale)
  @ccall libhsl.ma97_factor_c(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{ComplexF32}, akeep::Ptr{Ptr{Cvoid}},
                              fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                              info::Ref{ma97_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma97_factor_solve_c(matrix_type, ptr, row, val, nrhs, x, ldx, akeep, fkeep, control, info,
                             scale)
  @ccall libhsl.ma97_factor_solve_c(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF32}, nrhs::Cint, x::Ptr{ComplexF32},
                                    ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{ma97_control{Float32}},
                                    info::Ref{ma97_info{Float32}},
                                    scale::Ptr{Float32})::Cvoid
end

function ma97_solve_c(job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_c(job::Cint, nrhs::Cint, x::Ptr{ComplexF32}, ldx::Cint,
                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float32}},
                             info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_free_akeep_c(akeep)
  @ccall libhsl.ma97_free_akeep_c(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep_c(fkeep)
  @ccall libhsl.ma97_free_fkeep_c(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise_c(akeep, fkeep)
  @ccall libhsl.ma97_finalise_c(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_enquire_posdef_c(akeep, fkeep, control, info, d)
  @ccall libhsl.ma97_enquire_posdef_c(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float32}},
                                      info::Ref{ma97_info{Float32}},
                                      d::Ptr{Float32})::Cvoid
end

function ma97_enquire_indef_c(akeep, fkeep, control, info, piv_order, d)
  @ccall libhsl.ma97_enquire_indef_c(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float32}},
                                     info::Ref{ma97_info{Float32}},
                                     piv_order::Ptr{Cint}, d::Ptr{ComplexF32})::Cvoid
end

function ma97_alter_c(d, akeep, fkeep, control, info)
  @ccall libhsl.ma97_alter_c(d::Ptr{ComplexF32}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float32}},
                             info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_solve_fredholm_c(nrhs, flag_out, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_fredholm_c(nrhs::Cint, flag_out::Ptr{Cint}, x::Ptr{ComplexF32},
                                      ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float32}},
                                      info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_lmultiply_c(trans, k, x, ldx, y, ldy, akeep, fkeep, control, info)
  @ccall libhsl.ma97_lmultiply_c(trans::Cint, k::Cint, x::Ptr{ComplexF32}, ldx::Cint,
                                 y::Ptr{ComplexF32}, ldy::Cint, akeep::Ptr{Ptr{Cvoid}},
                                 fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                                 info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_sparse_fwd_solve_c(nbi, bindex, b, order, nxi, xindex, x, akeep, fkeep, control, info)
  @ccall libhsl.ma97_sparse_fwd_solve_c(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{ComplexF32},
                                        order::Ptr{Cint}, nxi::Ptr{Cint}, xindex::Ptr{Cint},
                                        x::Ptr{ComplexF32}, akeep::Ptr{Ptr{Cvoid}},
                                        fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float32}},
                                        info::Ref{ma97_info{Float32}})::Cvoid
end

function ma97_default_control_z(control)
  @ccall libhsl.ma97_default_control_z(control::Ref{ma97_control{Float64}})::Cvoid
end

function ma97_analyse_z(check, n, ptr, row, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_z(check::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                               val::Ptr{ComplexF64}, akeep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma97_control{Float64}}, info::Ref{ma97_info{Float64}},
                               order::Ptr{Cint})::Cvoid
end

function ma97_analyse_coord_z(n, ne, row, col, val, akeep, control, info, order)
  @ccall libhsl.ma97_analyse_coord_z(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                     val::Ptr{ComplexF64}, akeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float64}},
                                     info::Ref{ma97_info{Float64}},
                                     order::Ptr{Cint})::Cvoid
end

function ma97_factor_z(matrix_type, ptr, row, val, akeep, fkeep, control, info, scale)
  @ccall libhsl.ma97_factor_z(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              val::Ptr{ComplexF64}, akeep::Ptr{Ptr{Cvoid}},
                              fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                              info::Ref{ma97_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma97_factor_solve_z(matrix_type, ptr, row, val, nrhs, x, ldx, akeep, fkeep, control, info,
                             scale)
  @ccall libhsl.ma97_factor_solve_z(matrix_type::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    val::Ptr{ComplexF64}, nrhs::Cint, x::Ptr{ComplexF64},
                                    ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                    control::Ref{ma97_control{Float64}},
                                    info::Ref{ma97_info{Float64}},
                                    scale::Ptr{Float64})::Cvoid
end

function ma97_solve_z(job, nrhs, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_z(job::Cint, nrhs::Cint, x::Ptr{ComplexF64}, ldx::Cint,
                             akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float64}},
                             info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_free_akeep_z(akeep)
  @ccall libhsl.ma97_free_akeep_z(akeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_free_fkeep_z(fkeep)
  @ccall libhsl.ma97_free_fkeep_z(fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_finalise_z(akeep, fkeep)
  @ccall libhsl.ma97_finalise_z(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma97_enquire_posdef_z(akeep, fkeep, control, info, d)
  @ccall libhsl.ma97_enquire_posdef_z(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float64}},
                                      info::Ref{ma97_info{Float64}},
                                      d::Ptr{Float64})::Cvoid
end

function ma97_enquire_indef_z(akeep, fkeep, control, info, piv_order, d)
  @ccall libhsl.ma97_enquire_indef_z(akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                     control::Ref{ma97_control{Float64}},
                                     info::Ref{ma97_info{Float64}},
                                     piv_order::Ptr{Cint}, d::Ptr{ComplexF64})::Cvoid
end

function ma97_alter_z(d, akeep, fkeep, control, info)
  @ccall libhsl.ma97_alter_z(d::Ptr{ComplexF64}, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                             control::Ref{ma97_control{Float64}},
                             info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_solve_fredholm_z(nrhs, flag_out, x, ldx, akeep, fkeep, control, info)
  @ccall libhsl.ma97_solve_fredholm_z(nrhs::Cint, flag_out::Ptr{Cint}, x::Ptr{ComplexF64},
                                      ldx::Cint, akeep::Ptr{Ptr{Cvoid}}, fkeep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma97_control{Float64}},
                                      info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_lmultiply_z(trans, k, x, ldx, y, ldy, akeep, fkeep, control, info)
  @ccall libhsl.ma97_lmultiply_z(trans::Cint, k::Cint, x::Ptr{ComplexF64}, ldx::Cint,
                                 y::Ptr{ComplexF64}, ldy::Cint, akeep::Ptr{Ptr{Cvoid}},
                                 fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                                 info::Ref{ma97_info{Float64}})::Cvoid
end

function ma97_sparse_fwd_solve_z(nbi, bindex, b, order, nxi, xindex, x, akeep, fkeep, control, info)
  @ccall libhsl.ma97_sparse_fwd_solve_z(nbi::Cint, bindex::Ptr{Cint}, b::Ptr{ComplexF64},
                                        order::Ptr{Cint}, nxi::Ptr{Cint}, xindex::Ptr{Cint},
                                        x::Ptr{ComplexF64}, akeep::Ptr{Ptr{Cvoid}},
                                        fkeep::Ptr{Ptr{Cvoid}}, control::Ref{ma97_control{Float64}},
                                        info::Ref{ma97_info{Float64}})::Cvoid
end
