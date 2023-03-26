function me57id(cntl, icntl)
  @ccall libhsl.me57id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function me57ad(kind, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.me57ad_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me57bd(kind, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, work, icntl, cntl, info, rinfo)
  @ccall libhsl.me57bd_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF64}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, ppos::Ptr{Cint}, work::Ptr{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me57cd(kind, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.me57cd_(kind::Ref{Cint}, job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57qd(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57qd_(n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57rd(kind, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57rd_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57ud(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.me57ud_(fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57sd(kind, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.me57sd_(kind::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57td(kind, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57td_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57dd(kind, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, workc, workr, iw, icntl, cntl, info, rinfo)
  @ccall libhsl.me57dd_(kind::Ref{Cint}, job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint}, jcn::Ptr{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF64}, x::Ptr{ComplexF64}, resid::Ptr{ComplexF64}, workc::Ptr{ComplexF64}, workr::Ptr{Float64}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me57ed(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.me57ed_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, newfac::Ptr{ComplexF64}, lnew::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me57gd(kind, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.me57gd_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57jd(kind, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.me57jd_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57kd(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.me57kd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function me57fd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.me57fd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function me57ld(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.me57ld_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint}, subord::Ptr{Cint})::Cvoid
end

function me57md(kind, n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.me57md_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint}, irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint}, idiag::Ptr{Cint})::Cvoid
end

function me57nd(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.me57nd_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me57od(kind, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl.me57od_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{ComplexF64}, schnab::Ptr{ComplexF64}, ppos::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, hold::Ptr{Cint}, biga::Ref{Float64})::Cvoid
end

function me57pd(a, iw, j1, j2, itop, real)
  @ccall libhsl.me57pd_(a::Ptr{ComplexF64}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint}, itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function me57wd(kind, a, la, iw, liw, nrlbdu)
  @ccall libhsl.me57wd_(kind::Ref{Cint}, a::Ptr{ComplexF64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function me57xd(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57xd_(n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57yd(kind, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57yd_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF64}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57vd(kind, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.me57vd_(kind::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57hd(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.me57hd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint}, flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint}, fratio::Ref{Float64})::Cvoid
end

function me57zd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.me57zd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function me57i(cntl, icntl)
  @ccall libhsl.me57i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function me57a(kind, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info, rinfo)
  @ccall libhsl.me57a_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, iwork::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me57b(kind, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep, ppos, work, icntl, cntl, info, rinfo)
  @ccall libhsl.me57b_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF32}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, lkeep::Ref{Cint}, keep::Ptr{Cint}, ppos::Ptr{Cint}, work::Ptr{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me57c(kind, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl.me57c_(kind::Ref{Cint}, job::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57q(n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57q_(n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57r(kind, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57r_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57u(fact, lfact, ifact, lifact, icntl)
  @ccall libhsl.me57u_(fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57s(kind, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, icntl)
  @ccall libhsl.me57s_(kind::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57t(kind, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57t_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57d(kind, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact, rhs, x, resid, workc, workr, iw, icntl, cntl, info, rinfo)
  @ccall libhsl.me57d_(kind::Ref{Cint}, job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint}, jcn::Ptr{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF32}, x::Ptr{ComplexF32}, resid::Ptr{ComplexF32}, workc::Ptr{ComplexF32}, workr::Ptr{Float32}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me57e(n, ic, keep, fact, lfact, newfac, lnew, ifact, lifact, newifc, linew, info)
  @ccall libhsl.me57e_(n::Ref{Cint}, ic::Ref{Cint}, keep::Ptr{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, newfac::Ptr{ComplexF32}, lnew::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, newifc::Ptr{Cint}, linew::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me57g(kind, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.me57g_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57j(kind, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr, icntl, info)
  @ccall libhsl.me57j_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57k(n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl.me57k_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, perm::Ptr{Cint}, ips::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function me57f(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.me57f_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function me57l(n, ipe, nv, ips, ne, na, node, perm, nsteps, fils, frere, nd, nemin, subord)
  @ccall libhsl.me57l_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, node::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nd::Ptr{Cint}, nemin::Ref{Cint}, subord::Ptr{Cint})::Cvoid
end

function me57m(kind, n, ne, irn, jcn, map, irnprm, lrow, perm, count, idiag)
  @ccall libhsl.me57m_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, map::Ptr{Cint}, irnprm::Ptr{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, count::Ptr{Cint}, idiag::Ptr{Cint})::Cvoid
end

function me57n(n, lenr, na, ne, nd, nsteps, lstki, lstkr, info, rinfo)
  @ccall libhsl.me57n_(n::Ref{Cint}, lenr::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstki::Ptr{Cint}, lstkr::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me57o(kind, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk, node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl.me57o_(kind::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, lrow::Ptr{Cint}, perm::Ptr{Cint}, nsteps::Ref{Cint}, nstk::Ptr{Cint}, node::Ptr{Cint}, diag::Ptr{ComplexF32}, schnab::Ptr{ComplexF32}, ppos::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, hold::Ptr{Cint}, biga::Ref{Float32})::Cvoid
end

function me57p(a, iw, j1, j2, itop, real)
  @ccall libhsl.me57p_(a::Ptr{ComplexF32}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint}, itop::Ref{Cint}, real::Ref{Cint})::Cvoid
end

function me57w(kind, a, la, iw, liw, nrlbdu)
  @ccall libhsl.me57w_(kind::Ref{Cint}, a::Ptr{ComplexF32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function me57x(n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57x_(n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57y(kind, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw, iw1, icntl)
  @ccall libhsl.me57y_(kind::Ref{Cint}, n::Ref{Cint}, fact::Ptr{ComplexF32}, lfact::Ref{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me57v(kind, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl.me57v_(kind::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me57h(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl.me57h_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint}, flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint}, fratio::Ref{Float32})::Cvoid
end

function me57z(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.me57z_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end
