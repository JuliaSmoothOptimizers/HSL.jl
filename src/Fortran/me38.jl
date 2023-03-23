function me38id(keep, cntl, icntl)
  @ccall libhsl.me38id_(keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function me38ad(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.me38ad_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF64}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me38bd(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.me38bd_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF64}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me38cd(n, job, transc, lvalue, lindex, value, index, keep, b, x, w, cntl, icntl, info, rinfo)
  @ccall libhsl.me38cd_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF64}, index::Ptr{Cint}, keep::Ptr{Cint}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, w::Ptr{ComplexF64}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me38dd(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, cntl, info, rinfo, presrv, ap, ai, ax, an, anz, keep, ne)
  @ccall libhsl.me38dd_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint}, itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF64}, an::Ref{Cint}, anz::Ref{Cint}, keep::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function me38ed(cp, n, cperm, rperm, nzoff, itail, xtail, xx, xsize, xuse, ii, isize, iuse, icntl, cntl, info, rinfo, nblks, ap, ai, ax, presrv, k1, an, anz, pr, keep, rmax, cmax, totnlu, xrmax, xruse, iout, xout)
  @ccall libhsl.me38ed_(cp::Ptr{Cint}, n::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, nzoff::Ref{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, iuse::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64}, nblks::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF64}, presrv::Ref{Cint}, k1::Ref{Cint}, an::Ref{Cint}, anz::Ref{Cint}, pr::Ptr{Cint}, keep::Ptr{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint}, iout::Ref{Cint}, xout::Ref{Cint})::Cvoid
end

function me38fd(cp, nz, n, pn, cperm, rperm, itail, xtail, xx, xsize, ii, isize, icntl, cntl, info, rinfo, pgiven, iuse, xuse, wir, wic, wpr, wpc, wm, head, wj, rp, wc, wr, dn, dsiz, rmax, cmax, totnlu, xrmax, xruse)
  @ccall libhsl.me38fd_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, pn::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64}, pgiven::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, head::Ptr{Cint}, wj::Ptr{Cint}, rp::Ptr{Cint}, wc::Ptr{Cint}, wr::Ptr{Cint}, dn::Ref{Cint}, dsiz::Ref{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint})::Cvoid
end

function me38gd(xx, xsize, xhead, xuse, ii, isize, ihead, iuse, cp, rp, dn, n, wir, wic, wr, wc, ffxp, ffsize, wxp, ffdimc, doslot, pfree, xfree, mhead, mtail, slots)
  @ccall libhsl.me38gd_(xx::Ptr{ComplexF64}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, ihead::Ref{Cint}, iuse::Ref{Cint}, cp::Ptr{Cint}, rp::Ptr{Cint}, dn::Ref{Cint}, n::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wr::Ptr{Cint}, wc::Ptr{Cint}, ffxp::Ref{Cint}, ffsize::Ref{Cint}, wxp::Ref{Cint}, ffdimc::Ref{Cint}, doslot::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint}, mhead::Ref{Cint}, mtail::Ref{Cint}, slots::Ref{Cint})::Cvoid
end

function me38hd(xx, xsize, ii, isize, n, nz, nzdia, nzoff, nblks, cp, cperm, rperm, pr, pc, w, zperm, bp, offp, presrv)
  @ccall libhsl.me38hd_(xx::Ptr{ComplexF64}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nzdia::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, cp::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, pr::Ptr{Cint}, pc::Ptr{Cint}, w::Ptr{Cint}, zperm::Ptr{Cint}, bp::Ptr{Cint}, offp::Ptr{Cint}, presrv::Ref{Cint})::Cvoid
end

function me38jd(n, job, transc, luxsiz, lux, luisiz, lui, b, x, r, z, ly, y, s, cntl, info, rinfo, cperm, rperm, an, anz, ap, ai, ax, on, nzoff, offp, offi, offx, nblks, lublkp, blkp, irstep)
  @ccall libhsl.me38jd_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, luxsiz::Ref{Cint}, lux::Ptr{ComplexF64}, luisiz::Ref{Cint}, lui::Ptr{Cint}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, r::Ptr{ComplexF64}, z::Ptr{ComplexF64}, ly::Ref{Cint}, y::Ptr{ComplexF64}, s::Ptr{ComplexF64}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, an::Ref{Cint}, anz::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF64}, on::Ref{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{ComplexF64}, nblks::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint}, irstep::Ref{Cint})::Cvoid
end

