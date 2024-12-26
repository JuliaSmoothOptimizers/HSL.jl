mutable struct Ma57Control{T, INT}
  f_arrays::INT
  multiplier::T
  reduce::T
  u::T
  static_tolerance::T
  static_level::T
  tolerance::T
  convergence::T
  consist::T
  lp::INT
  wp::INT
  mp::INT
  sp::INT
  ldiag::INT
  nemin::INT
  factorblocking::INT
  solveblocking::INT
  la::INT
  liw::INT
  maxla::INT
  maxliw::INT
  pivoting::INT
  thresh::INT
  ordering::INT
  scaling::INT
  rank_deficient::INT
  ispare::NTuple{5, INT}
  rspare::NTuple{10, T}
end

mutable struct Ma57Ainfo{T, INT}
  opsa::T
  opse::T
  flag::INT
  more::INT
  nsteps::INT
  nrltot::INT
  nirtot::INT
  nrlnec::INT
  nirnec::INT
  nrladu::INT
  niradu::INT
  ncmpa::INT
  ordering::INT
  oor::INT
  dup::INT
  maxfrt::INT
  stat::INT
  ispare::NTuple{5, INT}
  rspare::NTuple{10, T}
end

mutable struct Ma57Finfo{T, INT}
  opsa::T
  opse::T
  opsb::T
  maxchange::T
  smin::T
  smax::T
  flag::INT
  more::INT
  maxfrt::INT
  nebdu::INT
  nrlbdu::INT
  nirbdu::INT
  nrltot::INT
  nirtot::INT
  nrlnec::INT
  nirnec::INT
  ncmpbr::INT
  ncmpbi::INT
  ntwo::INT
  neig::INT
  delay::INT
  signc::INT
  static_::INT
  modstep::INT
  rank::INT
  stat::INT
  ispare::NTuple{5, INT}
  rspare::NTuple{10, T}
end

mutable struct Ma57Sinfo{T, INT}
  cond::T
  cond2::T
  berr::T
  berr2::T
  error::T
  flag::INT
  stat::INT
  ispare::NTuple{5, INT}
  rspare::NTuple{10, T}
end

function ma57_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma57_default_control_s(control::Ref{Ma57Control{Float32, Int32}})::Cvoid
end

function ma57_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma57_default_control_d(control::Ref{Ma57Control{Float64, Int32}})::Cvoid
end

function ma57_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma57_default_control_q(control::Ref{Ma57Control{Float128, Int32}})::Cvoid
end

function ma57_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma57_default_control_s_64(control::Ref{Ma57Control{Float32, Int64}})::Cvoid
end

function ma57_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma57_default_control_d_64(control::Ref{Ma57Control{Float64, Int64}})::Cvoid
end

function ma57_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma57_default_control_q_64(control::Ref{Ma57Control{Float128, Int64}})::Cvoid
end

function ma57_init_factors(::Type{Float32}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma57_init_factors_s(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_init_factors(::Type{Float64}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma57_init_factors_d(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_init_factors(::Type{Float128}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma57_init_factors_q(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_init_factors(::Type{Float32}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma57_init_factors_s_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_init_factors(::Type{Float64}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma57_init_factors_d_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_init_factors(::Type{Float128}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma57_init_factors_q_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma57_analyse(::Type{Float32}, ::Type{Int32}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset.ma57_analyse_s(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                      factors::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma57Control{Float32, Int32}},
                                      ainfo::Ref{Ma57Ainfo{Float32, Int32}},
                                      perm::Ptr{Int32})::Cvoid
end

function ma57_analyse(::Type{Float64}, ::Type{Int32}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset.ma57_analyse_d(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                      factors::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma57Control{Float64, Int32}},
                                      ainfo::Ref{Ma57Ainfo{Float64, Int32}},
                                      perm::Ptr{Int32})::Cvoid
end

function ma57_analyse(::Type{Float128}, ::Type{Int32}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset.ma57_analyse_q(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                      factors::Ptr{Ptr{Cvoid}},
                                      control::Ref{Ma57Control{Float128, Int32}},
                                      ainfo::Ref{Ma57Ainfo{Float128, Int32}},
                                      perm::Ptr{Int32})::Cvoid
end

function ma57_analyse(::Type{Float32}, ::Type{Int64}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset_64.ma57_analyse_s_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                            factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float32, Int64}},
                                            ainfo::Ref{Ma57Ainfo{Float32, Int64}},
                                            perm::Ptr{Int64})::Cvoid
end

function ma57_analyse(::Type{Float64}, ::Type{Int64}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset_64.ma57_analyse_d_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                            factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float64, Int64}},
                                            ainfo::Ref{Ma57Ainfo{Float64, Int64}},
                                            perm::Ptr{Int64})::Cvoid
end

function ma57_analyse(::Type{Float128}, ::Type{Int64}, n, ne, row, col, factors, control, ainfo,
                      perm)
  @ccall libhsl_subset_64.ma57_analyse_q_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                            factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float128, Int64}},
                                            ainfo::Ref{Ma57Ainfo{Float128, Int64}},
                                            perm::Ptr{Int64})::Cvoid
end

function ma57_factorize(::Type{Float32}, ::Type{Int32}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset.ma57_factorize_s(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float32},
                                        factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float32, Int32}},
                                        finfo::Ref{Ma57Finfo{Float32, Int32}})::Cvoid
end

function ma57_factorize(::Type{Float64}, ::Type{Int32}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset.ma57_factorize_d(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float64},
                                        factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float64, Int32}},
                                        finfo::Ref{Ma57Finfo{Float64, Int32}})::Cvoid
