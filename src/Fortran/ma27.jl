function ma27id(icntl, cntl)
  @ccall libhsl.ma27id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma27id_64(icntl, cntl)
  @ccall libhsl_subset_64.ma27id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function ma27ad(n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag, icntl, cntl, info, ops)
  @ccall libhsl.ma27ad_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, ikeep::Ptr{Cint}, iw1::Ptr{Cint}, nsteps::Ref{Cint},
                        iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        ops::Ref{Float64})::Cvoid
end

function ma27ad_64(n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag, icntl, cntl, info, ops)
  @ccall libhsl_subset_64.ma27ad_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     ikeep::Ptr{Int64}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                     iflag::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, ops::Ref{Float64})::Cvoid
end

function ma27bd(n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps, maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl.ma27bd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        ikeep::Ptr{Cint}, nsteps::Ref{Cint}, maxfrt::Ref{Cint}, iw1::Ptr{Cint},
                        icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma27bd_64(n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps, maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27bd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, ikeep::Ptr{Int64},
                                     nsteps::Ref{Int64}, maxfrt::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64})::Cvoid
end

function ma27cd(n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps, icntl, info)
  @ccall libhsl.ma27cd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        w::Ptr{Float64}, maxfrt::Ref{Cint}, rhs::Ptr{Float64}, iw1::Ptr{Cint},
                        nsteps::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27cd_64(n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps, icntl, info)
  @ccall libhsl_subset_64.ma27cd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfrt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27gd(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma27gd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                        lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                        iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27gd_64(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma27gd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27hd(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma27hd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint},
                        flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint},
                        fratio::Ref{Float64})::Cvoid
end

function ma27hd_64(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma27hd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float64})::Cvoid
end