function me38kd(n, nz, transa, xx, xsize, info, icntl, ii, isize, w, wp, who)
  @ccall libhsl.me38kd_(n::Ref{Cint}, nz::Ref{Cint}, transa::Ref{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, w::Ptr{Cint}, wp::Ptr{Cint}, who::Ref{Cint})::Cvoid
end

function me38ld(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.me38ld_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF64}, x::Ptr{ComplexF64}, w::Ptr{ComplexF64})::Cvoid
end

function me38md(w, n, rperm, cperm, nzoff, offp, offi, offx, pr, icntl, mp, mi, mx, mn, mnz, presrv, nblks, blkp, onz, who, nbelow)
  @ccall libhsl.me38md_(w::Ptr{Cint}, n::Ref{Cint}, rperm::Ptr{Cint}, cperm::Ptr{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{ComplexF64}, pr::Ptr{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, mi::Ptr{Cint}, mx::Ptr{ComplexF64}, mn::Ref{Cint}, mnz::Ref{Cint}, presrv::Ref{Cint}, nblks::Ref{Cint}, blkp::Ptr{Cint}, onz::Ref{Cint}, who::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function me38nd(who, icntl, info, error, s)
  @ccall libhsl.me38nd_(who::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, error::Ref{Cint}, s::Ref{Cint})::Cvoid
end

function me38od(xx, xsize, xhead, xuse, lui, frdimc, frxp, frnext, frprev, nlu, lup, ffxp, ffsize, pfree, xfree)
  @ccall libhsl.me38od_(xx::Ptr{ComplexF64}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint}, lui::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint}, frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, ffxp::Ref{Cint}, ffsize::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint})::Cvoid
end

function me38pd(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, info, rinfo, presrv, ap, ai, ax, an, anz, lui, luisiz, lublkp, blkp, offp, on, cperm, rperm, ne)
  @ccall libhsl.me38pd_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint}, itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF64}, an::Ref{Cint}, anz::Ref{Cint}, lui::Ptr{Cint}, luisiz::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint}, offp::Ptr{Cint}, on::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function me38qd(presrv, n, nz, cperm, rperm, pr, w, nblks, arx, ari, nzoff, nzdia, icntl, mp, blkp, mi, mx, offp, on, nzblk, cblk, kn, nz2, nbelow)
  @ccall libhsl.me38qd_(presrv::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, pr::Ptr{Cint}, w::Ptr{Cint}, nblks::Ref{Cint}, arx::Ptr{ComplexF64}, ari::Ptr{Cint}, nzoff::Ref{Cint}, nzdia::Ref{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, blkp::Ptr{Cint}, mi::Ptr{Cint}, mx::Ptr{ComplexF64}, offp::Ptr{Cint}, on::Ref{Cint}, nzblk::Ref{Cint}, cblk::Ref{Cint}, kn::Ref{Cint}, nz2::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function me38rd(cp, nz, n, xtail, xx, xsize, xuse, ari, cperm, rperm, icntl, info, rinfo, mc, mr, wir, wic, wpr, wpc, wm, wj, frdimc, frxp, frnext, frprev, nlu, lup, lui, noutsd, xrmax)
  @ccall libhsl.me38rd_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF64}, xsize::Ref{Cint}, xuse::Ref{Cint}, ari::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, mc::Ref{Cint}, mr::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, wj::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint}, frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, noutsd::Ref{Cint}, xrmax::Ref{Cint})::Cvoid
end

function me38sd(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.me38sd_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF64}, x::Ptr{ComplexF64}, w::Ptr{ComplexF64})::Cvoid
end

function me38td(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.me38td_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF64}, x::Ptr{ComplexF64}, w::Ptr{ComplexF64})::Cvoid
end

function me38ud(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.me38ud_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF64}, x::Ptr{ComplexF64}, w::Ptr{ComplexF64})::Cvoid
end

function me38xd(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo, b, x, lx, w, lw)
  @ccall libhsl.me38xd_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF64}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, lx::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint})::Cvoid
end

function me38yd(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo, b, x, lx, w, lw)
  @ccall libhsl.me38yd_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF64}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, lx::Ref{Cint}, w::Ptr{ComplexF64}, lw::Ref{Cint})::Cvoid
end

function me38vd(who, error, i, j, x, io)
  @ccall libhsl.me38vd_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint}, x::Ref{ComplexF64}, io::Ref{Cint})::Cvoid
end

function me38zd(who, error, i, j, x, io)
  @ccall libhsl.me38zd_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint}, x::Ref{ComplexF64}, io::Ref{Cint})::Cvoid