end

function ma57_factorize(::Type{Float128}, ::Type{Int32}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset.ma57_factorize_q(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                        val::Ptr{Float128},
                                        factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float128, Int32}},
                                        finfo::Ref{Ma57Finfo{Float128, Int32}})::Cvoid
end

function ma57_factorize(::Type{Float32}, ::Type{Int64}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset_64.ma57_factorize_s_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float32},
                                              factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float32, Int64}},
                                              finfo::Ref{Ma57Finfo{Float32, Int64}})::Cvoid
end

function ma57_factorize(::Type{Float64}, ::Type{Int64}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset_64.ma57_factorize_d_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float64},
                                              factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float64, Int64}},
                                              finfo::Ref{Ma57Finfo{Float64, Int64}})::Cvoid
end

function ma57_factorize(::Type{Float128}, ::Type{Int64}, n, ne, row, col, val, factors, control,
                        finfo)
  @ccall libhsl_subset_64.ma57_factorize_q_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                              val::Ptr{Float128},
                                              factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float128, Int64}},
                                              finfo::Ref{Ma57Finfo{Float128, Int64}})::Cvoid
end

function ma57_solve(::Type{Float32}, ::Type{Int32}, n, ne, row, col, val, factors, nrhs, x, control,
                    sinfo, rhs, iter, cond)
  @ccall libhsl_subset.ma57_solve_s(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float32},
                                    factors::Ptr{Ptr{Cvoid}}, nrhs::Int32, x::Ptr{Float32},
                                    control::Ref{Ma57Control{Float32, Int32}},
                                    sinfo::Ref{Ma57Sinfo{Float32, Int32}}, rhs::Ptr{Float32},
                                    iter::Int32, cond::Int32)::Cvoid
end

function ma57_solve(::Type{Float64}, ::Type{Int32}, n, ne, row, col, val, factors, nrhs, x, control,
                    sinfo, rhs, iter, cond)
  @ccall libhsl_subset.ma57_solve_d(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float64},
                                    factors::Ptr{Ptr{Cvoid}}, nrhs::Int32, x::Ptr{Float64},
                                    control::Ref{Ma57Control{Float64, Int32}},
                                    sinfo::Ref{Ma57Sinfo{Float64, Int32}}, rhs::Ptr{Float64},
                                    iter::Int32, cond::Int32)::Cvoid
end

function ma57_solve(::Type{Float128}, ::Type{Int32}, n, ne, row, col, val, factors, nrhs, x,
                    control, sinfo, rhs, iter, cond)
  @ccall libhsl_subset.ma57_solve_q(n::Int32, ne::Int32, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float128},
                                    factors::Ptr{Ptr{Cvoid}}, nrhs::Int32, x::Ptr{Float128},
                                    control::Ref{Ma57Control{Float128, Int32}},
                                    sinfo::Ref{Ma57Sinfo{Float128, Int32}}, rhs::Ptr{Float128},
                                    iter::Int32, cond::Int32)::Cvoid
end

