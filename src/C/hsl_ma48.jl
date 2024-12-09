function ma48_initialize_s(factors)
  @ccall libhsl.ma48_initialize_s(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

mutable struct ma48_control{T}
  f_arrays::Cint
  multiplier::T
  u::T
  switch_::T
  drop::T
  tolerance::T
  cgce::T
  lp::Cint
  wp::Cint
  mp::Cint
  ldiag::Cint
  btf::Cint
  struct_::Cint
  maxit::Cint
  factor_blocking::Cint
  solve_blas::Cint
  pivoting::Cint
  diagonal_pivoting::Cint
  fill_in::Cint
  switch_mode::Cint

  ma48_control{T}() where {T} = new()

  function ma48_control{T}(f_arrays, multiplier, u, switch_, drop, tolerance, cgce, lp, wp, mp,
                           ldiag, btf, struct_, maxit, factor_blocking, solve_blas, pivoting,
                           diagonal_pivoting, fill_in, switch_mode) where {T}
    return new(f_arrays, multiplier, u, switch_, drop, tolerance, cgce, lp, wp, mp, ldiag, btf,
               struct_, maxit, factor_blocking, solve_blas, pivoting, diagonal_pivoting, fill_in,
               switch_mode)
  end
end

function ma48_default_control_s(control)
  @ccall libhsl.ma48_default_control_s(control::Ref{ma48_control{Float32}})::Cvoid
end

mutable struct ma48_ainfo{T}
  ops::T
  flag::Cint
  more::Cint
  lena_analyse::Clong
  lenj_analyse::Clong
  lena_factorize::Clong
  leni_factorize::Clong
  ncmpa::Cint
  rank::Cint
  drop::Clong
  struc_rank::Cint
  oor::Clong
  dup::Clong
  stat::Cint
  lblock::Cint
  sblock::Cint
  tblock::Clong

  ma48_ainfo{T}() where {T} = new()

  function ma48_ainfo{T}(ops, flag, more, lena_analyse, lenj_analyse, lena_factorize,
                         leni_factorize, ncmpa, rank, drop, struc_rank, oor, dup, stat, lblock,
                         sblock, tblock) where {T}
    return new(ops, flag, more, lena_analyse, lenj_analyse, lena_factorize, leni_factorize, ncmpa,
               rank, drop, struc_rank, oor, dup, stat, lblock, sblock, tblock)
  end
end

mutable struct ma48_finfo{T}
  ops::T
  flag::Cint
  more::Cint
  size_factor::Clong
  lena_factorize::Clong
  leni_factorize::Clong
  drop::Clong
  rank::Cint
  stat::Cint

  ma48_finfo{T}() where {T} = new()

  function ma48_finfo{T}(ops, flag, more, size_factor, lena_factorize, leni_factorize, drop, rank,
                         stat) where {T}
    return new(ops, flag, more, size_factor, lena_factorize, leni_factorize, drop, rank, stat)
  end
end

function ma48_analyse_s(m, n, ne, row, col, val, factors, control, ainfo, finfo, perm, endcol)
  @ccall libhsl.ma48_analyse_s(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                               val::Ptr{Float32}, factors::Ptr{Cvoid},
                               control::Ref{ma48_control{Float32}}, ainfo::Ref{ma48_ainfo{Float32}},
                               finfo::Ref{ma48_finfo{Float32}}, perm::Ptr{Cint},
                               endcol::Ptr{Cint})::Cvoid
end

function ma48_get_perm_s(m, n, factors, perm, control)
  @ccall libhsl.ma48_get_perm_s(m::Cint, n::Cint, factors::Ptr{Cvoid}, perm::Ptr{Cint},
                                control::Ref{ma48_control{Float32}})::Cvoid
end

function ma48_factorize_s(m, n, ne, row, col, val, factors, control, finfo, fast, partial)
  @ccall libhsl.ma48_factorize_s(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                                 val::Ptr{Float32}, factors::Ptr{Cvoid},
                                 control::Ref{ma48_control{Float32}},
                                 finfo::Ref{ma48_finfo{Float32}}, fast::Cint,
                                 partial::Cint)::Cvoid
end

mutable struct ma48_sinfo
  flag::Cint
  more::Cint
  stat::Cint

  ma48_sinfo() = new()

  ma48_sinfo(flag, more, stat) = new(flag, more, stat)
end

function ma48_solve_s(m, n, ne, row, col, val, factors, rhs, x, control, sinfo, trans, resid, error)
  @ccall libhsl.ma48_solve_s(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                             val::Ptr{Float32}, factors::Ptr{Cvoid},
                             rhs::Ptr{Float32}, x::Ptr{Float32},
                             control::Ref{ma48_control{Float32}}, sinfo::Ref{ma48_sinfo},
                             trans::Cint,
                             resid::Ptr{Float32}, error::Ptr{Float32})::Cvoid
end

function ma48_finalize_s(factors, control)
  @ccall libhsl.ma48_finalize_s(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma48_control{Float32}})::Cint