end

function me38i(keep, cntl, icntl)
  @ccall libhsl.me38i_(keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function me38a(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.me38a_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF32}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me38b(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.me38b_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF32}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me38c(n, job, transc, lvalue, lindex, value, index, keep, b, x, w, cntl, icntl, info, rinfo)
  @ccall libhsl.me38c_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF32}, index::Ptr{Cint}, keep::Ptr{Cint}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, w::Ptr{ComplexF32}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me38d(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, cntl, info, rinfo, presrv, ap, ai, ax, an, anz, keep, ne)
  @ccall libhsl.me38d_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint}, itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF32}, an::Ref{Cint}, anz::Ref{Cint}, keep::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function me38e(cp, n, cperm, rperm, nzoff, itail, xtail, xx, xsize, xuse, ii, isize, iuse, icntl, cntl, info, rinfo, nblks, ap, ai, ax, presrv, k1, an, anz, pr, keep, rmax, cmax, totnlu, xrmax, xruse, iout, xout)
  @ccall libhsl.me38e_(cp::Ptr{Cint}, n::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, nzoff::Ref{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, iuse::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32}, nblks::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF32}, presrv::Ref{Cint}, k1::Ref{Cint}, an::Ref{Cint}, anz::Ref{Cint}, pr::Ptr{Cint}, keep::Ptr{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint}, iout::Ref{Cint}, xout::Ref{Cint})::Cvoid
end

function me38f(cp, nz, n, pn, cperm, rperm, itail, xtail, xx, xsize, ii, isize, icntl, cntl, info, rinfo, pgiven, iuse, xuse, wir, wic, wpr, wpc, wm, head, wj, rp, wc, wr, dn, dsiz, rmax, cmax, totnlu, xrmax, xruse)
  @ccall libhsl.me38f_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, pn::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32}, pgiven::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, head::Ptr{Cint}, wj::Ptr{Cint}, rp::Ptr{Cint}, wc::Ptr{Cint}, wr::Ptr{Cint}, dn::Ref{Cint}, dsiz::Ref{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint})::Cvoid
end

function me38g(xx, xsize, xhead, xuse, ii, isize, ihead, iuse, cp, rp, dn, n, wir, wic, wr, wc, ffxp, ffsize, wxp, ffdimc, doslot, pfree, xfree, mhead, mtail, slots)
  @ccall libhsl.me38g_(xx::Ptr{ComplexF32}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, ihead::Ref{Cint}, iuse::Ref{Cint}, cp::Ptr{Cint}, rp::Ptr{Cint}, dn::Ref{Cint}, n::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wr::Ptr{Cint}, wc::Ptr{Cint}, ffxp::Ref{Cint}, ffsize::Ref{Cint}, wxp::Ref{Cint}, ffdimc::Ref{Cint}, doslot::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint}, mhead::Ref{Cint}, mtail::Ref{Cint}, slots::Ref{Cint})::Cvoid
end

function me38h(xx, xsize, ii, isize, n, nz, nzdia, nzoff, nblks, cp, cperm, rperm, pr, pc, w, zperm, bp, offp, presrv)
  @ccall libhsl.me38h_(xx::Ptr{ComplexF32}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nzdia::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, cp::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, pr::Ptr{Cint}, pc::Ptr{Cint}, w::Ptr{Cint}, zperm::Ptr{Cint}, bp::Ptr{Cint}, offp::Ptr{Cint}, presrv::Ref{Cint})::Cvoid
end

function me38j(n, job, transc, luxsiz, lux, luisiz, lui, b, x, r, z, ly, y, s, cntl, info, rinfo, cperm, rperm, an, anz, ap, ai, ax, on, nzoff, offp, offi, offx, nblks, lublkp, blkp, irstep)
  @ccall libhsl.me38j_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, luxsiz::Ref{Cint}, lux::Ptr{ComplexF32}, luisiz::Ref{Cint}, lui::Ptr{Cint}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, r::Ptr{ComplexF32}, z::Ptr{ComplexF32}, ly::Ref{Cint}, y::Ptr{ComplexF32}, s::Ptr{ComplexF32}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, an::Ref{Cint}, anz::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF32}, on::Ref{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{ComplexF32}, nblks::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint}, irstep::Ref{Cint})::Cvoid
end