function ma57_solve(::Type{Float32}, ::Type{Int64}, n, ne, row, col, val, factors, nrhs, x, control,
                    sinfo, rhs, iter, cond)
  @ccall libhsl_subset_64.ma57_solve_s_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float32},
                                          factors::Ptr{Ptr{Cvoid}}, nrhs::Int64, x::Ptr{Float32},
                                          control::Ref{Ma57Control{Float32, Int64}},
                                          sinfo::Ref{Ma57Sinfo{Float32, Int64}}, rhs::Ptr{Float32},
                                          iter::Int64, cond::Int64)::Cvoid
end

function ma57_solve(::Type{Float64}, ::Type{Int64}, n, ne, row, col, val, factors, nrhs, x, control,
                    sinfo, rhs, iter, cond)
  @ccall libhsl_subset_64.ma57_solve_d_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float64},
                                          factors::Ptr{Ptr{Cvoid}}, nrhs::Int64, x::Ptr{Float64},
                                          control::Ref{Ma57Control{Float64, Int64}},
                                          sinfo::Ref{Ma57Sinfo{Float64, Int64}}, rhs::Ptr{Float64},
                                          iter::Int64, cond::Int64)::Cvoid
end

function ma57_solve(::Type{Float128}, ::Type{Int64}, n, ne, row, col, val, factors, nrhs, x,
                    control, sinfo, rhs, iter, cond)
  @ccall libhsl_subset_64.ma57_solve_q_64(n::Int64, ne::Int64, row::Ptr{Int64}, col::Ptr{Int64},
                                          val::Ptr{Float128},
                                          factors::Ptr{Ptr{Cvoid}}, nrhs::Int64, x::Ptr{Float128},
                                          control::Ref{Ma57Control{Float128, Int64}},
                                          sinfo::Ref{Ma57Sinfo{Float128, Int64}},
                                          rhs::Ptr{Float128},
                                          iter::Int64, cond::Int64)::Cvoid
end

function ma57_finalize(::Type{Float32}, ::Type{Int32}, factors, control, info)
  @ccall libhsl_subset.ma57_finalize_s(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma57Control{Float32, Int32}},
                                       info::Ptr{Int32})::Cvoid
end

function ma57_finalize(::Type{Float64}, ::Type{Int32}, factors, control, info)
  @ccall libhsl_subset.ma57_finalize_d(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma57Control{Float64, Int32}},
                                       info::Ptr{Int32})::Cvoid
end

function ma57_finalize(::Type{Float128}, ::Type{Int32}, factors, control, info)
  @ccall libhsl_subset.ma57_finalize_q(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma57Control{Float128, Int32}},
                                       info::Ptr{Int32})::Cvoid
end

function ma57_finalize(::Type{Float32}, ::Type{Int64}, factors, control, info)
  @ccall libhsl_subset_64.ma57_finalize_s_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma57Control{Float32, Int64}},
                                             info::Ptr{Int64})::Cvoid
end

function ma57_finalize(::Type{Float64}, ::Type{Int64}, factors, control, info)
  @ccall libhsl_subset_64.ma57_finalize_d_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma57Control{Float64, Int64}},
                                             info::Ptr{Int64})::Cvoid
end

function ma57_finalize(::Type{Float128}, ::Type{Int64}, factors, control, info)
  @ccall libhsl_subset_64.ma57_finalize_q_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma57Control{Float128, Int64}},
                                             info::Ptr{Int64})::Cvoid
end

function ma57_enquire_perm(::Type{Float32}, ::Type{Int32}, control, factors, perm)
  @ccall libhsl_subset.ma57_enquire_perm_s(control::Ref{Ma57Control{Float32, Int32}},
                                           factors::Ptr{Ptr{Cvoid}},
                                           perm::Ptr{Int32})::Cvoid
end

function ma57_enquire_perm(::Type{Float64}, ::Type{Int32}, control, factors, perm)
  @ccall libhsl_subset.ma57_enquire_perm_d(control::Ref{Ma57Control{Float64, Int32}},
                                           factors::Ptr{Ptr{Cvoid}},
                                           perm::Ptr{Int32})::Cvoid
end

function ma57_enquire_perm(::Type{Float128}, ::Type{Int32}, control, factors, perm)
  @ccall libhsl_subset.ma57_enquire_perm_q(control::Ref{Ma57Control{Float128, Int32}},
                                           factors::Ptr{Ptr{Cvoid}},
                                           perm::Ptr{Int32})::Cvoid
end

function ma57_enquire_perm(::Type{Float32}, ::Type{Int64}, control, factors, perm)
  @ccall libhsl_subset_64.ma57_enquire_perm_s_64(control::Ref{Ma57Control{Float32, Int64}},
                                                 factors::Ptr{Ptr{Cvoid}},
                                                 perm::Ptr{Int64})::Cvoid
