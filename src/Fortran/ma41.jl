function ma41id(cntl, icntl, keep)
  @ccall libhsl.ma41id_(cntl::Ptr{Float64}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma41ad(job, n, ne, irn, jcn, aspk, rhs, colsca, rowsca, keep, is, maxis, s, maxs, cntl, icntl, info, rinfo)
  @ccall libhsl.ma41ad_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, aspk::Ptr{Float64}, rhs::Ptr{Float64}, colsca::Ptr{Float64}, rowsca::Ptr{Float64}, keep::Ptr{Cint}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float64}, maxs::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma41bd(n, nz, nsteps, irn, icn, aspk, a, la, iw, liw, ikeep, nfsiz, fils, frere, ptrar, ptrist, ptlust, iw1, nprocs, iw2, iw3, liw3, lscal, colsca, rowsca, ipta, cntl, icntl, info, rinfo, keep)
  @ccall libhsl.ma41bd_(n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, aspk::Ptr{Float64}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint}, nfsiz::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ptrar::Ptr{Cint}, ptrist::Ptr{Cint}, ptlust::Ptr{Cint}, iw1::Ptr{Cint}, nprocs::Ref{Cint}, iw2::Ptr{Cint}, iw3::Ptr{Cint}, liw3::Ref{Cint}, lscal::Ref{Cint}, colsca::Ptr{Float64}, rowsca::Ptr{Float64}, ipta::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ma41dd(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma41dd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma41ed(n, nz, irn, icn, aspk, is, maxis, s, maxs, rhs, colsca, rowsca, lanal, lfacto, lsolve, cntl, icntl, info, rinfo, keep)
  @ccall libhsl.ma41ed_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, aspk::Ptr{Float64}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float64}, maxs::Ref{Cint}, rhs::Ptr{Float64}, colsca::Ptr{Float64}, rowsca::Ptr{Float64}, lanal::Ref{Cint}, lfacto::Ref{Cint}, lsolve::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ma41fd(n, nz, irn, icn, iw, liw, ikeep, ptrar, iord, nfsiz, fils, frere, icntl, info, rinfo, keep)
  @ccall libhsl.ma41fd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint}, ptrar::Ptr{Cint}, iord::Ref{Cint}, nfsiz::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ma41gd(n, nz, irn, icn, iw, lw, ipe, len, iq, flag, iwfr, nrorm, niorm, iflag, ierror, icntl)
  @ccall libhsl.ma41gd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, len::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, nrorm::Ref{Cint}, niorm::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma41hd(n, nz, nz1, aspk, a, la, irn, icn, iw, liw, perm, iw4, ptrar, ptrarw, ptraiw, lscal, colsca, rowsca)
  @ccall libhsl.ma41hd_(n::Ref{Cint}, nz::Ref{Cint}, nz1::Ptr{Cint}, aspk::Ptr{Float64}, a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, perm::Ptr{Cint}, iw4::Ptr{Cint}, ptrar::Ptr{Cint}, ptrarw::Ptr{Cint}, ptraiw::Ptr{Cint}, lscal::Ref{Cint}, colsca::Ptr{Float64}, rowsca::Ptr{Float64})::Cvoid
end

function ma41jd(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, iflag, ierror, mp)
  @ccall libhsl.ma41jd_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, mp::Ref{Cint})::Cvoid
end

