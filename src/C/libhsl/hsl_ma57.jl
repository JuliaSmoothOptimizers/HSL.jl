mutable struct ma57_control{T}
  f_arrays::Cint
  multiplier::T
  reduce::T
  u::T
  static_tolerance::T
  static_level::T
  tolerance::T
  convergence::T
  consist::T
  lp::Cint
  wp::Cint
  mp::Cint
  sp::Cint
  ldiag::Cint
  nemin::Cint
  factorblocking::Cint
  solveblocking::Cint
  la::Cint
  liw::Cint
  maxla::Cint
  maxliw::Cint
  pivoting::Cint
  thresh::Cint
  ordering::Cint
  scaling::Cint
  rank_deficient::Cint
  ispare::NTuple{5, Cint}
  rspare::NTuple{10, T}

  ma57_control{T}() where {T} = new{T}()

  function ma57_control{T}(f_arrays, multiplier, reduce, u, static_tolerance, static_level,
                           tolerance, convergence, consist, lp, wp, mp, sp, ldiag, nemin,
                           factorblocking, solveblocking, la, liw, maxla, maxliw, pivoting, thresh,
                           ordering, scaling, rank_deficient, ispare, rspare) where {T}
    return new{T}(f_arrays, multiplier, reduce, u, static_tolerance, static_level, tolerance,
                  convergence, consist, lp, wp, mp, sp, ldiag, nemin, factorblocking, solveblocking,
                  la, liw, maxla, maxliw, pivoting, thresh, ordering, scaling, rank_deficient,
                  ispare, rspare)
  end
end

function ma57_default_control_s(control)
  @ccall libhsl.ma57_default_control_s(control::Ref{ma57_control{Float32}})::Cvoid
end

function ma57_init_factors_s(factors)
  @ccall libhsl.ma57_init_factors_s(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

mutable struct ma57_ainfo{T}
  opsa::T
  opse::T
  flag::Cint
  more::Cint
  nsteps::Cint
  nrltot::Cint
  nirtot::Cint
  nrlnec::Cint
  nirnec::Cint
  nrladu::Cint
  niradu::Cint
  ncmpa::Cint
  ordering::Cint
  oor::Cint
  dup::Cint
  maxfrt::Cint
  stat::Cint
  ispare::NTuple{5, Cint}
  rspare::NTuple{10, T}

  ma57_ainfo{T}() where {T} = new{T}()

  function ma57_ainfo{T}(opsa, opse, flag, more, nsteps, nrltot, nirtot, nrlnec, nirnec, nrladu,
                         niradu, ncmpa, ordering, oor, dup, maxfrt, stat, ispare, rspare) where {T}
    return new{T}(opsa, opse, flag, more, nsteps, nrltot, nirtot, nrlnec, nirnec, nrladu, niradu,
                  ncmpa, ordering, oor, dup, maxfrt, stat, ispare, rspare)
  end
end

function ma57_analyse_s(n, ne, row, col, factors, control, ainfo, perm)
  @ccall libhsl.ma57_analyse_s(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                               factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                               ainfo::Ref{ma57_ainfo{Float32}}, perm::Ptr{Cint})::Cvoid
end

mutable struct ma57_finfo{T}
  opsa::T
  opse::T
  opsb::T
  maxchange::T
  smin::T
  smax::T
  flag::Cint
  more::Cint
  maxfrt::Cint
  nebdu::Cint
  nrlbdu::Cint
  nirbdu::Cint
  nrltot::Cint
  nirtot::Cint
  nrlnec::Cint
  nirnec::Cint
  ncmpbr::Cint
  ncmpbi::Cint
  ntwo::Cint
  neig::Cint
  delay::Cint
  signc::Cint
  static_::Cint
  modstep::Cint
  rank::Cint
  stat::Cint
  ispare::NTuple{5, Cint}
  rspare::NTuple{10, T}

  ma57_finfo{T}() where {T} = new{T}()

  function ma57_finfo{T}(opsa, opse, opsb, maxchange, smin, smax, flag, more, maxfrt, nebdu, nrlbdu,
                         nirbdu, nrltot, nirtot, nrlnec, nirnec, ncmpbr, ncmpbi, ntwo, neig, delay,
                         signc, static_, modstep, rank, stat, ispare, rspare) where {T}
    return new{T}(opsa, opse, opsb, maxchange, smin, smax, flag, more, maxfrt, nebdu, nrlbdu,
                  nirbdu, nrltot, nirtot, nrlnec, nirnec, ncmpbr, ncmpbi, ntwo, neig, delay, signc,
                  static_, modstep, rank, stat, ispare, rspare)
  end
end

function ma57_factorize_s(n, ne, row, col, val, factors, control, finfo)
  @ccall libhsl.ma57_factorize_s(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                 val::Ptr{Float32}, factors::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma57_control{Float32}},
                                 finfo::Ref{ma57_finfo{Float32}})::Cvoid