end

function ma57_enquire_perm(::Type{Float64}, ::Type{Int64}, control, factors, perm)
  @ccall libhsl_subset_64.ma57_enquire_perm_d_64(control::Ref{Ma57Control{Float64, Int64}},
                                                 factors::Ptr{Ptr{Cvoid}},
                                                 perm::Ptr{Int64})::Cvoid
end

function ma57_enquire_perm(::Type{Float128}, ::Type{Int64}, control, factors, perm)
  @ccall libhsl_subset_64.ma57_enquire_perm_q_64(control::Ref{Ma57Control{Float128, Int64}},
                                                 factors::Ptr{Ptr{Cvoid}},
                                                 perm::Ptr{Int64})::Cvoid
end

function ma57_enquire_pivots(::Type{Float32}, ::Type{Int32}, control, factors, pivots)
  @ccall libhsl_subset.ma57_enquire_pivots_s(control::Ref{Ma57Control{Float32, Int32}},
                                             factors::Ptr{Ptr{Cvoid}},
                                             pivots::Ptr{Int32})::Cvoid
end

function ma57_enquire_pivots(::Type{Float64}, ::Type{Int32}, control, factors, pivots)
  @ccall libhsl_subset.ma57_enquire_pivots_d(control::Ref{Ma57Control{Float64, Int32}},
                                             factors::Ptr{Ptr{Cvoid}},
                                             pivots::Ptr{Int32})::Cvoid
end

function ma57_enquire_pivots(::Type{Float128}, ::Type{Int32}, control, factors, pivots)
  @ccall libhsl_subset.ma57_enquire_pivots_q(control::Ref{Ma57Control{Float128, Int32}},
                                             factors::Ptr{Ptr{Cvoid}},
                                             pivots::Ptr{Int32})::Cvoid
end

function ma57_enquire_pivots(::Type{Float32}, ::Type{Int64}, control, factors, pivots)
  @ccall libhsl_subset_64.ma57_enquire_pivots_s_64(control::Ref{Ma57Control{Float32, Int64}},
                                                   factors::Ptr{Ptr{Cvoid}},
                                                   pivots::Ptr{Int64})::Cvoid
end

function ma57_enquire_pivots(::Type{Float64}, ::Type{Int64}, control, factors, pivots)
  @ccall libhsl_subset_64.ma57_enquire_pivots_d_64(control::Ref{Ma57Control{Float64, Int64}},
                                                   factors::Ptr{Ptr{Cvoid}},
                                                   pivots::Ptr{Int64})::Cvoid
end

function ma57_enquire_pivots(::Type{Float128}, ::Type{Int64}, control, factors, pivots)
  @ccall libhsl_subset_64.ma57_enquire_pivots_q_64(control::Ref{Ma57Control{Float128, Int64}},
                                                   factors::Ptr{Ptr{Cvoid}},
                                                   pivots::Ptr{Int64})::Cvoid
end

function ma57_enquire_d(::Type{Float32}, ::Type{Int32}, factors, d)
  @ccall libhsl_subset.ma57_enquire_d_s(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32})::Cvoid
end

function ma57_enquire_d(::Type{Float64}, ::Type{Int32}, factors, d)
  @ccall libhsl_subset.ma57_enquire_d_d(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64})::Cvoid
end

function ma57_enquire_d(::Type{Float128}, ::Type{Int32}, factors, d)
  @ccall libhsl_subset.ma57_enquire_d_q(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float128})::Cvoid
end

function ma57_enquire_d(::Type{Float32}, ::Type{Int64}, factors, d)
  @ccall libhsl_subset_64.ma57_enquire_d_s_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32})::Cvoid
end

function ma57_enquire_d(::Type{Float64}, ::Type{Int64}, factors, d)
  @ccall libhsl_subset_64.ma57_enquire_d_d_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64})::Cvoid
end

