mutable struct Ma48Control{T, INT}
  f_arrays::INT
  multiplier::T
  u::T
  switch_::T
  drop::T
  tolerance::T
  cgce::T
  lp::INT
  wp::INT
  mp::INT
  ldiag::INT
  btf::INT
  struct_::INT
  maxit::INT
  factor_blocking::INT
  solve_blas::INT
  pivoting::INT
  diagonal_pivoting::INT
  fill_in::INT
  switch_mode::INT

  Ma48Control{T, INT}() where {T,INT} = new{T, INT}()

  function Ma48Control{T, INT}(f_arrays, multiplier, u, switch_, drop, tolerance, cgce, lp, wp, mp,
                               ldiag, btf, struct_, maxit, factor_blocking, solve_blas, pivoting,
                               diagonal_pivoting, fill_in, switch_mode) where {T,INT}
    return new{T, INT}(f_arrays, multiplier, u, switch_, drop, tolerance, cgce, lp, wp, mp, ldiag,
                       btf, struct_, maxit, factor_blocking, solve_blas, pivoting,
                       diagonal_pivoting, fill_in, switch_mode)
  end
end

mutable struct Ma48Ainfo{T, INT}
  ops::T
  flag::INT
  more::INT
  lena_analyse::Int64
  lenj_analyse::Int64
  lena_factorize::Int64
  leni_factorize::Int64
  ncmpa::INT
  rank::INT
  drop::Int64
  struc_rank::INT
  oor::Int64
  dup::Int64
  stat::INT
  lblock::INT
  sblock::INT
  tblock::Int64

  Ma48Ainfo{T, INT}() where {T,INT} = new{T, INT}()

  function Ma48Ainfo{T, INT}(ops, flag, more, lena_analyse, lenj_analyse, lena_factorize,
                             leni_factorize, ncmpa, rank, drop, struc_rank, oor, dup, stat, lblock,
                             sblock, tblock) where {T,INT}
    return new{T, INT}(ops, flag, more, lena_analyse, lenj_analyse, lena_factorize, leni_factorize,
                       ncmpa, rank, drop, struc_rank, oor, dup, stat, lblock, sblock, tblock)
  end
end

mutable struct Ma48Finfo{T, INT}
  ops::T
  flag::INT
  more::INT
  size_factor::Int64
  lena_factorize::Int64
  leni_factorize::Int64
  drop::Int64
  rank::INT
  stat::INT

  Ma48Finfo{T, INT}() where {T,INT} = new{T, INT}()

  function Ma48Finfo{T, INT}(ops, flag, more, size_factor, lena_factorize, leni_factorize, drop,
                             rank, stat) where {T,INT}
    return new{T, INT}(ops, flag, more, size_factor, lena_factorize, leni_factorize, drop, rank,
                       stat)
  end
end

mutable struct Ma48Sinfo{INT}
  flag::INT
  more::INT
  stat::INT

  Ma48Sinfo{INT}() where {INT} = new{INT}()

  Ma48Sinfo{INT}(flag, more, stat) where {INT} = new{INT}(flag, more, stat)
end

