mutable struct mc78_control
    f_arrays::Cint
    heuristic::Cint
    nrelax::NTuple{3,Cint}
    zrelax::NTuple{3,Cdouble}
    nemin::Cint
    unit_error::Cint
    unit_warning::Cint
    ssa_abort::Cint
    svar::Cint
    sort::Cint
    lopt::Cint
end

function mc78_default_control_i(control)
    @ccall libhsl.mc78_default_control_i(control::Ptr{mc78_control})::Cvoid
end

function mc78_analyse_asm_i(n, ptr, row, perm, nnodes, sptr, sparent, rptr, rlist, control,
                            stat, nfact, nflops, piv_size)
    @ccall libhsl.mc78_analyse_asm_i(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                     perm::Ptr{Cint}, nnodes::Ptr{Cint},
                                     sptr::Ptr{Ptr{Cint}}, sparent::Ptr{Ptr{Cint}},
                                     rptr::Ptr{Ptr{Clong}}, rlist::Ptr{Ptr{Cint}},
                                     control::Ptr{mc78_control}, stat::Ptr{Cint},
                                     nfact::Ptr{Clong}, nflops::Ptr{Clong},
                                     piv_size::Ptr{Cint})::Cint
end

function mc78_analyse_elt_i(n, nelt, starts, vars, perm, eparent, nnodes, sptr, sparent,
                            rptr, rlist, control, stat, nfact, nflops, piv_size)
    @ccall libhsl.mc78_analyse_elt_i(n::Cint, nelt::Cint, starts::Ptr{Cint},
                                     vars::Ptr{Cint}, perm::Ptr{Cint}, eparent::Ptr{Cint},
                                     nnodes::Ptr{Cint}, sptr::Ptr{Ptr{Cint}},
                                     sparent::Ptr{Ptr{Cint}}, rptr::Ptr{Ptr{Clong}},
                                     rlist::Ptr{Ptr{Cint}}, control::Ptr{mc78_control},
                                     stat::Ptr{Cint}, nfact::Ptr{Clong}, nflops::Ptr{Clong},
                                     piv_size::Ptr{Cint})::Cint
end

function mc78_supervars_i(n, ptr, row, perm, invp, nsvar, svar)
    @ccall libhsl.mc78_supervars_i(n::Ptr{Cint}, ptr::Ptr{Cint}, row::Ptr{Cint},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Ptr{Cint},
                                   svar::Ptr{Cint})::Cint
end

function mc78_compress_by_svar_i(n, ptr, row, invp, nsvar, svar, ptr2, lrow2, row2, st)
    @ccall libhsl.mc78_compress_by_svar_i(n::Cint, ptr::Ptr{Cint},
                                          row::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Cint,
                                          svar::Ptr{Cint}, ptr2::Ptr{Cint},
                                          lrow2::Cint, row2::Ptr{Cint},
                                          st::Ptr{Cint})::Cint
end

function mc78_etree_i(n, ptr, row, perm, invp, parent)
    @ccall libhsl.mc78_etree_i(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                               perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint})::Cint
end

function mc78_elt_equiv_etree_i(n, nelt, starts, vars, perm, invp, nsvar, svar, ptr, row,
                                eparent, parent, block_pivots)
    @ccall libhsl.mc78_elt_equiv_etree_i(n::Ptr{Cint}, nelt::Cint,
                                         starts::Ptr{Cint}, vars::Ptr{Cint},
                                         perm::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Ptr{Cint},
                                         svar::Ptr{Cint}, ptr::Ptr{Cint},
                                         row::Ptr{Cint}, eparent::Ptr{Cint},
                                         parent::Ptr{Cint}, block_pivots::Ptr{Cint})::Cint
end

function mc78_postorder_i(n, realn, ptr, perm, invp, parent, block_pivots)
    @ccall libhsl.mc78_postorder_i(n::Cint, realn::Ptr{Cint}, ptr::Ptr{Cint},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint},
                                   block_pivots::Ptr{Cint})::Cint
end

function mc78_col_counts_i(n, ptr, row, perm, invp, parent, cc, wt)
    @ccall libhsl.mc78_col_counts_i(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                    perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint},
                                    cc::Ptr{Cint}, wt::Ptr{Cint})::Cint
end