function ma57_enquire_d(::Type{Float128}, ::Type{Int64}, factors, d)
  @ccall libhsl_subset_64.ma57_enquire_d_q_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float128})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float32}, ::Type{Int32}, factors, perturbation)
  @ccall libhsl_subset.ma57_enquire_perturbation_s(factors::Ptr{Ptr{Cvoid}},
                                                   perturbation::Ptr{Float32})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float64}, ::Type{Int32}, factors, perturbation)
  @ccall libhsl_subset.ma57_enquire_perturbation_d(factors::Ptr{Ptr{Cvoid}},
                                                   perturbation::Ptr{Float64})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float128}, ::Type{Int32}, factors, perturbation)
  @ccall libhsl_subset.ma57_enquire_perturbation_q(factors::Ptr{Ptr{Cvoid}},
                                                   perturbation::Ptr{Float128})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float32}, ::Type{Int64}, factors, perturbation)
  @ccall libhsl_subset_64.ma57_enquire_perturbation_s_64(factors::Ptr{Ptr{Cvoid}},
                                                         perturbation::Ptr{Float32})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float64}, ::Type{Int64}, factors, perturbation)
  @ccall libhsl_subset_64.ma57_enquire_perturbation_d_64(factors::Ptr{Ptr{Cvoid}},
                                                         perturbation::Ptr{Float64})::Cvoid
end

function ma57_enquire_perturbation(::Type{Float128}, ::Type{Int64}, factors, perturbation)
  @ccall libhsl_subset_64.ma57_enquire_perturbation_q_64(factors::Ptr{Ptr{Cvoid}},
                                                         perturbation::Ptr{Float128})::Cvoid
end

function ma57_enquire_scaling(::Type{Float32}, ::Type{Int32}, factors, scaling)
  @ccall libhsl_subset.ma57_enquire_scaling_s(factors::Ptr{Ptr{Cvoid}},
                                              scaling::Ptr{Float32})::Cvoid
end

function ma57_enquire_scaling(::Type{Float64}, ::Type{Int32}, factors, scaling)
  @ccall libhsl_subset.ma57_enquire_scaling_d(factors::Ptr{Ptr{Cvoid}},
                                              scaling::Ptr{Float64})::Cvoid
end

function ma57_enquire_scaling(::Type{Float128}, ::Type{Int32}, factors, scaling)
  @ccall libhsl_subset.ma57_enquire_scaling_q(factors::Ptr{Ptr{Cvoid}},
                                              scaling::Ptr{Float128})::Cvoid
end

function ma57_enquire_scaling(::Type{Float32}, ::Type{Int64}, factors, scaling)
  @ccall libhsl_subset_64.ma57_enquire_scaling_s_64(factors::Ptr{Ptr{Cvoid}},
                                                    scaling::Ptr{Float32})::Cvoid
end

function ma57_enquire_scaling(::Type{Float64}, ::Type{Int64}, factors, scaling)
  @ccall libhsl_subset_64.ma57_enquire_scaling_d_64(factors::Ptr{Ptr{Cvoid}},
                                                    scaling::Ptr{Float64})::Cvoid
end

function ma57_enquire_scaling(::Type{Float128}, ::Type{Int64}, factors, scaling)
  @ccall libhsl_subset_64.ma57_enquire_scaling_q_64(factors::Ptr{Ptr{Cvoid}},
                                                    scaling::Ptr{Float128})::Cvoid
end

function ma57_alter_d(::Type{Float32}, ::Type{Int32}, factors, d, info)
  @ccall libhsl_subset.ma57_alter_d_s(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32},
                                      info::Ptr{Int32})::Cvoid
end

function ma57_alter_d(::Type{Float64}, ::Type{Int32}, factors, d, info)
  @ccall libhsl_subset.ma57_alter_d_d(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64},
                                      info::Ptr{Int32})::Cvoid
end

function ma57_alter_d(::Type{Float128}, ::Type{Int32}, factors, d, info)
  @ccall libhsl_subset.ma57_alter_d_q(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float128},
                                      info::Ptr{Int32})::Cvoid
end

function ma57_alter_d(::Type{Float32}, ::Type{Int64}, factors, d, info)
  @ccall libhsl_subset_64.ma57_alter_d_s_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float32},
                                            info::Ptr{Int64})::Cvoid
end

function ma57_alter_d(::Type{Float64}, ::Type{Int64}, factors, d, info)
  @ccall libhsl_subset_64.ma57_alter_d_d_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float64},
                                            info::Ptr{Int64})::Cvoid
end

function ma57_alter_d(::Type{Float128}, ::Type{Int64}, factors, d, info)
  @ccall libhsl_subset_64.ma57_alter_d_q_64(factors::Ptr{Ptr{Cvoid}}, d::Ptr{Float128},
                                            info::Ptr{Int64})::Cvoid
end

function ma57_part_solve(::Type{Float32}, ::Type{Int32}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset.ma57_part_solve_s(factors::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma57Control{Float32, Int32}},
                                         part::Cchar, nrhs::Int32, x::Ptr{Float32},
                                         info::Ptr{Int32})::Cvoid
