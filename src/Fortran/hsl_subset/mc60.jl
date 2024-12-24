function mc60ar(::Type{Float32}, ::Type{Int32}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset.mc60a_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                              icntl::Ptr{Int32}, iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc60ar(::Type{Float64}, ::Type{Int32}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset.mc60ad_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               icntl::Ptr{Int32}, iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc60ar(::Type{Float128}, ::Type{Int32}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset.mc60aq_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               icntl::Ptr{Int32}, iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc60ar(::Type{Float32}, ::Type{Int64}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset_64.mc60a_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, icntl::Ptr{Int64}, iw::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function mc60ar(::Type{Float64}, ::Type{Int64}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset_64.mc60ad_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, icntl::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc60ar(::Type{Float128}, ::Type{Int64}, n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset_64.mc60aq_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, icntl::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc60br(::Type{Float32}, ::Type{Int32}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset.mc60b_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                              nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function mc60br(::Type{Float64}, ::Type{Int32}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset.mc60bd_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc60br(::Type{Float128}, ::Type{Int32}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset.mc60bq_(n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc60br(::Type{Float32}, ::Type{Int64}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset_64.mc60b_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc60br(::Type{Float64}, ::Type{Int64}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset_64.mc60bd_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc60br(::Type{Float128}, ::Type{Int64}, n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset_64.mc60bq_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc60cr(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset.mc60c_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, jcntl::Ptr{Int32},
                              permsv::Ptr{Int32}, weight::Ptr{Float32}, pair::Ptr{Int32},
                              info::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32})::Cvoid
end

function mc60cr(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset.mc60cd_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, jcntl::Ptr{Int32},
                               permsv::Ptr{Int32}, weight::Ptr{Float64}, pair::Ptr{Int32},
                               info::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64})::Cvoid
end

function mc60cr(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset.mc60cq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, jcntl::Ptr{Int32},
                               permsv::Ptr{Int32}, weight::Ptr{Float128}, pair::Ptr{Int32},
                               info::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128})::Cvoid
end

function mc60cr(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset_64.mc60c_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    jcntl::Ptr{Int64}, permsv::Ptr{Int64}, weight::Ptr{Float32},
                                    pair::Ptr{Int64}, info::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32})::Cvoid
end

function mc60cr(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset_64.mc60cd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     jcntl::Ptr{Int64}, permsv::Ptr{Int64}, weight::Ptr{Float64},
                                     pair::Ptr{Int64}, info::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64})::Cvoid
end

function mc60cr(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, jcntl, permsv,
                weight, pair, info, iw, w)
  @ccall libhsl_subset_64.mc60cq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     jcntl::Ptr{Int64}, permsv::Ptr{Int64}, weight::Ptr{Float128},
                                     pair::Ptr{Int64}, info::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128})::Cvoid
end

function mc60dr(::Type{Float32}, ::Type{Int32}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset.mc60d_(n::Ref{Int32}, nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                              permsv::Ptr{Int32}, perm::Ptr{Int32}, possv::Ptr{Int32})::Cvoid
end

function mc60dr(::Type{Float64}, ::Type{Int32}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset.mc60dd_(n::Ref{Int32}, nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               permsv::Ptr{Int32}, perm::Ptr{Int32}, possv::Ptr{Int32})::Cvoid
end

function mc60dr(::Type{Float128}, ::Type{Int32}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset.mc60dq_(n::Ref{Int32}, nsup::Ref{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               permsv::Ptr{Int32}, perm::Ptr{Int32}, possv::Ptr{Int32})::Cvoid
end

function mc60dr(::Type{Float32}, ::Type{Int64}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset_64.mc60d_64_(n::Ref{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                    possv::Ptr{Int64})::Cvoid
end

function mc60dr(::Type{Float64}, ::Type{Int64}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset_64.mc60dd_64_(n::Ref{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     possv::Ptr{Int64})::Cvoid
end

function mc60dr(::Type{Float128}, ::Type{Int64}, n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset_64.mc60dq_64_(n::Ref{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     possv::Ptr{Int64})::Cvoid
end

function mc60er(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, permsv, perm,
                iw)
  @ccall libhsl_subset.mc60e_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                              permsv::Ptr{Int32}, perm::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc60er(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, permsv, perm,
                iw)
  @ccall libhsl_subset.mc60ed_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               permsv::Ptr{Int32}, perm::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc60er(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, permsv,
                perm, iw)
  @ccall libhsl_subset.mc60eq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               permsv::Ptr{Int32}, perm::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc60er(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, permsv, perm,
                iw)
  @ccall libhsl_subset_64.mc60e_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                    iw::Ptr{Int64})::Cvoid
end

function mc60er(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, permsv, perm,
                iw)
  @ccall libhsl_subset_64.mc60ed_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end

function mc60er(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, permsv,
                perm, iw)
  @ccall libhsl_subset_64.mc60eq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end

function mc60fr(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60f_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                              iw::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc60fr(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60fd_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                               iw::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function mc60fr(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60fq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                               iw::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function mc60fr(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60f_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc60fr(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60fd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc60fr(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60fq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function mc60gr(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60g_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                              iw::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc60gr(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60gd_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                               iw::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function mc60gr(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset.mc60gq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, permsv::Ptr{Int32},
                               iw::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function mc60gr(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60g_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc60gr(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60gd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc60gr(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60gq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function mc60hr(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset.mc60h_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, mask::Ptr{Int32}, ls::Ptr{Int32},
                              xls::Ptr{Int32}, list::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc60hr(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset.mc60hd_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, mask::Ptr{Int32},
                               ls::Ptr{Int32}, xls::Ptr{Int32}, list::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc60hr(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset.mc60hq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, mask::Ptr{Int32},
                               ls::Ptr{Int32}, xls::Ptr{Int32}, list::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc60hr(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset_64.mc60h_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                    list::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc60hr(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset_64.mc60hd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     list::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc60hr(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                list, info)
  @ccall libhsl_subset_64.mc60hq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     list::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc60jr(::Type{Float32}, ::Type{Int32}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset.mc60j_(nsup::Ref{Int32}, lirn::Ref{Int32}, nodes::Ref{Int32},
                              nstrt::Ref{Int32}, lstnum::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, status::Ptr{Int32},
                              weight::Ptr{Float32}, nlist::Ptr{Int32}, queue::Ptr{Int32},
                              deg::Ptr{Int32}, prior::Ptr{Float32})::Cvoid
end

function mc60jr(::Type{Float64}, ::Type{Int32}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset.mc60jd_(nsup::Ref{Int32}, lirn::Ref{Int32}, nodes::Ref{Int32},
                               nstrt::Ref{Int32}, lstnum::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, status::Ptr{Int32},
                               weight::Ptr{Float64}, nlist::Ptr{Int32}, queue::Ptr{Int32},
                               deg::Ptr{Int32}, prior::Ptr{Float64})::Cvoid
end

function mc60jr(::Type{Float128}, ::Type{Int32}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset.mc60jq_(nsup::Ref{Int32}, lirn::Ref{Int32}, nodes::Ref{Int32},
                               nstrt::Ref{Int32}, lstnum::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, vars::Ptr{Int32}, status::Ptr{Int32},
                               weight::Ptr{Float128}, nlist::Ptr{Int32}, queue::Ptr{Int32},
                               deg::Ptr{Int32}, prior::Ptr{Float128})::Cvoid
end

function mc60jr(::Type{Float32}, ::Type{Int64}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset_64.mc60j_64_(nsup::Ref{Int64}, lirn::Ref{Int64}, nodes::Ref{Int64},
                                    nstrt::Ref{Int64}, lstnum::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, vars::Ptr{Int64}, status::Ptr{Int64},
                                    weight::Ptr{Float32}, nlist::Ptr{Int64}, queue::Ptr{Int64},
                                    deg::Ptr{Int64}, prior::Ptr{Float32})::Cvoid
end

function mc60jr(::Type{Float64}, ::Type{Int64}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset_64.mc60jd_64_(nsup::Ref{Int64}, lirn::Ref{Int64}, nodes::Ref{Int64},
                                     nstrt::Ref{Int64}, lstnum::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, vars::Ptr{Int64}, status::Ptr{Int64},
                                     weight::Ptr{Float64}, nlist::Ptr{Int64}, queue::Ptr{Int64},
                                     deg::Ptr{Int64}, prior::Ptr{Float64})::Cvoid
end

function mc60jr(::Type{Float128}, ::Type{Int64}, nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars,
                status, weight, nlist, queue, deg, prior)
  @ccall libhsl_subset_64.mc60jq_64_(nsup::Ref{Int64}, lirn::Ref{Int64}, nodes::Ref{Int64},
                                     nstrt::Ref{Int64}, lstnum::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, vars::Ptr{Int64}, status::Ptr{Int64},
                                     weight::Ptr{Float128}, nlist::Ptr{Int64}, queue::Ptr{Int64},
                                     deg::Ptr{Int64}, prior::Ptr{Float128})::Cvoid
end

function mc60lr(::Type{Float32}, ::Type{Int32}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset.mc60l_(root::Ref{Int32}, maxwid::Ref{Int32}, nsup::Ref{Int32},
                              lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                              vars::Ptr{Int32}, mask::Ptr{Int32}, ls::Ptr{Int32}, xls::Ptr{Int32},
                              nlvl::Ref{Int32}, lwidth::Ref{Int32}, nvars::Ref{Int32})::Cvoid
end

function mc60lr(::Type{Float64}, ::Type{Int32}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset.mc60ld_(root::Ref{Int32}, maxwid::Ref{Int32}, nsup::Ref{Int32},
                               lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               vars::Ptr{Int32}, mask::Ptr{Int32}, ls::Ptr{Int32}, xls::Ptr{Int32},
                               nlvl::Ref{Int32}, lwidth::Ref{Int32}, nvars::Ref{Int32})::Cvoid
end

function mc60lr(::Type{Float128}, ::Type{Int32}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset.mc60lq_(root::Ref{Int32}, maxwid::Ref{Int32}, nsup::Ref{Int32},
                               lirn::Ref{Int32}, irn::Ptr{Int32}, icptr::Ptr{Int32},
                               vars::Ptr{Int32}, mask::Ptr{Int32}, ls::Ptr{Int32}, xls::Ptr{Int32},
                               nlvl::Ref{Int32}, lwidth::Ref{Int32}, nvars::Ref{Int32})::Cvoid
end

function mc60lr(::Type{Float32}, ::Type{Int64}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset_64.mc60l_64_(root::Ref{Int64}, maxwid::Ref{Int64}, nsup::Ref{Int64},
                                    lirn::Ref{Int64}, irn::Ptr{Int64}, icptr::Ptr{Int64},
                                    vars::Ptr{Int64}, mask::Ptr{Int64}, ls::Ptr{Int64},
                                    xls::Ptr{Int64}, nlvl::Ref{Int64}, lwidth::Ref{Int64},
                                    nvars::Ref{Int64})::Cvoid
end

function mc60lr(::Type{Float64}, ::Type{Int64}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset_64.mc60ld_64_(root::Ref{Int64}, maxwid::Ref{Int64}, nsup::Ref{Int64},
                                     lirn::Ref{Int64}, irn::Ptr{Int64}, icptr::Ptr{Int64},
                                     vars::Ptr{Int64}, mask::Ptr{Int64}, ls::Ptr{Int64},
                                     xls::Ptr{Int64}, nlvl::Ref{Int64}, lwidth::Ref{Int64},
                                     nvars::Ref{Int64})::Cvoid
end

function mc60lr(::Type{Float128}, ::Type{Int64}, root, maxwid, nsup, lirn, irn, icptr, vars, mask,
                ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset_64.mc60lq_64_(root::Ref{Int64}, maxwid::Ref{Int64}, nsup::Ref{Int64},
                                     lirn::Ref{Int64}, irn::Ptr{Int64}, icptr::Ptr{Int64},
                                     vars::Ptr{Int64}, mask::Ptr{Int64}, ls::Ptr{Int64},
                                     xls::Ptr{Int64}, nlvl::Ref{Int64}, lwidth::Ref{Int64},
                                     nvars::Ref{Int64})::Cvoid
end

function mc60or(::Type{Float32}, ::Type{Int32}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset.mc60o_(n::Ref{Int32}, nc::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, svar::Ptr{Int32}, nsup::Ref{Int32},
                              new::Ptr{Int32}, vars::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60or(::Type{Float64}, ::Type{Int32}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset.mc60od_(n::Ref{Int32}, nc::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, nsup::Ref{Int32},
                               new::Ptr{Int32}, vars::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60or(::Type{Float128}, ::Type{Int32}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset.mc60oq_(n::Ref{Int32}, nc::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, nsup::Ref{Int32},
                               new::Ptr{Int32}, vars::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60or(::Type{Float32}, ::Type{Int64}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset_64.mc60o_64_(n::Ref{Int64}, nc::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    nsup::Ref{Int64}, new::Ptr{Int64}, vars::Ptr{Int64},
                                    flag::Ptr{Int64})::Cvoid
end

function mc60or(::Type{Float64}, ::Type{Int64}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset_64.mc60od_64_(n::Ref{Int64}, nc::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     nsup::Ref{Int64}, new::Ptr{Int64}, vars::Ptr{Int64},
                                     flag::Ptr{Int64})::Cvoid
end

function mc60or(::Type{Float128}, ::Type{Int64}, n, nc, lirn, irn, icptr, svar, nsup, new, vars,
                flag)
  @ccall libhsl_subset_64.mc60oq_64_(n::Ref{Int64}, nc::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     nsup::Ref{Int64}, new::Ptr{Int64}, vars::Ptr{Int64},
                                     flag::Ptr{Int64})::Cvoid
end

function mc60pr(::Type{Float32}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset.mc60p_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                              var::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60pr(::Type{Float64}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset.mc60pd_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               var::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60pr(::Type{Float128}, ::Type{Int32}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset.mc60pq_(n::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, svar::Ptr{Int32}, vars::Ptr{Int32},
                               var::Ptr{Int32}, flag::Ptr{Int32})::Cvoid
end

function mc60pr(::Type{Float32}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset_64.mc60p_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, var::Ptr{Int64}, flag::Ptr{Int64})::Cvoid
end

function mc60pr(::Type{Float64}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset_64.mc60pd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, var::Ptr{Int64}, flag::Ptr{Int64})::Cvoid
end

function mc60pr(::Type{Float128}, ::Type{Int64}, n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset_64.mc60pq_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, var::Ptr{Int64}, flag::Ptr{Int64})::Cvoid
end

function mc60qr(::Type{Float32}, ::Type{Int32}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset.mc60q_(root::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, vars::Ptr{Int32}, mask::Ptr{Int32}, ls::Ptr{Int32},
                              xls::Ptr{Int32}, nlvl::Ref{Int32}, nvars::Ref{Int32},
                              degree::Ptr{Int32})::Cvoid
end

function mc60qr(::Type{Float64}, ::Type{Int32}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset.mc60qd_(root::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32},
                               irn::Ptr{Int32}, icptr::Ptr{Int32}, vars::Ptr{Int32},
                               mask::Ptr{Int32}, ls::Ptr{Int32}, xls::Ptr{Int32}, nlvl::Ref{Int32},
                               nvars::Ref{Int32}, degree::Ptr{Int32})::Cvoid
end

function mc60qr(::Type{Float128}, ::Type{Int32}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset.mc60qq_(root::Ref{Int32}, nsup::Ref{Int32}, lirn::Ref{Int32},
                               irn::Ptr{Int32}, icptr::Ptr{Int32}, vars::Ptr{Int32},
                               mask::Ptr{Int32}, ls::Ptr{Int32}, xls::Ptr{Int32}, nlvl::Ref{Int32},
                               nvars::Ref{Int32}, degree::Ptr{Int32})::Cvoid
end

function mc60qr(::Type{Float32}, ::Type{Int64}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset_64.mc60q_64_(root::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                    nlvl::Ref{Int64}, nvars::Ref{Int64}, degree::Ptr{Int64})::Cvoid
end

function mc60qr(::Type{Float64}, ::Type{Int64}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset_64.mc60qd_64_(root::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     nlvl::Ref{Int64}, nvars::Ref{Int64}, degree::Ptr{Int64})::Cvoid
end

function mc60qr(::Type{Float128}, ::Type{Int64}, root, nsup, lirn, irn, icptr, vars, mask, ls, xls,
                nlvl, nvars, degree)
  @ccall libhsl_subset_64.mc60qq_64_(root::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     nlvl::Ref{Int64}, nvars::Ref{Int64}, degree::Ptr{Int64})::Cvoid
end