end

mutable struct ma57_sinfo{T}
  cond::T
  cond2::T
  berr::T
  berr2::T
  error::T
  flag::Cint
  stat::Cint
  ispare::NTuple{5, Cint}
  rspare::NTuple{10, T}

  ma57_sinfo{T}() where {T} = new{T}()

  function ma57_sinfo{T}(cond, cond2, berr, berr2, error, flag, stat, ispare, rspare) where {T}
    return new{T}(cond, cond2, berr, berr2, error, flag, stat, ispare, rspare)
  end
end

function ma57_solve_s(n, ne, row, col, val, factors, nrhs, x, control, sinfo, rhs, iter, cond)
  @ccall libhsl.ma57_solve_s(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                             val::Ptr{Float32}, factors::Ptr{Ptr{Cvoid}}, nrhs::Cint,
                             x::Ptr{Float32}, control::Ref{ma57_control{Float32}},
                             sinfo::Ref{ma57_sinfo{Float32}}, rhs::Ptr{Float32}, iter::Cint,
                             cond::Cint)::Cvoid
end

function ma57_finalize_s(factors, control, info)
  @ccall libhsl.ma57_finalize_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                                info::Ptr{Cint})::Cvoid
end

function ma57_enquire_perm_s(control, factors, perm)
  @ccall libhsl.ma57_enquire_perm_s(control::Ref{ma57_control{Float32}}, factors::Ptr{Ptr{Cvoid}},
                                    perm::Ptr{Cint})::Cvoid
end

function ma57_enquire_pivots_s(control, factors, pivots)
  @ccall libhsl.ma57_enquire_pivots_s(control::Ref{ma57_control{Float32}}, factors::Ptr{Ptr{Cvoid}},
                                      pivots::Ptr{Cint})::Cvoid
end

function ma57_enquire_d_s(factors, d)
  @ccall libhsl.ma57_enquire_d_s(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32})::Cvoid
end

function ma57_enquire_perturbation_s(factors, perturbation)
  @ccall libhsl.ma57_enquire_perturbation_s(factors::Ptr{Ptr{Cvoid}},
                                            perturbation::Ptr{Float32})::Cvoid
end

function ma57_enquire_scaling_s(factors, scaling)
  @ccall libhsl.ma57_enquire_scaling_s(factors::Ptr{Ptr{Cvoid}},
                                       scaling::Ptr{Float32})::Cvoid
end

function ma57_alter_d_s(factors, d, info)
  @ccall libhsl.ma57_alter_d_s(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32},
                               info::Ptr{Cint})::Cvoid
end

function ma57_part_solve_s(factors, control, part, nrhs, x, info)
  @ccall libhsl.ma57_part_solve_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                                  part::Cchar, nrhs::Cint, x::Ptr{Float32},
                                  info::Ptr{Cint})::Cvoid
end

function ma57_sparse_lsolve_s(factors, control, nzrhs, irhs, nzsoln, isoln, x, sinfo)
  @ccall libhsl.ma57_sparse_lsolve_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                                     nzrhs::Cint, irhs::Ptr{Cint}, nzsoln::Ptr{Cint},
                                     isoln::Ptr{Cint}, x::Ptr{Float32},
                                     sinfo::Ref{ma57_sinfo{Float32}})::Cvoid
end

function ma57_fredholm_alternative_s(factors, control, x, fredx, sinfo)
  @ccall libhsl.ma57_fredholm_alternative_s(factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{ma57_control{Float32}},
                                            x::Ptr{Float32}, fredx::Ptr{Float32},
                                            sinfo::Ref{ma57_sinfo{Float32}})::Cvoid
end

function ma57_lmultiply_s(factors, control, trans, x, y, sinfo)
  @ccall libhsl.ma57_lmultiply_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                                 trans::Cchar, x::Ptr{Float32}, y::Ptr{Float32},
                                 sinfo::Ref{ma57_sinfo{Float32}})::Cvoid
end

function ma57_get_factors_s(factors, control, nzl, iptrl, lrows, lvals, nzd, iptrd, drows, dvals,
                            perm, invperm, scale, sinfo)
  @ccall libhsl.ma57_get_factors_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float32}},
                                   nzl::Ptr{Cint}, iptrl::Ptr{Cint}, lrows::Ptr{Cint},
                                   lvals::Ptr{Float32}, nzd::Ptr{Cint}, iptrd::Ptr{Cint},
                                   drows::Ptr{Cint}, dvals::Ptr{Float32}, perm::Ptr{Cint},
                                   invperm::Ptr{Cint}, scale::Ptr{Float32},
                                   sinfo::Ref{ma57_sinfo{Float32}})::Cvoid
end

function ma57_default_control_d(control)
  @ccall libhsl.ma57_default_control_d(control::Ref{ma57_control{Float64}})::Cvoid
end