function mc78_supernodes_i(n, realn, parent, cc, sperm, nnodes, sptr, sparent, scc, invp,
                           control, st, wt, block_pivots)
    @ccall libhsl.mc78_supernodes_i(n::Cint, realn::Cint, parent::Ptr{Cint}, cc::Ptr{Cint},
                                    sperm::Ptr{Cint}, nnodes::Ptr{Cint}, sptr::Ptr{Cint},
                                    sparent::Ptr{Cint}, scc::Ptr{Cint}, invp::Ptr{Cint},
                                    control::Ptr{mc78_control}, st::Ptr{Cint},
                                    wt::Ptr{Cint}, block_pivots::Ptr{Cint})::Cint
end

function mc78_stats_i(nnodes, sptr, scc, nfact, nflops)
    @ccall libhsl.mc78_stats_i(nnodes::Cint, sptr::Ptr{Cint}, scc::Ptr{Cint},
                               nfact::Ptr{Clong}, nflops::Ptr{Clong})::Cvoid
end

function mc78_optimize_locality_i(n, realn, perm, invp, nnodes, sptr, sparent, rptr, rlist,
                                  sort)
    @ccall libhsl.mc78_optimize_locality_i(n::Cint, realn::Cint, perm::Ptr{Cint},
                                           invp::Ptr{Cint}, nnodes::Cint, sptr::Ptr{Cint},
                                           sparent::Ptr{Cint}, rptr::Ptr{Clong},
                                           rlist::Ptr{Cint}, sort::Cint)::Cint
end

function mc78_row_lists_i(nsvar, svar, n, ptr, row, perm, invp, nnodes, sptr, sparent, scc,
                          rptr, rlist, control, st)
    @ccall libhsl.mc78_row_lists_i(nsvar::Cint, svar::Ptr{Cint}, n::Cint,
                                   ptr::Ptr{Cint}, row::Ptr{Cint},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, nnodes::Cint,
                                   sptr::Ptr{Cint}, sparent::Ptr{Cint}, scc::Ptr{Cint},
                                   rptr::Ptr{Clong}, rlist::Ptr{Cint},
                                   control::Ptr{mc78_control}, st::Ptr{Cint})::Cint
end

function mc78_default_control_l(control)
    @ccall libhsl.mc78_default_control_l(control::Ptr{mc78_control})::Cvoid
end

function mc78_analyse_asm_l(n, ptr, row, perm, nnodes, sptr, sparent, rptr, rlist, control,
                            stat, nfact, nflops, piv_size)
    @ccall libhsl.mc78_analyse_asm_l(n::Cint, ptr::Ptr{Clong}, row::Ptr{Cint},
                                     perm::Ptr{Cint}, nnodes::Ptr{Cint},
                                     sptr::Ptr{Ptr{Cint}}, sparent::Ptr{Ptr{Cint}},
                                     rptr::Ptr{Ptr{Clong}}, rlist::Ptr{Ptr{Cint}},
                                     control::Ptr{mc78_control}, stat::Ptr{Cint},
                                     nfact::Ptr{Clong}, nflops::Ptr{Clong},
                                     piv_size::Ptr{Cint})::Cint
end

function mc78_analyse_elt_l(n, nelt, starts, vars, perm, eparent, nnodes, sptr, sparent,
                            rptr, rlist, control, stat, nfact, nflops, piv_size)
    @ccall libhsl.mc78_analyse_elt_l(n::Cint, nelt::Cint, starts::Ptr{Clong},
                                     vars::Ptr{Cint}, perm::Ptr{Cint}, eparent::Ptr{Cint},
                                     nnodes::Ptr{Cint}, sptr::Ptr{Ptr{Cint}},
                                     sparent::Ptr{Ptr{Cint}}, rptr::Ptr{Ptr{Clong}},
                                     rlist::Ptr{Ptr{Cint}}, control::Ptr{mc78_control},
                                     stat::Ptr{Cint}, nfact::Ptr{Clong}, nflops::Ptr{Clong},
                                     piv_size::Ptr{Cint})::Cint
end

function mc78_supervars_l(n, ptr, row, perm, invp, nsvar, svar)
    @ccall libhsl.mc78_supervars_l(n::Ptr{Cint}, ptr::Ptr{Clong}, row::Ptr{Cint},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Ptr{Cint},
                                   svar::Ptr{Cint})::Cint
end

