function ma57id(cntl, icntl)
  @ccall libhsl.ma57id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma57id_64(cntl, icntl)
  @ccall libhsl_subset_64.ma57id_64_(cntl::Ptr{Float64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ad(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.ma57ad_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint},
                        info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57ad_64(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl_subset_64.ma57ad_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     iwork::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57bd(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57bd_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, fact::Ptr{Float64},
                        lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint},
                        keep::Ptr{Cint}, ppos::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                        info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57bd_64(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info,
                   rinfo)
  @ccall libhsl_subset_64.ma57bd_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     ppos::Ptr{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function ma57cd(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.ma57cd_(job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint},
                        ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64},
                        lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57cd_64(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl_subset_64.ma57cd_64_(job::Ref{Int64}, n::Ref{Int64}, fact::Ptr{Float64},
                                     lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     nrhs::Ref{Int64}, rhs::Ptr{Float64}, lrhs::Ref{Int64},
                                     w::Ptr{Float64}, lw::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57qd(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57qd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint},
                        w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57qd_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57qd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57rd(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57rd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint},
                        w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57rd_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57rd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ud(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.ma57ud_(fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                        icntl::Ptr{Cint})::Cvoid
end

function ma57ud_64(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset_64.ma57ud_64_(fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57sd(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.ma57sd_(fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                        nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64},
                        lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57sd_64(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl_subset_64.ma57sd_64_(fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, nrhs::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     icntl::Ptr{Int64})::Cvoid
end

function ma57td(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57td_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint},
                        w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57td_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57td_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57dd(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl,
                cntl, info, rinfo)
  @ccall libhsl.ma57dd_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64},
                        irn::Ptr{Cint}, jcn::Ptr{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint},
                        ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64},
                        resid::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57dd_64(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl,
                   cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57dd_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64},
                                     a::Ptr{Float64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, rhs::Ptr{Float64}, x::Ptr{Float64},
                                     resid::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57ed(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.ma57ed_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{Float64},
                        lfact::Ref{Cint}, newfac::Ptr{Float64}, lnew::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ma57ed_64(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl_subset_64.ma57ed_64_(n::Ref{Int64}, ic::Ref{Int64}, keep::Ptr{Int64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, newfac::Ptr{Float64},
                                     lnew::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     newifc::Ptr{Int64}, linew::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57gd(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57gd_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint},
                        ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57gd_64(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57gd_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, iw::Ptr{Int64}, ipe::Ptr{Int64},
                                     count::Ptr{Int64}, flag::Ptr{Int64}, iwfr::Ref{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57jd(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57jd_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        perm::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint},
                        flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57jd_64(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57jd_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     ipe::Ptr{Int64}, count::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57kd(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.ma57kd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function ma57kd_64(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma57kd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, perm::Ptr{Int64}, ips::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57fd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57fd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function ma57fd_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57fd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57ld(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.ma57ld_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                        na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint},
                        fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint},
                        subord::Ptr{Cint})::Cvoid
end

function ma57ld_64(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl_subset_64.ma57ld_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     node::Ptr{Int64}, perm::Ptr{Int64}, nsteps::Ref{Int64},
                                     fils::Ptr{Int64}, frere::Ptr{Int64}, nd::Ptr{Int64},
                                     nemin::Ref{Int64}, subord::Ptr{Int64})::Cvoid
end

function ma57md(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.ma57md_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint},
                        irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint},
                        idiag::Ptr{Cint})::Cvoid
end

function ma57md_64(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl_subset_64.ma57md_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, map::Ptr{Int64}, irnprm::Ptr{Int64},
                                     lrow::Ptr{Int64}, perm::Ptr{Int64}, count::Ptr{Int64},
                                     idiag::Ptr{Int64})::Cvoid
end

function ma57nd(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.ma57nd_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint},
                        nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma57nd_64(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl_subset_64.ma57nd_64_(n::Ref{Int64}, lenr::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57od(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl,
                icntl, info, rinfo, hold, biga)
  @ccall libhsl.ma57od_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint},
                        nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{Float64}, schnab::Ptr{Float64},
                        ppos::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, hold::Ptr{Cint}, biga::Ref{Float64})::Cvoid
end

function ma57od_64(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl,
                   icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset_64.ma57od_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, lrow::Ptr{Int64},
                                     perm::Ptr{Int64}, nsteps::Ref{Int64}, nstk::Ptr{Int64},
                                     node::Ptr{Int64}, diag::Ptr{Float64}, schnab::Ptr{Float64},
                                     ppos::Ptr{Int64}, cntl::Ptr{Float64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64}, hold::Ptr{Int64},
                                     biga::Ref{Float64})::Cvoid
end

function ma57pd(a, iw, j1, j2, itop, real)
  @ccall libhsl.ma57pd_(a::Ptr{Float64}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint},
                        itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function ma57pd_64(a, iw, j1, j2, itop, real)
  @ccall libhsl_subset_64.ma57pd_64_(a::Ptr{Float64}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, real::Ref{Int64})::Cvoid
end

function ma57wd(a, la, iw, liw, nrlbdu)
  @ccall libhsl.ma57wd_(a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        nrlbdu::Ref{Cint})::Cvoid
end

function ma57wd_64(a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset_64.ma57wd_64_(a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, nrlbdu::Ref{Int64})::Cvoid
end

function ma57xd(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57xd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64},
                        lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57xd_64(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57xd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57yd(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57yd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                        lifact::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64},
                        lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57yd_64(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57yd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57vd(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma57vd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                        lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                        iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57vd_64(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57vd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57hd(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma57hd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint},
                        flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint},
                        fratio::Ref{Float64})::Cvoid
end

function ma57hd_64(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma57hd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float64})::Cvoid
end

function ma57zd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57zd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function ma57zd_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57zd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57i(cntl, icntl)
  @ccall libhsl.ma57i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function ma57i_64(cntl, icntl)
  @ccall libhsl_subset_64.ma57i_64_(cntl::Ptr{Float32}, icntl::Ptr{Int64})::Cvoid
end

function ma57a(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.ma57a_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                       lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint},
                       info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57a_64(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl_subset_64.ma57a_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    lkeep::Ref{Int64}, keep::Ptr{Int64}, iwork::Ptr{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57b(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57b_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, fact::Ptr{Float32},
                       lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint},
                       keep::Ptr{Cint}, ppos::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57b_64(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57b_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                    ppos::Ptr{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57c(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.ma57c_(job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint},
                       ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32},
                       lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57c_64(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl_subset_64.ma57c_64_(job::Ref{Int64}, n::Ref{Int64}, fact::Ptr{Float32},
                                    lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    nrhs::Ref{Int64}, rhs::Ptr{Float32}, lrhs::Ref{Int64},
                                    w::Ptr{Float32}, lw::Ref{Int64}, iw1::Ptr{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57q(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57q_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint},
                       w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57q_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57q_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57r(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57r_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint},
                       w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57r_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57r_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57u(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.ma57u_(fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                       icntl::Ptr{Cint})::Cvoid
end

function ma57u_64(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset_64.ma57u_64_(fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57s(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.ma57s_(fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                       nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32},
                       lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57s_64(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl_subset_64.ma57s_64_(fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, nrhs::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    icntl::Ptr{Int64})::Cvoid
end

function ma57t(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57t_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint},
                       w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57t_64(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57t_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57d(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl,
               cntl, info, rinfo)
  @ccall libhsl.ma57d_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                       jcn::Ptr{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, resid::Ptr{Float32},
                       w::Ptr{Float32}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57d_64(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl,
                  cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57d_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    irn::Ptr{Int64}, jcn::Ptr{Int64}, fact::Ptr{Float32},
                                    lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    rhs::Ptr{Float32}, x::Ptr{Float32}, resid::Ptr{Float32},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function ma57e(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.ma57e_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{Float32},
                       lfact::Ref{Cint}, newfac::Ptr{Float32}, lnew::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint},
                       info::Ptr{Cint})::Cvoid
end

function ma57e_64(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl_subset_64.ma57e_64_(n::Ref{Int64}, ic::Ref{Int64}, keep::Ptr{Int64},
                                    fact::Ptr{Float32}, lfact::Ref{Int64}, newfac::Ptr{Float32},
                                    lnew::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    newifc::Ptr{Int64}, linew::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57g(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57g_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint},
                       ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57g_64(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57g_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    iw::Ptr{Int64}, ipe::Ptr{Int64}, count::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma57j(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57j_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, perm::Ptr{Cint},
                       iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint},
                       iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57j_64(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57j_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    perm::Ptr{Int64}, iw::Ptr{Int64}, ipe::Ptr{Int64},
                                    count::Ptr{Int64}, flag::Ptr{Int64}, iwfr::Ref{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57k(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.ma57k_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint},
                       ncmpa::Ref{Cint})::Cvoid
end

function ma57k_64(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma57k_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, perm::Ptr{Int64}, ips::Ptr{Int64},
                                    nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57f(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57f_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       ncmpa::Ref{Cint})::Cvoid
end

function ma57f_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57f_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57l(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.ma57l_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                       na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint},
                       fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint},
                       subord::Ptr{Cint})::Cvoid
end

function ma57l_64(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl_subset_64.ma57l_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64}, ips::Ptr{Int64},
                                    ne::Ptr{Int64}, na::Ptr{Int64}, node::Ptr{Int64},
                                    perm::Ptr{Int64}, nsteps::Ref{Int64}, fils::Ptr{Int64},
                                    frere::Ptr{Int64}, nd::Ptr{Int64}, nemin::Ref{Int64},
                                    subord::Ptr{Int64})::Cvoid
end

function ma57m(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.ma57m_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint},
                       irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint},
                       idiag::Ptr{Cint})::Cvoid
end

function ma57m_64(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl_subset_64.ma57m_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    map::Ptr{Int64}, irnprm::Ptr{Int64}, lrow::Ptr{Int64},
                                    perm::Ptr{Int64}, count::Ptr{Int64}, idiag::Ptr{Int64})::Cvoid
end

function ma57n(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.ma57n_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint},
                       nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma57n_64(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl_subset_64.ma57n_64_(n::Ref{Int64}, lenr::Ptr{Int64}, na::Ptr{Int64}, ne::Ptr{Int64},
                                    nd::Ptr{Int64}, nsteps::Ref{Int64}, lstki::Ptr{Int64},
                                    lstkr::Ptr{Int64}, info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57o(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl,
               icntl, info, rinfo, hold, biga)
  @ccall libhsl.ma57o_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint},
                       nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{Float32}, schnab::Ptr{Float32},
                       ppos::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, hold::Ptr{Cint}, biga::Ref{Float32})::Cvoid
end

function ma57o_64(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl,
                  icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset_64.ma57o_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, lrow::Ptr{Int64},
                                    perm::Ptr{Int64}, nsteps::Ref{Int64}, nstk::Ptr{Int64},
                                    node::Ptr{Int64}, diag::Ptr{Float32}, schnab::Ptr{Float32},
                                    ppos::Ptr{Int64}, cntl::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32}, hold::Ptr{Int64},
                                    biga::Ref{Float32})::Cvoid
end

function ma57p(a, iw, j1, j2, itop, real)
  @ccall libhsl.ma57p_(a::Ptr{Float32}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint},
                       itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function ma57p_64(a, iw, j1, j2, itop, real)
  @ccall libhsl_subset_64.ma57p_64_(a::Ptr{Float32}, iw::Ptr{Int64}, j1::Ref{Int64}, j2::Ref{Int64},
                                    itop::Ref{Int64}, real::Ref{Int64})::Cvoid
end

function ma57w(a, la, iw, liw, nrlbdu)
  @ccall libhsl.ma57w_(a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       nrlbdu::Ref{Cint})::Cvoid
end

function ma57w_64(a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset_64.ma57w_64_(a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, nrlbdu::Ref{Int64})::Cvoid
end

function ma57x(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57x_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32},
                       lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57x_64(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57x_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57y(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57y_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                       lifact::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32},
                       lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57y_64(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57y_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57v(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma57v_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                       lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                       iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57v_64(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma57v_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma57h(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma57h_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint},
                       flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint},
                       fratio::Ref{Float32})::Cvoid
end

function ma57h_64(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma57h_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                    lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                    iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                    fratio::Ref{Float32})::Cvoid
end

function ma57z(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57z_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       ncmpa::Ref{Cint})::Cvoid
end

function ma57z_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57z_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end