function ma41kd(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl.ma41kd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma41ld(n, ipe, nv, ips, ne, na, nfsiz, nsteps, fils, frere, ndd, nemin)
  @ccall libhsl.ma41ld_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, nfsiz::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ndd::Ptr{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma41md(n, nz, irn, icn, na, ne, nd, nsteps, lstkr, iord, nrorm, niorm, nrladu, niradu, nrlnec, nrltot, nirtot, maxfr, opsa, perlu)
  @ccall libhsl.ma41md_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstkr::Ptr{Cint}, iord::Ref{Cint}, nrorm::Ref{Cint}, niorm::Ref{Cint}, nrladu::Ref{Cint}, niradu::Ref{Cint}, nrlnec::Ref{Cint}, nrltot::Ref{Cint}, nirtot::Ref{Cint}, maxfr::Ref{Cint}, opsa::Ref{Float64}, perlu::Ref{Cint})::Cvoid
end

function ma41nd(n, nz, perm, fils, frere, nstk, na, irn, icn, ptraiw, ptrarw, iw4)
  @ccall libhsl.ma41nd_(n::Ref{Cint}, nz::Ref{Cint}, perm::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nstk::Ptr{Cint}, na::Ptr{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, ptraiw::Ptr{Cint}, ptrarw::Ptr{Cint}, iw4::Ptr{Cint})::Cvoid
end

function ma41od(n, nz, mtrans, perm, irn, icn, iw, liw, icntl, info)
  @ccall libhsl.ma41od_(n::Ref{Cint}, nz::Ref{Cint}, mtrans::Ref{Cint}, perm::Ptr{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma41pd(n, r, w)
  @ccall libhsl.ma41pd_(n::Ref{Cint}, r::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma41rd(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk)
  @ccall libhsl.ma41rd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float64}, maxfrt::Ref{Cint}, rhs::Ptr{Float64}, ptlust::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function ma41sd(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk, w2)
  @ccall libhsl.ma41sd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float64}, maxfrt::Ref{Cint}, rhs::Ptr{Float64}, ptlust::Ptr{Cint}, nblk::Ref{Cint}, w2::Ptr{Float64})::Cvoid
end

function ma41td(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk)
  @ccall libhsl.ma41td_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float64}, maxfrt::Ref{Cint}, rhs::Ptr{Float64}, ptlust::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function ma41ud(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk, w2)
  @ccall libhsl.ma41ud_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float64}, maxfrt::Ref{Cint}, rhs::Ptr{Float64}, ptlust::Ptr{Cint}, nblk::Ref{Cint}, w2::Ptr{Float64})::Cvoid
end

function ma41wd(a, nz, n, irn, icn, rhs, x, y, d, w, iw, kase, omega, erx, job, cond, maxit, noiter, lcond1, lcond2, jump, dximax, dxmax, om1, oldomg, iflag, bdkeep)
  @ccall libhsl.ma41wd_(a::Ptr{Float64}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64}, y::Ptr{Float64}, d::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Cint}, kase::Ref{Cint}, omega::Ptr{Float64}, erx::Ref{Float64}, job::Ref{Cint}, cond::Ptr{Float64}, maxit::Ref{Cint}, noiter::Ref{Cint}, lcond1::Ref{Cint}, lcond2::Ref{Cint}, jump::Ref{Cint}, dximax::Ref{Float64}, dxmax::Ref{Float64}, om1::Ref{Float64}, oldomg::Ptr{Float64}, iflag::Ref{Cint}, bdkeep::Ptr{Cint})::Cvoid
end

function ma41xd(a, nz, n, irn, z)
  @ccall libhsl.ma41xd_(a::Ptr{Float64}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, z::Ptr{Float64})::Cvoid
end

