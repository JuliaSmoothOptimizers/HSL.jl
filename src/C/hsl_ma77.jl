mutable struct ma77_control{T}
    f_arrays::Cint
    print_level::Cint
    unit_diagnostics::Cint
    unit_error::Cint
    unit_warning::Cint
    bits::Cint
    buffer_lpage::NTuple{2,Cint}
    buffer_npage::NTuple{2,Cint}
    file_size::Clong
    maxstore::Clong
    storage::NTuple{3,Clong}
    nemin::Cint
    maxit::Cint
    infnorm::Cint
    thresh::T
    nb54::Cint
    action::Cint
    multiplier::T
    nb64::Cint
    nbi::Cint
    small::T
    static_::T
    storage_indef::Clong
    u::T
    umin::T
    consist_tol::T
    ispare::NTuple{5,Cint}
    lspare::NTuple{5,Clong}
    rspare::NTuple{5,T}
end

function ma77_default_control_s(control)
    @ccall libhsl.ma77_default_control_s(control::Ref{ma77_control{Float32}})::Cvoid
end

mutable struct ma77_info{T}
    detlog::T
    detsign::Cint
    flag::Cint
    iostat::Cint
    matrix_dup::Cint
    matrix_rank::Cint
    matrix_outrange::Cint
    maxdepth::Cint
    maxfront::Cint
    minstore::Clong
    ndelay::Cint
    nfactor::Clong
    nflops::Clong
    niter::Cint
    nsup::Cint
    num_neg::Cint
    num_nothresh::Cint
    num_perturbed::Cint
    ntwo::Cint
    stat::Cint
    index::NTuple{4,Cint}
    nio_read::NTuple{2,Clong}
    nio_write::NTuple{2,Clong}
    nwd_read::NTuple{2,Clong}
    nwd_write::NTuple{2,Clong}
    num_file::NTuple{4,Cint}
    storage::NTuple{4,Clong}
    tree_nodes::Cint
    unit_restart::Cint
    unused::Cint
    usmall::T
    ispare::NTuple{5,Cint}
    lspare::NTuple{5,Clong}
    rspare::NTuple{5,T}
end

function ma77_open_nelt_s(n, fname1, fname2, fname3, fname4, keep, control, info, nelt)
    @ccall libhsl.ma77_open_nelt_s(n::Cint, fname1::Cstring, fname2::Cstring,
                                   fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                                   nelt::Cint)::Cvoid
end

function ma77_open_s(n, fname1, fname2, fname3, fname4, keep, control, info)
    @ccall libhsl.ma77_open_s(n::Cint, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                              fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_input_vars_s(idx, nvar, list, keep, control, info)
    @ccall libhsl.ma77_input_vars_s(idx::Cint, nvar::Cint, list::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float32}},
                                    info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_input_reals_s(idx, length, reals, keep, control, info)
    @ccall libhsl.ma77_input_reals_s(idx::Cint, length::Cint, reals::Ptr{Float32},
                                     keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float32}},
                                     info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_analyse_s(order, keep, control, info)
    @ccall libhsl.ma77_analyse_s(order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma77_control{Float32}},
                                 info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_factor_s(posdef, keep, control, info, scale)
    @ccall libhsl.ma77_factor_s(posdef::Cint, keep::Ptr{Ptr{Cvoid}},
                                control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                                scale::Ptr{Float32})::Cvoid
end

function ma77_factor_solve_s(posdef, keep, control, info, scale, nrhs, lx, rhs)
    @ccall libhsl.ma77_factor_solve_s(posdef::Cint, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                                      scale::Ptr{Float32}, nrhs::Cint, lx::Cint,
                                      rhs::Ptr{Float32})::Cvoid
end

function ma77_solve_s(job, nrhs, lx, x, keep, control, info, scale)
    @ccall libhsl.ma77_solve_s(job::Cint, nrhs::Cint, lx::Cint, x::Ptr{Float32},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float32}},
                               info::Ref{ma77_info{Float32}}, scale::Ptr{Float32})::Cvoid
end

function ma77_resid_s(nrhs, lx, x, lresid, resid, keep, control, info, anorm_bnd)
    @ccall libhsl.ma77_resid_s(nrhs::Cint, lx::Cint, x::Ptr{Float32}, lresid::Cint,
                               resid::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                               anorm_bnd::Ptr{Float32})::Cvoid
end

function ma77_scale_s(scale, keep, control, info, anorm)
    @ccall libhsl.ma77_scale_s(scale::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                               anorm::Ptr{Float32})::Cvoid
end

function ma77_enquire_posdef_s(d, keep, control, info)
    @ccall libhsl.ma77_enquire_posdef_s(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma77_control{Float32}},
                                        info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_enquire_indef_s(piv_order, d, keep, control, info)
    @ccall libhsl.ma77_enquire_indef_s(piv_order::Ptr{Cint}, d::Ptr{Float32},
                                       keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float32}},
                                       info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_alter_s(d, keep, control, info)
    @ccall libhsl.ma77_alter_s(d::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_restart_s(restart_file, fname1, fname2, fname3, fname4, keep, control, info)
    @ccall libhsl.ma77_restart_s(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                 fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma77_control{Float32}},
                                 info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_finalise_s(keep, control, info)
    @ccall libhsl.ma77_finalise_s(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float32}},
                                  info::Ref{ma77_info{Float32}})::Cvoid
end