end

function ma48_special_rows_and_cols_s(factors, rank, rows, cols, control)
  @ccall libhsl.ma48_special_rows_and_cols_s(factors::Ptr{Cvoid}, rank::Ptr{Cint}, rows::Ptr{Cint},
                                             cols::Ptr{Cint},
                                             control::Ref{ma48_control{Float32}})::Cint
end

function ma48_determinant_s(factors, sgndet, logdet, control)
  @ccall libhsl.ma48_determinant_s(factors::Ptr{Cvoid}, sgndet::Ptr{Cint},
                                   logdet::Ptr{Float32}, control::Ref{ma48_control{Float32}})::Cint
end

function ma48_initialize_d(factors)
  @ccall libhsl.ma48_initialize_d(factors::Ptr{Ptr{Cvoid}})::Cvoid
end

function ma48_default_control_d(control)
  @ccall libhsl.ma48_default_control_d(control::Ref{ma48_control{Float64}})::Cvoid
end

function ma48_analyse_d(m, n, ne, row, col, val, factors, control, ainfo, finfo, perm, endcol)
  @ccall libhsl.ma48_analyse_d(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                               val::Ptr{Float64}, factors::Ptr{Cvoid},
                               control::Ref{ma48_control{Float64}}, ainfo::Ref{ma48_ainfo{Float64}},
                               finfo::Ref{ma48_finfo{Float64}}, perm::Ptr{Cint},
                               endcol::Ptr{Cint})::Cvoid
end

function ma48_get_perm_d(m, n, factors, perm, control)
  @ccall libhsl.ma48_get_perm_d(m::Cint, n::Cint, factors::Ptr{Cvoid}, perm::Ptr{Cint},
                                control::Ref{ma48_control{Float64}})::Cvoid
end

function ma48_factorize_d(m, n, ne, row, col, val, factors, control, finfo, fast, partial)
  @ccall libhsl.ma48_factorize_d(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                                 val::Ptr{Float64}, factors::Ptr{Cvoid},
                                 control::Ref{ma48_control{Float64}},
                                 finfo::Ref{ma48_finfo{Float64}}, fast::Cint,
                                 partial::Cint)::Cvoid
end

function ma48_solve_d(m, n, ne, row, col, val, factors, rhs, x, control, sinfo, trans, resid, error)
  @ccall libhsl.ma48_solve_d(m::Cint, n::Cint, ne::Clong, row::Ptr{Cint}, col::Ptr{Cint},
                             val::Ptr{Float64}, factors::Ptr{Cvoid},
                             rhs::Ptr{Float64}, x::Ptr{Float64},
                             control::Ref{ma48_control{Float64}}, sinfo::Ref{ma48_sinfo},
                             trans::Cint,
                             resid::Ptr{Float64}, error::Ptr{Float64})::Cvoid
end

function ma48_finalize_d(factors, control)
  @ccall libhsl.ma48_finalize_d(factors::Ptr{Ptr{Cvoid}}, control::Ref{ma48_control{Float64}})::Cint
end

function ma48_special_rows_and_cols_d(factors, rank, rows, cols, control)
  @ccall libhsl.ma48_special_rows_and_cols_d(factors::Ptr{Cvoid}, rank::Ptr{Cint}, rows::Ptr{Cint},
                                             cols::Ptr{Cint},
                                             control::Ref{ma48_control{Float64}})::Cint
end

function ma48_determinant_d(factors, sgndet, logdet, control)
  @ccall libhsl.ma48_determinant_d(factors::Ptr{Cvoid}, sgndet::Ptr{Cint},
                                   logdet::Ptr{Float64}, control::Ref{ma48_control{Float64}})::Cint
end
