function ma57id(cntl, icntl)
  @ccall libhsl.ma57id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma57ad(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.ma57ad_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57bd(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57bd_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, ppos::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57cd(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.ma57cd_(job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57qd(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57qd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57rd(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57rd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57ud(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.ma57ud_(fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57sd(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.ma57sd_(fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57td(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57td_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57dd(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57dd_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, jcn::Ptr{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64}, resid::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57ed(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.ma57ed_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, newfac::Ptr{Float64}, lnew::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57gd(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57gd_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57jd(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57jd_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57kd(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.ma57kd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma57fd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57fd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma57ld(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.ma57ld_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint}, subord::Ptr{Cint})::Cvoid
end

function ma57md(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.ma57md_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint}, irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint}, idiag::Ptr{Cint})::Cvoid
end

function ma57nd(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.ma57nd_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma57od(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl.ma57od_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{Float64}, schnab::Ptr{Float64}, ppos::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, hold::Ptr{Cint}, biga::Ref{Float64})::Cvoid
end

function ma57pd(a, iw, j1, j2, itop, real)
  @ccall libhsl.ma57pd_(a::Ptr{Float64}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint}, itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function ma57wd(a, la, iw, liw, nrlbdu)
  @ccall libhsl.ma57wd_(a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function ma57xd(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57xd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57yd(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57yd_(n::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57vd(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma57vd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57hd(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma57hd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint}, flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint}, fratio::Ref{Float64})::Cvoid
end

function ma57zd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57zd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma57i(cntl, icntl)
  @ccall libhsl.ma57i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function ma57a(n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.ma57a_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57b(n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57b_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, ppos::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57c(job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.ma57c_(job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57q(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57q_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57r(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57r_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57u(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.ma57u_(fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57s(fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.ma57s_(fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57t(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57t_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57d(job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl.ma57d_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, jcn::Ptr{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, resid::Ptr{Float32}, w::Ptr{Float32}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57e(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.ma57e_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, newfac::Ptr{Float32}, lnew::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57g(n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57g_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57j(n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.ma57j_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57k(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.ma57k_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma57f(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57f_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma57l(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.ma57l_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint}, subord::Ptr{Cint})::Cvoid
end

function ma57m(n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.ma57m_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint}, irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint}, idiag::Ptr{Cint})::Cvoid
end

function ma57n(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.ma57n_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma57o(n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl.ma57o_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{Float32}, schnab::Ptr{Float32}, ppos::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, hold::Ptr{Cint}, biga::Ref{Float32})::Cvoid
end

function ma57p(a, iw, j1, j2, itop, real)
  @ccall libhsl.ma57p_(a::Ptr{Float32}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint}, itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function ma57w(a, la, iw, liw, nrlbdu)
  @ccall libhsl.ma57w_(a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function ma57x(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57x_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57y(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.ma57y_(n::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma57v(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.ma57v_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma57h(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.ma57h_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint}, flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint}, fratio::Ref{Float32})::Cvoid
end

function ma57z(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma57z_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end