end

function ma57_part_solve(::Type{Float64}, ::Type{Int32}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset.ma57_part_solve_d(factors::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma57Control{Float64, Int32}},
                                         part::Cchar, nrhs::Int32, x::Ptr{Float64},
                                         info::Ptr{Int32})::Cvoid
end

function ma57_part_solve(::Type{Float128}, ::Type{Int32}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset.ma57_part_solve_q(factors::Ptr{Ptr{Cvoid}},
                                         control::Ref{Ma57Control{Float128, Int32}},
                                         part::Cchar, nrhs::Int32, x::Ptr{Float128},
                                         info::Ptr{Int32})::Cvoid
end

function ma57_part_solve(::Type{Float32}, ::Type{Int64}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset_64.ma57_part_solve_s_64(factors::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma57Control{Float32, Int64}},
                                               part::Cchar, nrhs::Int64, x::Ptr{Float32},
                                               info::Ptr{Int64})::Cvoid
end

function ma57_part_solve(::Type{Float64}, ::Type{Int64}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset_64.ma57_part_solve_d_64(factors::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma57Control{Float64, Int64}},
                                               part::Cchar, nrhs::Int64, x::Ptr{Float64},
                                               info::Ptr{Int64})::Cvoid
end

function ma57_part_solve(::Type{Float128}, ::Type{Int64}, factors, control, part, nrhs, x, info)
  @ccall libhsl_subset_64.ma57_part_solve_q_64(factors::Ptr{Ptr{Cvoid}},
                                               control::Ref{Ma57Control{Float128, Int64}},
                                               part::Cchar, nrhs::Int64, x::Ptr{Float128},
                                               info::Ptr{Int64})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float32}, ::Type{Int32}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset.ma57_sparse_lsolve_s(factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float32, Int32}},
                                            nzrhs::Int32, irhs::Ptr{Int32}, nzsoln::Ptr{Int32},
                                            isoln::Ptr{Int32}, x::Ptr{Float32},
                                            sinfo::Ref{Ma57Sinfo{Float32, Int32}})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float64}, ::Type{Int32}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset.ma57_sparse_lsolve_d(factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float64, Int32}},
                                            nzrhs::Int32, irhs::Ptr{Int32}, nzsoln::Ptr{Int32},
                                            isoln::Ptr{Int32}, x::Ptr{Float64},
                                            sinfo::Ref{Ma57Sinfo{Float64, Int32}})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float128}, ::Type{Int32}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset.ma57_sparse_lsolve_q(factors::Ptr{Ptr{Cvoid}},
                                            control::Ref{Ma57Control{Float128, Int32}},
                                            nzrhs::Int32, irhs::Ptr{Int32}, nzsoln::Ptr{Int32},
                                            isoln::Ptr{Int32}, x::Ptr{Float128},
                                            sinfo::Ref{Ma57Sinfo{Float128, Int32}})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float32}, ::Type{Int64}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset_64.ma57_sparse_lsolve_s_64(factors::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma57Control{Float32, Int64}},
                                                  nzrhs::Int64, irhs::Ptr{Int64},
                                                  nzsoln::Ptr{Int64},
                                                  isoln::Ptr{Int64}, x::Ptr{Float32},
                                                  sinfo::Ref{Ma57Sinfo{Float32, Int64}})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float64}, ::Type{Int64}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset_64.ma57_sparse_lsolve_d_64(factors::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma57Control{Float64, Int64}},
                                                  nzrhs::Int64, irhs::Ptr{Int64},
                                                  nzsoln::Ptr{Int64},
                                                  isoln::Ptr{Int64}, x::Ptr{Float64},
                                                  sinfo::Ref{Ma57Sinfo{Float64, Int64}})::Cvoid
end

