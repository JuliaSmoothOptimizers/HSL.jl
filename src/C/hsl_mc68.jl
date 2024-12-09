mutable struct mc68_control
  f_array_in::Cint
  f_array_out::Cint
  min_l_workspace::Cint
  lp::Cint
  wp::Cint
  mp::Cint
  nemin::Cint
  print_level::Cint
  row_full_thresh::Cint
  row_search::Cint

  mc68_control() = new()

  function mc68_control(f_array_in, f_array_out, min_l_workspace, lp, wp, mp, nemin, print_level,
                        row_full_thresh, row_search)
    return new(f_array_in, f_array_out, min_l_workspace, lp, wp, mp, nemin, print_level,
               row_full_thresh, row_search)
  end
end

function mc68_default_control_i(control)
  @ccall libhsl.mc68_default_control_i(control::Ref{mc68_control})::Cvoid
end

mutable struct mc68_info
  flag::Cint
  iostat::Cint
  stat::Cint
  out_range::Cint
  duplicate::Cint
  n_compressions::Cint
  n_zero_eigs::Cint
  l_workspace::Clong
  zb01_info::Cint
  n_dense_rows::Cint

  mc68_info() = new()

  function mc68_info(flag, iostat, stat, out_range, duplicate, n_compressions, n_zero_eigs,
                     l_workspace, zb01_info, n_dense_rows)
    return new(flag, iostat, stat, out_range, duplicate, n_compressions, n_zero_eigs, l_workspace,
               zb01_info, n_dense_rows)
  end
end

function mc68_order_i(ord, n, ptr, row, perm, control, info)
  @ccall libhsl.mc68_order_i(ord::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint}, perm::Ptr{Cint},
                             control::Ref{mc68_control}, info::Ref{mc68_info})::Cvoid
end
