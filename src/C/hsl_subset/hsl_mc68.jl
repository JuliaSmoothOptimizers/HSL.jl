mutable struct Mc68Control{INT}
  f_array_in::INT
  f_array_out::INT
  min_l_workspace::INT
  lp::INT
  wp::INT
  mp::INT
  nemin::INT
  print_level::INT
  row_full_thresh::INT
  row_search::INT

  Mc68Control{INT}() where {INT} = new{INT}()

  function Mc68Control{INT}(f_array_in, f_array_out, min_l_workspace, lp, wp, mp, nemin,
                            print_level, row_full_thresh, row_search) where {INT}
    return new{INT}(f_array_in, f_array_out, min_l_workspace, lp, wp, mp, nemin, print_level,
                    row_full_thresh, row_search)
  end
end

mutable struct Mc68Info{INT}
  flag::INT
  iostat::INT
  stat::INT
  out_range::INT
  duplicate::INT
  n_compressions::INT
  n_zero_eigs::INT
  l_workspace::Int64
  zb01_info::INT
  n_dense_rows::INT

  Mc68Info{INT}() where {INT} = new{INT}()

  function Mc68Info{INT}(flag, iostat, stat, out_range, duplicate, n_compressions, n_zero_eigs,
                         l_workspace, zb01_info, n_dense_rows) where {INT}
    return new{INT}(flag, iostat, stat, out_range, duplicate, n_compressions, n_zero_eigs,
                    l_workspace, zb01_info, n_dense_rows)
  end
end

function mc68_default_control(::Type{Int32}, control)
  @ccall libhsl_subset.mc68_default_control_i(control::Ref{Mc68Control{Int32}})::Cvoid
end

function mc68_default_control(::Type{Int64}, control)
  @ccall libhsl_subset_64.mc68_default_control_i_64(control::Ref{Mc68Control{Int64}})::Cvoid
end

function mc68_order(::Type{Int32}, ord, n, ptr, row, perm, control, info)
  @ccall libhsl_subset.mc68_order_i(ord::Int32, n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                    perm::Ptr{Int32},
                                    control::Ref{Mc68Control{Int32}},
                                    info::Ref{Mc68Info{Int32}})::Cvoid
end

function mc68_order(::Type{Int64}, ord, n, ptr, row, perm, control, info)
  @ccall libhsl_subset_64.mc68_order_i_64(ord::Int64, n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                          perm::Ptr{Int64},
                                          control::Ref{Mc68Control{Int64}},
                                          info::Ref{Mc68Info{Int64}})::Cvoid
end