function ma41yd(a, nz, n, irn, icn, rhs, x, r, w)
  @ccall libhsl.ma41yd_(a::Ptr{Float64}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64}, r::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma41zd(n, nz, nsteps, a, la, iw, liw, na, ne, nstk, maxfrt, iflag, ierror, nd, fils, frere, ptrarw, ptraiw, ptrast, ptrist, ptlust, tlkj, permw, nprocs, itloc, nirbdu, ipta, ipool, lpool, ipoolb, uuloc, icntl, info, rinfo, keep)
  @ccall libhsl.ma41zd_(n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nstk::Ptr{Cint}, maxfrt::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, nd::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ptrarw::Ptr{Cint}, ptraiw::Ptr{Cint}, ptrast::Ptr{Cint}, ptrist::Ptr{Cint}, ptlust::Ptr{Cint}, tlkj::Ptr{Cint}, permw::Ptr{Cint}, nprocs::Ref{Cint}, itloc::Ptr{Cint}, nirbdu::Ref{Cint}, ipta::Ptr{Cint}, ipool::Ptr{Cint}, lpool::Ref{Cint}, ipoolb::Ptr{Cint}, uuloc::Ref{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ma41i(cntl, icntl, keep)
  @ccall libhsl.ma41i_(cntl::Ptr{Float32}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma41a(job, n, ne, irn, jcn, aspk, rhs, colsca, rowsca, keep, is, maxis, s, maxs, cntl, icntl, info, rinfo)
  @ccall libhsl.ma41a_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, aspk::Ptr{Float32}, rhs::Ptr{Float32}, colsca::Ptr{Float32}, rowsca::Ptr{Float32}, keep::Ptr{Cint}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float32}, maxs::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma41b(n, nz, nsteps, irn, icn, aspk, a, la, iw, liw, ikeep, nfsiz, fils, frere, ptrar, ptrist, ptlust, iw1, nprocs, iw2, iw3, liw3, lscal, colsca, rowsca, ipta, cntl, icntl, info, rinfo, keep)
  @ccall libhsl.ma41b_(n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, aspk::Ptr{Float32}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint}, nfsiz::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ptrar::Ptr{Cint}, ptrist::Ptr{Cint}, ptlust::Ptr{Cint}, iw1::Ptr{Cint}, nprocs::Ref{Cint}, iw2::Ptr{Cint}, iw3::Ptr{Cint}, liw3::Ref{Cint}, lscal::Ref{Cint}, colsca::Ptr{Float32}, rowsca::Ptr{Float32}, ipta::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function ma41d(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl.ma41d_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma41e(n, nz, irn, icn, aspk, is, maxis, s, maxs, rhs, colsca, rowsca, lanal, lfacto, lsolve, cntl, icntl, info, rinfo, keep)
  @ccall libhsl.ma41e_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, aspk::Ptr{Float32}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float32}, maxs::Ref{Cint}, rhs::Ptr{Float32}, colsca::Ptr{Float32}, rowsca::Ptr{Float32}, lanal::Ref{Cint}, lfacto::Ref{Cint}, lsolve::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function ma41f(n, nz, irn, icn, iw, liw, ikeep, ptrar, iord, nfsiz, fils, frere, icntl, info, rinfo, keep)
  @ccall libhsl.ma41f_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint}, ptrar::Ptr{Cint}, iord::Ref{Cint}, nfsiz::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function ma41g(n, nz, irn, icn, iw, lw, ipe, len, iq, flag, iwfr, nrorm, niorm, iflag, ierror, icntl)
  @ccall libhsl.ma41g_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, len::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, nrorm::Ref{Cint}, niorm::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma41h(n, nz, nz1, aspk, a, la, irn, icn, iw, liw, perm, iw4, ptrar, ptrarw, ptraiw, lscal, colsca, rowsca)
  @ccall libhsl.ma41h_(n::Ref{Cint}, nz::Ref{Cint}, nz1::Ptr{Cint}, aspk::Ptr{Float32}, a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, perm::Ptr{Cint}, iw4::Ptr{Cint}, ptrar::Ptr{Cint}, ptrarw::Ptr{Cint}, ptraiw::Ptr{Cint}, lscal::Ref{Cint}, colsca::Ptr{Float32}, rowsca::Ptr{Float32})::Cvoid
end

function ma41j(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, iflag, ierror, mp)
  @ccall libhsl.ma41j_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint}, iwfr::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, mp::Ref{Cint})::Cvoid
end

function ma41k(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl.ma41k_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint}, ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ncmpa::Ref{Cint})::Cvoid
end