function ma77_solve_fredholm_s(nrhs, flag_out, lx, x, keep, control, info, scale)
    @ccall libhsl.ma77_solve_fredholm_s(nrhs::Cint, flag_out::Ptr{Cint}, lx::Cint,
                                        x::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma77_control{Float32}},
                                        info::Ref{ma77_info{Float32}},
                                        scale::Ptr{Float32})::Cvoid
end

function ma77_lmultiply_s(trans, k, lx, x, ly, y, keep, control, info, scale)
    @ccall libhsl.ma77_lmultiply_s(trans::Cint, k::Cint, lx::Cint, x::Ptr{Float32},
                                   ly::Cint, y::Ptr{Float32}, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{ma77_control{Float32}}, info::Ref{ma77_info{Float32}},
                                   scale::Ptr{Float32})::Cvoid
end

function ma77_default_control_d(control)
    @ccall libhsl.ma77_default_control_d(control::Ref{ma77_control{Float64}})::Cvoid
end

function ma77_open_nelt_d(n, fname1, fname2, fname3, fname4, keep, control, info, nelt)
    @ccall libhsl.ma77_open_nelt_d(n::Cint, fname1::Cstring, fname2::Cstring,
                                   fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                                   nelt::Cint)::Cvoid
end

function ma77_open_d(n, fname1, fname2, fname3, fname4, keep, control, info)
    @ccall libhsl.ma77_open_d(n::Cint, fname1::Cstring, fname2::Cstring, fname3::Cstring,
                              fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                              control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_input_vars_d(idx, nvar, list, keep, control, info)
    @ccall libhsl.ma77_input_vars_d(idx::Cint, nvar::Cint, list::Ptr{Cint},
                                    keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float64}},
                                    info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_input_reals_d(idx, length, reals, keep, control, info)
    @ccall libhsl.ma77_input_reals_d(idx::Cint, length::Cint, reals::Ptr{Float64},
                                     keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float64}},
                                     info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_analyse_d(order, keep, control, info)
    @ccall libhsl.ma77_analyse_d(order::Ptr{Cint}, keep::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma77_control{Float64}},
                                 info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_factor_d(posdef, keep, control, info, scale)
    @ccall libhsl.ma77_factor_d(posdef::Cint, keep::Ptr{Ptr{Cvoid}},
                                control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                                scale::Ptr{Float64})::Cvoid
end

function ma77_factor_solve_d(posdef, keep, control, info, scale, nrhs, lx, rhs)
    @ccall libhsl.ma77_factor_solve_d(posdef::Cint, keep::Ptr{Ptr{Cvoid}},
                                      control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                                      scale::Ptr{Float64}, nrhs::Cint, lx::Cint,
                                      rhs::Ptr{Float64})::Cvoid
end

function ma77_solve_d(job, nrhs, lx, x, keep, control, info, scale)
    @ccall libhsl.ma77_solve_d(job::Cint, nrhs::Cint, lx::Cint, x::Ptr{Float64},
                               keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float64}},
                               info::Ref{ma77_info{Float64}}, scale::Ptr{Float64})::Cvoid
end

function ma77_resid_d(nrhs, lx, x, lresid, resid, keep, control, info, anorm_bnd)
    @ccall libhsl.ma77_resid_d(nrhs::Cint, lx::Cint, x::Ptr{Float64}, lresid::Cint,
                               resid::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                               anorm_bnd::Ptr{Float64})::Cvoid
end

function ma77_scale_d(scale, keep, control, info, anorm)
    @ccall libhsl.ma77_scale_d(scale::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                               anorm::Ptr{Float64})::Cvoid
end

function ma77_enquire_posdef_d(d, keep, control, info)
    @ccall libhsl.ma77_enquire_posdef_d(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma77_control{Float64}},
                                        info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_enquire_indef_d(piv_order, d, keep, control, info)
    @ccall libhsl.ma77_enquire_indef_d(piv_order::Ptr{Cint}, d::Ptr{Float64},
                                       keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float64}},
                                       info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_alter_d(d, keep, control, info)
    @ccall libhsl.ma77_alter_d(d::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                               control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_restart_d(restart_file, fname1, fname2, fname3, fname4, keep, control, info)
    @ccall libhsl.ma77_restart_d(restart_file::Cstring, fname1::Cstring, fname2::Cstring,
                                 fname3::Cstring, fname4::Cstring, keep::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma77_control{Float64}},
                                 info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_finalise_d(keep, control, info)
    @ccall libhsl.ma77_finalise_d(keep::Ptr{Ptr{Cvoid}}, control::Ref{ma77_control{Float64}},
                                  info::Ref{ma77_info{Float64}})::Cvoid
end

function ma77_solve_fredholm_d(nrhs, flag_out, lx, x, keep, control, info, scale)
    @ccall libhsl.ma77_solve_fredholm_d(nrhs::Cint, flag_out::Ptr{Cint}, lx::Cint,
                                        x::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{ma77_control{Float64}},
                                        info::Ref{ma77_info{Float64}},
                                        scale::Ptr{Float64})::Cvoid
end

function ma77_lmultiply_d(trans, k, lx, x, ly, y, keep, control, info, scale)
    @ccall libhsl.ma77_lmultiply_d(trans::Cint, k::Cint, lx::Cint, x::Ptr{Float64},
                                   ly::Cint, y::Ptr{Float64}, keep::Ptr{Ptr{Cvoid}},
                                   control::Ref{ma77_control{Float64}}, info::Ref{ma77_info{Float64}},
                                   scale::Ptr{Float64})::Cvoid
end