function ma57_init_factors_d(factors)
  @ccall libhsl.ma57_init_factors_d(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_analyse_d(n, ne, row, col, factors, control, ainfo, perm)
  @ccall libhsl.ma57_analyse_d(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                               factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                               ainfo::Ref{ma57_ainfo{Float64}}, perm::Ptr{Cint})::Cvoid
end

function ma57_factorize_d(n, ne, row, col, val, factors, control, finfo)
  @ccall libhsl.ma57_factorize_d(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                                 val::Ptr{Float64}, factors::Ptr{Ptr{Cvoid}},
                                 control::Ref{ma57_control{Float64}},
                                 finfo::Ref{ma57_finfo{Float64}})::Cvoid
end

function ma57_solve_d(n, ne, row, col, val, factors, nrhs, x, control, sinfo, rhs, iter, cond)
  @ccall libhsl.ma57_solve_d(n::Cint, ne::Cint, row::Ptr{Cint}, col::Ptr{Cint},
                             val::Ptr{Float64}, factors::Ptr{Ptr{Cvoid}}, nrhs::Cint,
                             x::Ptr{Float64}, control::Ref{ma57_control{Float64}},
                             sinfo::Ref{ma57_sinfo{Float64}}, rhs::Ptr{Float64}, iter::Cint,
                             cond::Cint)::Cvoid
end

function ma57_finalize_d(factors, control, info)
  @ccall libhsl.ma57_finalize_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                                info::Ptr{Cint})::Cvoid
end

function ma57_enquire_perm_d(control, factors, perm)
  @ccall libhsl.ma57_enquire_perm_d(control::Ref{ma57_control{Float64}}, factors::Ptr{Ptr{Cvoid}},
                                    perm::Ptr{Cint})::Cvoid
end

function ma57_enquire_pivots_d(control, factors, pivots)
  @ccall libhsl.ma57_enquire_pivots_d(control::Ref{ma57_control{Float64}}, factors::Ptr{Ptr{Cvoid}},
                                      pivots::Ptr{Cint})::Cvoid
end

function ma57_enquire_d_d(factors, d)
  @ccall libhsl.ma57_enquire_d_d(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64})::Cvoid
end

function ma57_enquire_perturbation_d(factors, perturbation)
  @ccall libhsl.ma57_enquire_perturbation_d(factors::Ptr{Ptr{Cvoid}},
                                            perturbation::Ptr{Float64})::Cvoid
end

function ma57_enquire_scaling_d(factors, scaling)
  @ccall libhsl.ma57_enquire_scaling_d(factors::Ptr{Ptr{Cvoid}},
                                       scaling::Ptr{Float64})::Cvoid
end

function ma57_alter_d_d(factors, d, info)
  @ccall libhsl.ma57_alter_d_d(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64},
                               info::Ptr{Cint})::Cvoid
end

function ma57_part_solve_d(factors, control, part, nrhs, x, info)
  @ccall libhsl.ma57_part_solve_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                                  part::Cchar, nrhs::Cint, x::Ptr{Float64},
                                  info::Ptr{Cint})::Cvoid
end

function ma57_sparse_lsolve_d(factors, control, nzrhs, irhs, nzsoln, isoln, x, sinfo)
  @ccall libhsl.ma57_sparse_lsolve_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                                     nzrhs::Cint, irhs::Ptr{Cint}, nzsoln::Ptr{Cint},
                                     isoln::Ptr{Cint}, x::Ptr{Float64},
                                     sinfo::Ref{ma57_sinfo{Float64}})::Cvoid
end

function ma57_fredholm_alternative_d(factors, control, x, fredx, sinfo)
  @ccall libhsl.ma57_fredholm_alternative_d(factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{ma57_control{Float64}},
                                            x::Ptr{Float64}, fredx::Ptr{Float64},
                                            sinfo::Ref{ma57_sinfo{Float64}})::Cvoid
end

function ma57_lmultiply_d(factors, control, trans, x, y, sinfo)
  @ccall libhsl.ma57_lmultiply_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                                 trans::Cchar, x::Ptr{Float64}, y::Ptr{Float64},
                                 sinfo::Ref{ma57_sinfo{Float64}})::Cvoid
end

function ma57_get_factors_d(factors, control, nzl, iptrl, lrows, lvals, nzd, iptrd, drows, dvals,
                            perm, invperm, scale, sinfo)
  @ccall libhsl.ma57_get_factors_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma57_control{Float64}},
                                   nzl::Ptr{Cint}, iptrl::Ptr{Cint}, lrows::Ptr{Cint},
                                   lvals::Ptr{Float64}, nzd::Ptr{Cint}, iptrd::Ptr{Cint},
                                   drows::Ptr{Cint}, dvals::Ptr{Float64}, perm::Ptr{Cint},
                                   invperm::Ptr{Cint}, scale::Ptr{Float64},
                                   sinfo::Ref{ma57_sinfo{Float64}})::Cvoid
end