function ma41l(n, ipe, nv, ips, ne, na, nfsiz, nsteps, fils, frere, ndd, nemin)
  @ccall libhsl.ma41l_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint}, na::Ptr{Cint}, nfsiz::Ptr{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ndd::Ptr{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma41m(n, nz, irn, icn, na, ne, nd, nsteps, lstkr, iord, nrorm, niorm, nrladu, niradu, nrlnec, nrltot, nirtot, maxfr, opsa, perlu)
  @ccall libhsl.ma41m_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, lstkr::Ptr{Cint}, iord::Ref{Cint}, nrorm::Ref{Cint}, niorm::Ref{Cint}, nrladu::Ref{Cint}, niradu::Ref{Cint}, nrlnec::Ref{Cint}, nrltot::Ref{Cint}, nirtot::Ref{Cint}, maxfr::Ref{Cint}, opsa::Ref{Float32}, perlu::Ref{Cint})::Cvoid
end

function ma41n(n, nz, perm, fils, frere, nstk, na, irn, icn, ptraiw, ptrarw, iw4)
  @ccall libhsl.ma41n_(n::Ref{Cint}, nz::Ref{Cint}, perm::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nstk::Ptr{Cint}, na::Ptr{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, ptraiw::Ptr{Cint}, ptrarw::Ptr{Cint}, iw4::Ptr{Cint})::Cvoid
end

function ma41o(n, nz, mtrans, perm, irn, icn, iw, liw, icntl, info)
  @ccall libhsl.ma41o_(n::Ref{Cint}, nz::Ref{Cint}, mtrans::Ref{Cint}, perm::Ptr{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma41p(n, r, w)
  @ccall libhsl.ma41p_(n::Ref{Cint}, r::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma41r(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk)
  @ccall libhsl.ma41r_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float32}, maxfrt::Ref{Cint}, rhs::Ptr{Float32}, ptlust::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function ma41s(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk, w2)
  @ccall libhsl.ma41s_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float32}, maxfrt::Ref{Cint}, rhs::Ptr{Float32}, ptlust::Ptr{Cint}, nblk::Ref{Cint}, w2::Ptr{Float32})::Cvoid
end

function ma41t(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk)
  @ccall libhsl.ma41t_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float32}, maxfrt::Ref{Cint}, rhs::Ptr{Float32}, ptlust::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function ma41u(n, a, la, iw, liw, w, maxfrt, rhs, ptlust, nblk, w2)
  @ccall libhsl.ma41u_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, w::Ptr{Float32}, maxfrt::Ref{Cint}, rhs::Ptr{Float32}, ptlust::Ptr{Cint}, nblk::Ref{Cint}, w2::Ptr{Float32})::Cvoid
end

function ma41w(a, nz, n, irn, icn, rhs, x, y, d, w, iw, kase, omega, erx, job, cond, maxit, noiter, lcond1, lcond2, jump, dximax, dxmax, om1, oldomg, iflag, bdkeep)
  @ccall libhsl.ma41w_(a::Ptr{Float32}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, y::Ptr{Float32}, d::Ptr{Float32}, w::Ptr{Float32}, iw::Ptr{Cint}, kase::Ref{Cint}, omega::Ptr{Float32}, erx::Ref{Float32}, job::Ref{Cint}, cond::Ptr{Float32}, maxit::Ref{Cint}, noiter::Ref{Cint}, lcond1::Ref{Cint}, lcond2::Ref{Cint}, jump::Ref{Cint}, dximax::Ref{Float32}, dxmax::Ref{Float32}, om1::Ref{Float32}, oldomg::Ptr{Float32}, iflag::Ref{Cint}, bdkeep::Ptr{Cint})::Cvoid
end

function ma41x(a, nz, n, irn, z)
  @ccall libhsl.ma41x_(a::Ptr{Float32}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, z::Ptr{Float32})::Cvoid
end

function ma41y(a, nz, n, irn, icn, rhs, x, r, w)
  @ccall libhsl.ma41y_(a::Ptr{Float32}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, r::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma41z(n, nz, nsteps, a, la, iw, liw, na, ne, nstk, maxfrt, iflag, ierror, nd, fils, frere, ptrarw, ptraiw, ptrast, ptrist, ptlust, tlkj, permw, nprocs, itloc, nirbdu, ipta, ipool, lpool, ipoolb, uuloc, icntl, info, rinfo, keep)
  @ccall libhsl.ma41z_(n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, na::Ptr{Cint}, ne::Ptr{Cint}, nstk::Ptr{Cint}, maxfrt::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, nd::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, ptrarw::Ptr{Cint}, ptraiw::Ptr{Cint}, ptrast::Ptr{Cint}, ptrist::Ptr{Cint}, ptlust::Ptr{Cint}, tlkj::Ptr{Cint}, permw::Ptr{Cint}, nprocs::Ref{Cint}, itloc::Ptr{Cint}, nirbdu::Ref{Cint}, ipta::Ptr{Cint}, ipool::Ptr{Cint}, lpool::Ref{Cint}, ipoolb::Ptr{Cint}, uuloc::Ref{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

