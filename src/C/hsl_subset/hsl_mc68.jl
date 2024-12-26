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
end

function mc68_default_control(::Type{Int32}, control)
  @ccall libhsl_subset.mc68_default_control_d(control::Ref{Mc68Control{Int32}})::Cvoid
end

function mc68_default_control(::Type{Int64}, control)
  @ccall libhsl_subset_64.mc68_default_control_d_64(control::Ref{Mc68Control{Int64}})::Cvoid
end

function mc68_order(::Type{Int32}, ord, n, ptr, row, perm, control, info)
  @ccall libhsl_subset.mc68_order_d(ord::Int32, n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                    perm::Ptr{Int32},
                                    control::Ref{Mc68Control{Int32}},
                                    info::Ref{Mc68Info{Int32}})::Cvoid
end

function mc68_order(::Type{Int64}, ord, n, ptr, row, perm, control, info)
  @ccall libhsl_subset_64.mc68_order_d_64(ord::Int64, n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                          perm::Ptr{Int64},
                                          control::Ref{Mc68Control{Int64}},
                                          info::Ref{Mc68Info{Int64}})::Cvoid
end