function mc78_compress_by_svar_l(n, ptr, row, invp, nsvar, svar, ptr2, lrow2, row2, st)
    @ccall libhsl.mc78_compress_by_svar_l(n::Cint, ptr::Ptr{Clong},
                                          row::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Cint,
                                          svar::Ptr{Cint}, ptr2::Ptr{Clong},
                                          lrow2::Clong, row2::Ptr{Cint},
                                          st::Ptr{Cint})::Cint
end

function mc78_etree_l(n, ptr, row, perm, invp, parent)
    @ccall libhsl.mc78_etree_l(n::Cint, ptr::Ptr{Clong}, row::Ptr{Cint},
                               perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint})::Cint
end

function mc78_elt_equiv_etree_l(n, nelt, starts, vars, perm, invp, nsvar, svar, ptr, row,
                                eparent, parent, block_pivots)
    @ccall libhsl.mc78_elt_equiv_etree_l(n::Ptr{Cint}, nelt::Cint,
                                         starts::Ptr{Clong}, vars::Ptr{Cint},
                                         perm::Ptr{Cint}, invp::Ptr{Cint}, nsvar::Ptr{Cint},
                                         svar::Ptr{Cint}, ptr::Ptr{Clong},
                                         row::Ptr{Cint}, eparent::Ptr{Cint},
                                         parent::Ptr{Cint}, block_pivots::Ptr{Cint})::Cint
end

function mc78_postorder_l(n, realn, ptr, perm, invp, parent, block_pivots)
    @ccall libhsl.mc78_postorder_l(n::Cint, realn::Ptr{Cint}, ptr::Ptr{Clong},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint},
                                   block_pivots::Ptr{Cint})::Cint
end

function mc78_col_counts_l(n, ptr, row, perm, invp, parent, cc, wt)
    @ccall libhsl.mc78_col_counts_l(n::Cint, ptr::Ptr{Clong}, row::Ptr{Cint},
                                    perm::Ptr{Cint}, invp::Ptr{Cint}, parent::Ptr{Cint},
                                    cc::Ptr{Cint}, wt::Ptr{Cint})::Cint
end

function mc78_supernodes_l(n, realn, parent, cc, sperm, nnodes, sptr, sparent, scc, invp,
                           control, st, wt, block_pivots)
    @ccall libhsl.mc78_supernodes_l(n::Cint, realn::Cint, parent::Ptr{Cint}, cc::Ptr{Cint},
                                    sperm::Ptr{Cint}, nnodes::Ptr{Cint}, sptr::Ptr{Cint},
                                    sparent::Ptr{Cint}, scc::Ptr{Cint}, invp::Ptr{Cint},
                                    control::Ptr{mc78_control}, st::Ptr{Cint},
                                    wt::Ptr{Cint}, block_pivots::Ptr{Cint})::Cint
end

function mc78_stats_l(nnodes, sptr, scc, nfact, nflops)
    @ccall libhsl.mc78_stats_l(nnodes::Cint, sptr::Ptr{Cint}, scc::Ptr{Cint},
                               nfact::Ptr{Clong}, nflops::Ptr{Clong})::Cvoid
end

function mc78_optimize_locality_l(n, realn, perm, invp, nnodes, sptr, sparent, rptr, rlist,
                                  sort)
    @ccall libhsl.mc78_optimize_locality_l(n::Cint, realn::Cint, perm::Ptr{Cint},
                                           invp::Ptr{Cint}, nnodes::Cint, sptr::Ptr{Cint},
                                           sparent::Ptr{Cint}, rptr::Ptr{Clong},
                                           rlist::Ptr{Cint}, sort::Cint)::Cint
end

function mc78_row_lists_l(nsvar, svar, n, ptr, row, perm, invp, nnodes, sptr, sparent, scc,
                          rptr, rlist, control, st)
    @ccall libhsl.mc78_row_lists_l(nsvar::Cint, svar::Ptr{Cint}, n::Cint,
                                   ptr::Ptr{Clong}, row::Ptr{Cint},
                                   perm::Ptr{Cint}, invp::Ptr{Cint}, nnodes::Cint,
                                   sptr::Ptr{Cint}, sparent::Ptr{Cint}, scc::Ptr{Cint},
                                   rptr::Ptr{Clong}, rlist::Ptr{Cint},
                                   control::Ptr{mc78_control}, st::Ptr{Cint})::Cint
end