function ma27ud(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma27ud_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function ma27ud_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma27ud_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27jd(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma27jd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        perm::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint},
                        iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ma27jd_64(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma27jd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                     flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27kd(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl.ma27kd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function ma27kd_64(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma27kd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ips::Ptr{Int64}, ipv::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27ld(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl.ma27ld_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                        na::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma27ld_64(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset_64.ma27ld_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     nd::Ptr{Int64}, nsteps::Ref{Int64}, nemin::Ref{Int64})::Cvoid
end

function ma27md(n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki, lstkr, iw, info, ops)
  @ccall libhsl.ma27md_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        perm::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint},
                        nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, iw::Ptr{Cint},
                        info::Ptr{Cint}, ops::Ref{Float64})::Cvoid
end

function ma27md_64(n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki, lstkr, iw, info, ops)
  @ccall libhsl_subset_64.ma27md_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, ops::Ref{Float64})::Cvoid
end

function ma27nd(n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2, icntl, info)
  @ccall libhsl.ma27nd_(n::Ref{Cint}, nz::Ref{Cint}, nz1::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint},
                        irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        perm::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27nd_64(n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2, icntl, info)
  @ccall libhsl_subset_64.ma27nd_64_(n::Ref{Int64}, nz::Ref{Int64}, nz1::Ref{Int64},
                                     a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     perm::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27od(n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt, nelim, iw2, icntl, cntl, info)
  @ccall libhsl.ma27od_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, perm::Ptr{Cint}, nstk::Ptr{Cint}, nsteps::Ref{Cint},
                        maxfrt::Ref{Cint}, nelim::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma27od_64(n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt, nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27od_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                     nstk::Ptr{Int64}, nsteps::Ref{Int64}, maxfrt::Ref{Int64},
                                     nelim::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, info::Ptr{Int64})::Cvoid
end

function ma27pd(a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl.ma27pd_(a::Ptr{Float64}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint},
                        itop::Ref{Cint}, ireal::Ref{Cint}, ncmpbr::Ref{Cint},
                        ncmpbi::Ref{Cint})::Cvoid
end

function ma27pd_64(a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset_64.ma27pd_64_(a::Ptr{Float64}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, ireal::Ref{Int64},
                                     ncmpbr::Ref{Int64}, ncmpbi::Ref{Int64})::Cvoid
end

function ma27qd(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl.ma27qd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        w::Ptr{Float64}, maxfnt::Ref{Cint}, rhs::Ptr{Float64}, iw2::Ptr{Cint},
                        nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma27qd_64(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset_64.ma27qd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfnt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                     latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27rd(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl.ma27rd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        w::Ptr{Float64}, maxfnt::Ref{Cint}, rhs::Ptr{Float64}, iw2::Ptr{Cint},
                        nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma27rd_64(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset_64.ma27rd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfnt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                     latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27i(icntl, cntl)
  @ccall libhsl.ma27i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma27i_64(icntl, cntl)
  @ccall libhsl_subset_64.ma27i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function ma27a(n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag, icntl, cntl, info, ops)
  @ccall libhsl.ma27a_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, ikeep::Ptr{Cint}, iw1::Ptr{Cint}, nsteps::Ref{Cint},
                       iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       ops::Ref{Float32})::Cvoid
end

function ma27a_64(n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag, icntl, cntl, info, ops)
  @ccall libhsl_subset_64.ma27a_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, ikeep::Ptr{Int64},
                                    iw1::Ptr{Int64}, nsteps::Ref{Int64}, iflag::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    ops::Ref{Float32})::Cvoid
end

function ma27b(n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps, maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl.ma27b_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, a::Ptr{Float32},
                       la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint},
                       nsteps::Ref{Cint}, maxfrt::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma27b_64(n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps, maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27b_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, ikeep::Ptr{Int64}, nsteps::Ref{Int64},
                                    maxfrt::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64})::Cvoid
end

function ma27c(n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps, icntl, info)
  @ccall libhsl.ma27c_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       w::Ptr{Float32}, maxfrt::Ref{Cint}, rhs::Ptr{Float32}, iw1::Ptr{Cint},
                       nsteps::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27c_64(n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps, icntl, info)
  @ccall libhsl_subset_64.ma27c_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfrt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27g(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma27g_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                       lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                       iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27g_64(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma27g_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma27h(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma27h_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint},
                       flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint},
                       fratio::Ref{Float32})::Cvoid
end

function ma27h_64(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma27h_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                    lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                    iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                    fratio::Ref{Float32})::Cvoid
end

function ma27u(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma27u_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       ncmpa::Ref{Cint})::Cvoid
end

function ma27u_64(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma27u_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27j(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma27j_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, perm::Ptr{Cint},
                       iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                       iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27j_64(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset_64.ma27j_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    perm::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                    iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27k(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl.ma27k_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint},
                       ncmpa::Ref{Cint})::Cvoid
end

function ma27k_64(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma27k_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ips::Ptr{Int64}, ipv::Ptr{Int64},
                                    nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27l(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl.ma27l_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                       na::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma27l_64(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset_64.ma27l_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64}, ips::Ptr{Int64},
                                    ne::Ptr{Int64}, na::Ptr{Int64}, nd::Ptr{Int64},
                                    nsteps::Ref{Int64}, nemin::Ref{Int64})::Cvoid
end

function ma27m(n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki, lstkr, iw, info, ops)
  @ccall libhsl.ma27m_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, perm::Ptr{Cint},
                       na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint},
                       lstki::Ptr{Cint}, lstkr::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint},
                       ops::Ref{Float32})::Cvoid
end

function ma27m_64(n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki, lstkr, iw, info, ops)
  @ccall libhsl_subset_64.ma27m_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    perm::Ptr{Int64}, na::Ptr{Int64}, ne::Ptr{Int64},
                                    nd::Ptr{Int64}, nsteps::Ref{Int64}, lstki::Ptr{Int64},
                                    lstkr::Ptr{Int64}, iw::Ptr{Int64}, info::Ptr{Int64},
                                    ops::Ref{Float32})::Cvoid
end

function ma27n(n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2, icntl, info)
  @ccall libhsl.ma27n_(n::Ref{Cint}, nz::Ref{Cint}, nz1::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint},
                       irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       perm::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma27n_64(n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2, icntl, info)
  @ccall libhsl_subset_64.ma27n_64_(n::Ref{Int64}, nz::Ref{Int64}, nz1::Ref{Int64}, a::Ptr{Float32},
                                    la::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                    iw2::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27o(n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt, nelim, iw2, icntl, cntl, info)
  @ccall libhsl.ma27o_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, perm::Ptr{Cint}, nstk::Ptr{Cint}, nsteps::Ref{Cint},
                       maxfrt::Ref{Cint}, nelim::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma27o_64(n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt, nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27o_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                    nstk::Ptr{Int64}, nsteps::Ref{Int64}, maxfrt::Ref{Int64},
                                    nelim::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64})::Cvoid
end

function ma27p(a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl.ma27p_(a::Ptr{Float32}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint},
                       itop::Ref{Cint}, ireal::Ref{Cint}, ncmpbr::Ref{Cint},
                       ncmpbi::Ref{Cint})::Cvoid
end

function ma27p_64(a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset_64.ma27p_64_(a::Ptr{Float32}, iw::Ptr{Int64}, j1::Ref{Int64}, j2::Ref{Int64},
                                    itop::Ref{Int64}, ireal::Ref{Int64}, ncmpbr::Ref{Int64},
                                    ncmpbi::Ref{Int64})::Cvoid
end

function ma27q(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl.ma27q_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       w::Ptr{Float32}, maxfnt::Ref{Cint}, rhs::Ptr{Float32}, iw2::Ptr{Cint},
                       nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma27q_64(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset_64.ma27q_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfnt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                    latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27r(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl.ma27r_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       w::Ptr{Float32}, maxfnt::Ref{Cint}, rhs::Ptr{Float32}, iw2::Ptr{Cint},
                       nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma27r_64(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset_64.ma27r_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfnt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                    latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end