function ma57_sparse_lsolve(::Type{Float128}, ::Type{Int64}, factors, control, nzrhs, irhs, nzsoln,
                            isoln, x, sinfo)
  @ccall libhsl_subset_64.ma57_sparse_lsolve_q_64(factors::Ptr{Ptr{Cvoid}},
                                                  control::Ref{Ma57Control{Float128, Int64}},
                                                  nzrhs::Int64, irhs::Ptr{Int64},
                                                  nzsoln::Ptr{Int64},
                                                  isoln::Ptr{Int64}, x::Ptr{Float128},
                                                  sinfo::Ref{Ma57Sinfo{Float128, Int64}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float32}, ::Type{Int32}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset.ma57_fredholm_alternative_s(factors::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma57Control{Float32, Int32}},
                                                   x::Ptr{Float32}, fredx::Ptr{Float32},
                                                   sinfo::Ref{Ma57Sinfo{Float32, Int32}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float64}, ::Type{Int32}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset.ma57_fredholm_alternative_d(factors::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma57Control{Float64, Int32}},
                                                   x::Ptr{Float64}, fredx::Ptr{Float64},
                                                   sinfo::Ref{Ma57Sinfo{Float64, Int32}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float128}, ::Type{Int32}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset.ma57_fredholm_alternative_q(factors::Ptr{Ptr{Cvoid}},
                                                   control::Ref{Ma57Control{Float128, Int32}},
                                                   x::Ptr{Float128}, fredx::Ptr{Float128},
                                                   sinfo::Ref{Ma57Sinfo{Float128, Int32}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float32}, ::Type{Int64}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset_64.ma57_fredholm_alternative_s_64(factors::Ptr{Ptr{Cvoid}},
                                                         control::Ref{Ma57Control{Float32, Int64}},
                                                         x::Ptr{Float32}, fredx::Ptr{Float32},
                                                         sinfo::Ref{Ma57Sinfo{Float32, Int64}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float64}, ::Type{Int64}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset_64.ma57_fredholm_alternative_d_64(factors::Ptr{Ptr{Cvoid}},
                                                         control::Ref{Ma57Control{Float64, Int64}},
                                                         x::Ptr{Float64}, fredx::Ptr{Float64},
                                                         sinfo::Ref{Ma57Sinfo{Float64, Int64}})::Cvoid
end

function ma57_fredholm_alternative(::Type{Float128}, ::Type{Int64}, factors, control, x, fredx,
                                   sinfo)
  @ccall libhsl_subset_64.ma57_fredholm_alternative_q_64(factors::Ptr{Ptr{Cvoid}},
                                                         control::Ref{Ma57Control{Float128, Int64}},
                                                         x::Ptr{Float128}, fredx::Ptr{Float128},
                                                         sinfo::Ref{Ma57Sinfo{Float128, Int64}})::Cvoid
end

function ma57_lmultiply(::Type{Float32}, ::Type{Int32}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset.ma57_lmultiply_s(factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float32, Int32}},
                                        trans::Cchar, x::Ptr{Float32}, y::Ptr{Float32},
                                        sinfo::Ref{Ma57Sinfo{Float32, Int32}})::Cvoid
end

function ma57_lmultiply(::Type{Float64}, ::Type{Int32}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset.ma57_lmultiply_d(factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float64, Int32}},
                                        trans::Cchar, x::Ptr{Float64}, y::Ptr{Float64},
                                        sinfo::Ref{Ma57Sinfo{Float64, Int32}})::Cvoid
end

function ma57_lmultiply(::Type{Float128}, ::Type{Int32}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset.ma57_lmultiply_q(factors::Ptr{Ptr{Cvoid}},
                                        control::Ref{Ma57Control{Float128, Int32}},
                                        trans::Cchar, x::Ptr{Float128}, y::Ptr{Float128},
                                        sinfo::Ref{Ma57Sinfo{Float128, Int32}})::Cvoid
end

function ma57_lmultiply(::Type{Float32}, ::Type{Int64}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset_64.ma57_lmultiply_s_64(factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float32, Int64}},
                                              trans::Cchar, x::Ptr{Float32}, y::Ptr{Float32},
                                              sinfo::Ref{Ma57Sinfo{Float32, Int64}})::Cvoid
end

function ma57_lmultiply(::Type{Float64}, ::Type{Int64}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset_64.ma57_lmultiply_d_64(factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float64, Int64}},
                                              trans::Cchar, x::Ptr{Float64}, y::Ptr{Float64},
                                              sinfo::Ref{Ma57Sinfo{Float64, Int64}})::Cvoid
end

function ma57_lmultiply(::Type{Float128}, ::Type{Int64}, factors, control, trans, x, y, sinfo)
  @ccall libhsl_subset_64.ma57_lmultiply_q_64(factors::Ptr{Ptr{Cvoid}},
                                              control::Ref{Ma57Control{Float128, Int64}},
                                              trans::Cchar, x::Ptr{Float128}, y::Ptr{Float128},
                                              sinfo::Ref{Ma57Sinfo{Float128, Int64}})::Cvoid