function ma48_initialize(::Type{Float32}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma48_initialize_s(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_initialize(::Type{Float64}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma48_initialize_d(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_initialize(::Type{Float128}, ::Type{Int32}, factors)
  @ccall libhsl_subset.ma48_initialize_q(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_initialize(::Type{Float32}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma48_initialize_s_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_initialize(::Type{Float64}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma48_initialize_d_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_initialize(::Type{Float128}, ::Type{Int64}, factors)
  @ccall libhsl_subset_64.ma48_initialize_q_64(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma48_default_control_s(control::Ref{Ma48Control{Float32, Int32}})::Cvoid
end

function ma48_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma48_default_control_d(control::Ref{Ma48Control{Float64, Int32}})::Cvoid
end

function ma48_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.ma48_default_control_q(control::Ref{Ma48Control{Float128, Int32}})::Cvoid
end

function ma48_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma48_default_control_s_64(control::Ref{Ma48Control{Float32, Int64}})::Cvoid
end

function ma48_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma48_default_control_d_64(control::Ref{Ma48Control{Float64, Int64}})::Cvoid
end

function ma48_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.ma48_default_control_q_64(control::Ref{Ma48Control{Float128, Int64}})::Cvoid
end

function ma48_analyse(::Type{Float32}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset.ma48_analyse_s(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                      col::Ptr{Int32},
                                      val::Ptr{Float32}, factors::Ptr{Cvoid},
                                      control::Ref{Ma48Control{Float32, Int32}},
                                      ainfo::Ref{Ma48Ainfo{Float32, Int32}},
                                      finfo::Ref{Ma48Finfo{Float32, Int32}}, perm::Ptr{Int32},
                                      endcol::Ptr{Int32})::Cvoid
end

function ma48_analyse(::Type{Float64}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset.ma48_analyse_d(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                      col::Ptr{Int32},
                                      val::Ptr{Float64}, factors::Ptr{Cvoid},
                                      control::Ref{Ma48Control{Float64, Int32}},
                                      ainfo::Ref{Ma48Ainfo{Float64, Int32}},
                                      finfo::Ref{Ma48Finfo{Float64, Int32}}, perm::Ptr{Int32},
                                      endcol::Ptr{Int32})::Cvoid
end

function ma48_analyse(::Type{Float128}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset.ma48_analyse_q(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                      col::Ptr{Int32},
                                      val::Ptr{Float128}, factors::Ptr{Cvoid},
                                      control::Ref{Ma48Control{Float128, Int32}},
                                      ainfo::Ref{Ma48Ainfo{Float128, Int32}},
                                      finfo::Ref{Ma48Finfo{Float128, Int32}}, perm::Ptr{Int32},
                                      endcol::Ptr{Int32})::Cvoid
end

function ma48_analyse(::Type{Float32}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset_64.ma48_analyse_s_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                            col::Ptr{Int64},
                                            val::Ptr{Float32}, factors::Ptr{Cvoid},
                                            control::Ref{Ma48Control{Float32, Int64}},
                                            ainfo::Ref{Ma48Ainfo{Float32, Int64}},
                                            finfo::Ref{Ma48Finfo{Float32, Int64}}, perm::Ptr{Int64},
                                            endcol::Ptr{Int64})::Cvoid
end

function ma48_analyse(::Type{Float64}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset_64.ma48_analyse_d_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                            col::Ptr{Int64},
                                            val::Ptr{Float64}, factors::Ptr{Cvoid},
                                            control::Ref{Ma48Control{Float64, Int64}},
                                            ainfo::Ref{Ma48Ainfo{Float64, Int64}},
                                            finfo::Ref{Ma48Finfo{Float64, Int64}}, perm::Ptr{Int64},
                                            endcol::Ptr{Int64})::Cvoid
end

function ma48_analyse(::Type{Float128}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                      ainfo, finfo, perm, endcol)
  @ccall libhsl_subset_64.ma48_analyse_q_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                            col::Ptr{Int64},
                                            val::Ptr{Float128}, factors::Ptr{Cvoid},
                                            control::Ref{Ma48Control{Float128, Int64}},
                                            ainfo::Ref{Ma48Ainfo{Float128, Int64}},
                                            finfo::Ref{Ma48Finfo{Float128, Int64}},
                                            perm::Ptr{Int64},
                                            endcol::Ptr{Int64})::Cvoid
end

function ma48_get_perm(::Type{Float32}, ::Type{Int32}, m, n, factors, perm, control)
  @ccall libhsl_subset.ma48_get_perm_s(m::Int32, n::Int32, factors::Ptr{Cvoid}, perm::Ptr{Int32},
                                       control::Ref{Ma48Control{Float32, Int32}})::Cvoid
end

function ma48_get_perm(::Type{Float64}, ::Type{Int32}, m, n, factors, perm, control)
  @ccall libhsl_subset.ma48_get_perm_d(m::Int32, n::Int32, factors::Ptr{Cvoid}, perm::Ptr{Int32},
                                       control::Ref{Ma48Control{Float64, Int32}})::Cvoid
end

function ma48_get_perm(::Type{Float128}, ::Type{Int32}, m, n, factors, perm, control)
  @ccall libhsl_subset.ma48_get_perm_q(m::Int32, n::Int32, factors::Ptr{Cvoid}, perm::Ptr{Int32},
                                       control::Ref{Ma48Control{Float128, Int32}})::Cvoid
end

function ma48_get_perm(::Type{Float32}, ::Type{Int64}, m, n, factors, perm, control)
  @ccall libhsl_subset_64.ma48_get_perm_s_64(m::Int64, n::Int64, factors::Ptr{Cvoid},
                                             perm::Ptr{Int64},
                                             control::Ref{Ma48Control{Float32, Int64}})::Cvoid
end

function ma48_get_perm(::Type{Float64}, ::Type{Int64}, m, n, factors, perm, control)
  @ccall libhsl_subset_64.ma48_get_perm_d_64(m::Int64, n::Int64, factors::Ptr{Cvoid},
                                             perm::Ptr{Int64},
                                             control::Ref{Ma48Control{Float64, Int64}})::Cvoid
end

function ma48_get_perm(::Type{Float128}, ::Type{Int64}, m, n, factors, perm, control)
  @ccall libhsl_subset_64.ma48_get_perm_q_64(m::Int64, n::Int64, factors::Ptr{Cvoid},
                                             perm::Ptr{Int64},
                                             control::Ref{Ma48Control{Float128, Int64}})::Cvoid
end

function ma48_factorize(::Type{Float32}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset.ma48_factorize_s(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                        col::Ptr{Int32},
                                        val::Ptr{Float32}, factors::Ptr{Cvoid},
                                        control::Ref{Ma48Control{Float32, Int32}},
                                        finfo::Ref{Ma48Finfo{Float32, Int32}}, fast::Int32,
                                        partial::Int32)::Cvoid
end

function ma48_factorize(::Type{Float64}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset.ma48_factorize_d(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                        col::Ptr{Int32},
                                        val::Ptr{Float64}, factors::Ptr{Cvoid},
                                        control::Ref{Ma48Control{Float64, Int32}},
                                        finfo::Ref{Ma48Finfo{Float64, Int32}}, fast::Int32,
                                        partial::Int32)::Cvoid
end

function ma48_factorize(::Type{Float128}, ::Type{Int32}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset.ma48_factorize_q(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32},
                                        col::Ptr{Int32},
                                        val::Ptr{Float128}, factors::Ptr{Cvoid},
                                        control::Ref{Ma48Control{Float128, Int32}},
                                        finfo::Ref{Ma48Finfo{Float128, Int32}}, fast::Int32,
                                        partial::Int32)::Cvoid
end

function ma48_factorize(::Type{Float32}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset_64.ma48_factorize_s_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                              col::Ptr{Int64},
                                              val::Ptr{Float32}, factors::Ptr{Cvoid},
                                              control::Ref{Ma48Control{Float32, Int64}},
                                              finfo::Ref{Ma48Finfo{Float32, Int64}}, fast::Int64,
                                              partial::Int64)::Cvoid
end

function ma48_factorize(::Type{Float64}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset_64.ma48_factorize_d_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                              col::Ptr{Int64},
                                              val::Ptr{Float64}, factors::Ptr{Cvoid},
                                              control::Ref{Ma48Control{Float64, Int64}},
                                              finfo::Ref{Ma48Finfo{Float64, Int64}}, fast::Int64,
                                              partial::Int64)::Cvoid
end

function ma48_factorize(::Type{Float128}, ::Type{Int64}, m, n, ne, row, col, val, factors, control,
                        finfo, fast, partial)
  @ccall libhsl_subset_64.ma48_factorize_q_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                              col::Ptr{Int64},
                                              val::Ptr{Float128}, factors::Ptr{Cvoid},
                                              control::Ref{Ma48Control{Float128, Int64}},
                                              finfo::Ref{Ma48Finfo{Float128, Int64}}, fast::Int64,
                                              partial::Int64)::Cvoid
end

function ma48_solve(::Type{Float32}, ::Type{Int32}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset.ma48_solve_s(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float32}, factors::Ptr{Cvoid}, rhs::Ptr{Float32},
                                    x::Ptr{Float32},
                                    control::Ref{Ma48Control{Float32, Int32}},
                                    sinfo::Ref{Ma48Sinfo{Int32}}, trans::Int32,
                                    resid::Ptr{Float32}, error::Ptr{Float32})::Cvoid
end

function ma48_solve(::Type{Float64}, ::Type{Int32}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset.ma48_solve_d(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float64}, factors::Ptr{Cvoid}, rhs::Ptr{Float64},
                                    x::Ptr{Float64},
                                    control::Ref{Ma48Control{Float64, Int32}},
                                    sinfo::Ref{Ma48Sinfo{Int32}}, trans::Int32,
                                    resid::Ptr{Float64}, error::Ptr{Float64})::Cvoid
end

function ma48_solve(::Type{Float128}, ::Type{Int32}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset.ma48_solve_q(m::Int32, n::Int32, ne::Int64, row::Ptr{Int32}, col::Ptr{Int32},
                                    val::Ptr{Float128}, factors::Ptr{Cvoid}, rhs::Ptr{Float128},
                                    x::Ptr{Float128},
                                    control::Ref{Ma48Control{Float128, Int32}},
                                    sinfo::Ref{Ma48Sinfo{Int32}}, trans::Int32,
                                    resid::Ptr{Float128}, error::Ptr{Float128})::Cvoid
end

function ma48_solve(::Type{Float32}, ::Type{Int64}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset_64.ma48_solve_s_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                          col::Ptr{Int64},
                                          val::Ptr{Float32}, factors::Ptr{Cvoid}, rhs::Ptr{Float32},
                                          x::Ptr{Float32},
                                          control::Ref{Ma48Control{Float32, Int64}},
                                          sinfo::Ref{Ma48Sinfo{Int64}}, trans::Int64,
                                          resid::Ptr{Float32}, error::Ptr{Float32})::Cvoid
end

function ma48_solve(::Type{Float64}, ::Type{Int64}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset_64.ma48_solve_d_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                          col::Ptr{Int64},
                                          val::Ptr{Float64}, factors::Ptr{Cvoid}, rhs::Ptr{Float64},
                                          x::Ptr{Float64},
                                          control::Ref{Ma48Control{Float64, Int64}},
                                          sinfo::Ref{Ma48Sinfo{Int64}}, trans::Int64,
                                          resid::Ptr{Float64}, error::Ptr{Float64})::Cvoid
end

function ma48_solve(::Type{Float128}, ::Type{Int64}, m, n, ne, row, col, val, factors, rhs, x,
                    control, sinfo, trans, resid, error)
  @ccall libhsl_subset_64.ma48_solve_q_64(m::Int64, n::Int64, ne::Int64, row::Ptr{Int64},
                                          col::Ptr{Int64},
                                          val::Ptr{Float128}, factors::Ptr{Cvoid},
                                          rhs::Ptr{Float128}, x::Ptr{Float128},
                                          control::Ref{Ma48Control{Float128, Int64}},
                                          sinfo::Ref{Ma48Sinfo{Int64}}, trans::Int64,
                                          resid::Ptr{Float128}, error::Ptr{Float128})::Cvoid
end

function ma48_finalize(::Type{Float32}, ::Type{Int32}, factors, control)
  @ccall libhsl_subset.ma48_finalize_s(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma48Control{Float32, Int32}})::Int32
end

function ma48_finalize(::Type{Float64}, ::Type{Int32}, factors, control)
  @ccall libhsl_subset.ma48_finalize_d(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma48Control{Float64, Int32}})::Int32
end

function ma48_finalize(::Type{Float128}, ::Type{Int32}, factors, control)
  @ccall libhsl_subset.ma48_finalize_q(factors::Ptr{Ptr{Cvoid}},
                                       control::Ref{Ma48Control{Float128, Int32}})::Int32
end

function ma48_finalize(::Type{Float32}, ::Type{Int64}, factors, control)
  @ccall libhsl_subset_64.ma48_finalize_s_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma48Control{Float32, Int64}})::Int64
end

function ma48_finalize(::Type{Float64}, ::Type{Int64}, factors, control)
  @ccall libhsl_subset_64.ma48_finalize_d_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma48Control{Float64, Int64}})::Int64
end

function ma48_finalize(::Type{Float128}, ::Type{Int64}, factors, control)
  @ccall libhsl_subset_64.ma48_finalize_q_64(factors::Ptr{Ptr{Cvoid}},
                                             control::Ref{Ma48Control{Float128, Int64}})::Int64
end

function ma48_special_rows_and_cols(::Type{Float32}, ::Type{Int32}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset.ma48_special_rows_and_cols_s(factors::Ptr{Cvoid}, rank::Ptr{Int32},
                                                    rows::Ptr{Int32},
                                                    cols::Ptr{Int32},
                                                    control::Ref{Ma48Control{Float32, Int32}})::Int32
end

function ma48_special_rows_and_cols(::Type{Float64}, ::Type{Int32}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset.ma48_special_rows_and_cols_d(factors::Ptr{Cvoid}, rank::Ptr{Int32},
                                                    rows::Ptr{Int32},
                                                    cols::Ptr{Int32},
                                                    control::Ref{Ma48Control{Float64, Int32}})::Int32
end

function ma48_special_rows_and_cols(::Type{Float128}, ::Type{Int32}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset.ma48_special_rows_and_cols_q(factors::Ptr{Cvoid}, rank::Ptr{Int32},
                                                    rows::Ptr{Int32},
                                                    cols::Ptr{Int32},
                                                    control::Ref{Ma48Control{Float128, Int32}})::Int32
end

function ma48_special_rows_and_cols(::Type{Float32}, ::Type{Int64}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset_64.ma48_special_rows_and_cols_s_64(factors::Ptr{Cvoid}, rank::Ptr{Int64},
                                                          rows::Ptr{Int64},
                                                          cols::Ptr{Int64},
                                                          control::Ref{Ma48Control{Float32, Int64}})::Int64
end

function ma48_special_rows_and_cols(::Type{Float64}, ::Type{Int64}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset_64.ma48_special_rows_and_cols_d_64(factors::Ptr{Cvoid}, rank::Ptr{Int64},
                                                          rows::Ptr{Int64},
                                                          cols::Ptr{Int64},
                                                          control::Ref{Ma48Control{Float64, Int64}})::Int64
end

function ma48_special_rows_and_cols(::Type{Float128}, ::Type{Int64}, factors, rank, rows, cols,
                                    control)
  @ccall libhsl_subset_64.ma48_special_rows_and_cols_q_64(factors::Ptr{Cvoid}, rank::Ptr{Int64},
                                                          rows::Ptr{Int64},
                                                          cols::Ptr{Int64},
                                                          control::Ref{Ma48Control{Float128, Int64}})::Int64
end

function ma48_determinant(::Type{Float32}, ::Type{Int32}, factors, sgndet, logdet, control)
  @ccall libhsl_subset.ma48_determinant_s(factors::Ptr{Cvoid}, sgndet::Ptr{Int32},
                                          logdet::Ptr{Float32},
                                          control::Ref{Ma48Control{Float32, Int32}})::Int32
end

function ma48_determinant(::Type{Float64}, ::Type{Int32}, factors, sgndet, logdet, control)
  @ccall libhsl_subset.ma48_determinant_d(factors::Ptr{Cvoid}, sgndet::Ptr{Int32},
                                          logdet::Ptr{Float64},
                                          control::Ref{Ma48Control{Float64, Int32}})::Int32
end

function ma48_determinant(::Type{Float128}, ::Type{Int32}, factors, sgndet, logdet, control)
  @ccall libhsl_subset.ma48_determinant_q(factors::Ptr{Cvoid}, sgndet::Ptr{Int32},
                                          logdet::Ptr{Float128},
                                          control::Ref{Ma48Control{Float128, Int32}})::Int32
end

function ma48_determinant(::Type{Float32}, ::Type{Int64}, factors, sgndet, logdet, control)
  @ccall libhsl_subset_64.ma48_determinant_s_64(factors::Ptr{Cvoid}, sgndet::Ptr{Int64},
                                                logdet::Ptr{Float32},
                                                control::Ref{Ma48Control{Float32, Int64}})::Int64
end

function ma48_determinant(::Type{Float64}, ::Type{Int64}, factors, sgndet, logdet, control)
  @ccall libhsl_subset_64.ma48_determinant_d_64(factors::Ptr{Cvoid}, sgndet::Ptr{Int64},
                                                logdet::Ptr{Float64},
                                                control::Ref{Ma48Control{Float64, Int64}})::Int64
end

function ma48_determinant(::Type{Float128}, ::Type{Int64}, factors, sgndet, logdet, control)
  @ccall libhsl_subset_64.ma48_determinant_q_64(factors::Ptr{Cvoid}, sgndet::Ptr{Int64},
                                                logdet::Ptr{Float128},
                                                control::Ref{Ma48Control{Float128, Int64}})::Int64
end