function me38k(n, nz, transa, xx, xsize, info, icntl, ii, isize, w, wp, who)
  @ccall libhsl.me38k_(n::Ref{Cint}, nz::Ref{Cint}, transa::Ref{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, w::Ptr{Cint}, wp::Ptr{Cint}, who::Ref{Cint})::Cvoid
end

function me38l(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.me38l_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF32}, x::Ptr{ComplexF32}, w::Ptr{ComplexF32})::Cvoid
end

function me38m(w, n, rperm, cperm, nzoff, offp, offi, offx, pr, icntl, mp, mi, mx, mn, mnz, presrv, nblks, blkp, onz, who, nbelow)
  @ccall libhsl.me38m_(w::Ptr{Cint}, n::Ref{Cint}, rperm::Ptr{Cint}, cperm::Ptr{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{ComplexF32}, pr::Ptr{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, mi::Ptr{Cint}, mx::Ptr{ComplexF32}, mn::Ref{Cint}, mnz::Ref{Cint}, presrv::Ref{Cint}, nblks::Ref{Cint}, blkp::Ptr{Cint}, onz::Ref{Cint}, who::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function me38n(who, icntl, info, error, s)
  @ccall libhsl.me38n_(who::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, error::Ref{Cint}, s::Ref{Cint})::Cvoid
end

function me38o(xx, xsize, xhead, xuse, lui, frdimc, frxp, frnext, frprev, nlu, lup, ffxp, ffsize, pfree, xfree)
  @ccall libhsl.me38o_(xx::Ptr{ComplexF32}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint}, lui::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint}, frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, ffxp::Ref{Cint}, ffsize::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint})::Cvoid
end

function me38p(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, info, rinfo, presrv, ap, ai, ax, an, anz, lui, luisiz, lublkp, blkp, offp, on, cperm, rperm, ne)
  @ccall libhsl.me38p_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint}, itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint}, nblks::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{ComplexF32}, an::Ref{Cint}, anz::Ref{Cint}, lui::Ptr{Cint}, luisiz::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint}, offp::Ptr{Cint}, on::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function me38q(presrv, n, nz, cperm, rperm, pr, w, nblks, arx, ari, nzoff, nzdia, icntl, mp, blkp, mi, mx, offp, on, nzblk, cblk, kn, nz2, nbelow)
  @ccall libhsl.me38q_(presrv::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, pr::Ptr{Cint}, w::Ptr{Cint}, nblks::Ref{Cint}, arx::Ptr{ComplexF32}, ari::Ptr{Cint}, nzoff::Ref{Cint}, nzdia::Ref{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, blkp::Ptr{Cint}, mi::Ptr{Cint}, mx::Ptr{ComplexF32}, offp::Ptr{Cint}, on::Ref{Cint}, nzblk::Ref{Cint}, cblk::Ref{Cint}, kn::Ref{Cint}, nz2::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function me38r(cp, nz, n, xtail, xx, xsize, xuse, ari, cperm, rperm, icntl, info, rinfo, mc, mr, wir, wic, wpr, wpc, wm, wj, frdimc, frxp, frnext, frprev, nlu, lup, lui, noutsd, xrmax)
  @ccall libhsl.me38r_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{ComplexF32}, xsize::Ref{Cint}, xuse::Ref{Cint}, ari::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, mc::Ref{Cint}, mr::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, wj::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint}, frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, noutsd::Ref{Cint}, xrmax::Ref{Cint})::Cvoid
end

function me38s(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.me38s_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF32}, x::Ptr{ComplexF32}, w::Ptr{ComplexF32})::Cvoid
end

function me38t(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.me38t_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF32}, x::Ptr{ComplexF32}, w::Ptr{ComplexF32})::Cvoid
end

function me38u(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.me38u_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, lux::Ptr{ComplexF32}, x::Ptr{ComplexF32}, w::Ptr{ComplexF32})::Cvoid
end

function me38x(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo, b, x, lx, w, lw)
  @ccall libhsl.me38x_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF32}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, lx::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint})::Cvoid
end

function me38y(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo, b, x, lx, w, lw)
  @ccall libhsl.me38y_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{ComplexF32}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, lx::Ref{Cint}, w::Ptr{ComplexF32}, lw::Ref{Cint})::Cvoid
end

function me38v(who, error, i, j, x, io)
  @ccall libhsl.me38v_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint}, x::Ref{ComplexF32}, io::Ref{Cint})::Cvoid
end

function me38z(who, error, i, j, x, io)
  @ccall libhsl.me38z_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint}, x::Ref{ComplexF32}, io::Ref{Cint})::Cvoid
end