end

function ma57_get_factors(::Type{Float32}, ::Type{Int32}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset.ma57_get_factors_s(factors::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma57Control{Float32, Int32}},
                                          nzl::Ptr{Int32}, iptrl::Ptr{Int32}, lrows::Ptr{Int32},
                                          lvals::Ptr{Float32}, nzd::Ptr{Int32}, iptrd::Ptr{Int32},
                                          drows::Ptr{Int32}, dvals::Ptr{Float32}, perm::Ptr{Int32},
                                          invperm::Ptr{Int32}, scale::Ptr{Float32},
                                          sinfo::Ref{Ma57Sinfo{Float32, Int32}})::Cvoid
end

function ma57_get_factors(::Type{Float64}, ::Type{Int32}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset.ma57_get_factors_d(factors::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma57Control{Float64, Int32}},
                                          nzl::Ptr{Int32}, iptrl::Ptr{Int32}, lrows::Ptr{Int32},
                                          lvals::Ptr{Float64}, nzd::Ptr{Int32}, iptrd::Ptr{Int32},
                                          drows::Ptr{Int32}, dvals::Ptr{Float64}, perm::Ptr{Int32},
                                          invperm::Ptr{Int32}, scale::Ptr{Float64},
                                          sinfo::Ref{Ma57Sinfo{Float64, Int32}})::Cvoid
end

function ma57_get_factors(::Type{Float128}, ::Type{Int32}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset.ma57_get_factors_q(factors::Ptr{Ptr{Cvoid}},
                                          control::Ref{Ma57Control{Float128, Int32}},
                                          nzl::Ptr{Int32}, iptrl::Ptr{Int32}, lrows::Ptr{Int32},
                                          lvals::Ptr{Float128}, nzd::Ptr{Int32}, iptrd::Ptr{Int32},
                                          drows::Ptr{Int32}, dvals::Ptr{Float128}, perm::Ptr{Int32},
                                          invperm::Ptr{Int32}, scale::Ptr{Float128},
                                          sinfo::Ref{Ma57Sinfo{Float128, Int32}})::Cvoid
end

function ma57_get_factors(::Type{Float32}, ::Type{Int64}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset_64.ma57_get_factors_s_64(factors::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma57Control{Float32, Int64}},
                                                nzl::Ptr{Int64}, iptrl::Ptr{Int64},
                                                lrows::Ptr{Int64},
                                                lvals::Ptr{Float32}, nzd::Ptr{Int64},
                                                iptrd::Ptr{Int64},
                                                drows::Ptr{Int64}, dvals::Ptr{Float32},
                                                perm::Ptr{Int64},
                                                invperm::Ptr{Int64}, scale::Ptr{Float32},
                                                sinfo::Ref{Ma57Sinfo{Float32, Int64}})::Cvoid
end

function ma57_get_factors(::Type{Float64}, ::Type{Int64}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset_64.ma57_get_factors_d_64(factors::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma57Control{Float64, Int64}},
                                                nzl::Ptr{Int64}, iptrl::Ptr{Int64},
                                                lrows::Ptr{Int64},
                                                lvals::Ptr{Float64}, nzd::Ptr{Int64},
                                                iptrd::Ptr{Int64},
                                                drows::Ptr{Int64}, dvals::Ptr{Float64},
                                                perm::Ptr{Int64},
                                                invperm::Ptr{Int64}, scale::Ptr{Float64},
                                                sinfo::Ref{Ma57Sinfo{Float64, Int64}})::Cvoid
end

function ma57_get_factors(::Type{Float128}, ::Type{Int64}, factors, control, nzl, iptrl, lrows,
                          lvals, nzd, iptrd, drows, dvals,
                          perm, invperm, scale, sinfo)
  @ccall libhsl_subset_64.ma57_get_factors_q_64(factors::Ptr{Ptr{Cvoid}},
                                                control::Ref{Ma57Control{Float128, Int64}},
                                                nzl::Ptr{Int64}, iptrl::Ptr{Int64},
                                                lrows::Ptr{Int64},
                                                lvals::Ptr{Float128}, nzd::Ptr{Int64},
                                                iptrd::Ptr{Int64},
                                                drows::Ptr{Int64}, dvals::Ptr{Float128},
                                                perm::Ptr{Int64},
                                                invperm::Ptr{Int64}, scale::Ptr{Float128},
                                                sinfo::Ref{Ma57Sinfo{Float128, Int64}})::Cvoid
end
