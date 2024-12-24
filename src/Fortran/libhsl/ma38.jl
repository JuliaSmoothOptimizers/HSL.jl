function ma38id(keep, cntl, icntl)
  @ccall libhsl.ma38id_(keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma38ad(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.ma38ad_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint},
                        lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{Float64}, index::Ptr{Cint},
                        keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma38bd(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.ma38bd_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint},
                        lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{Float64}, index::Ptr{Cint},
                        keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma38cd(n, job, transc, lvalue, lindex, value, index, keep, b, x, w, cntl, icntl, info,
                rinfo)
  @ccall libhsl.ma38cd_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, lvalue::Ref{Cint},
                        lindex::Ref{Cint}, value::Ptr{Float64}, index::Ptr{Cint}, keep::Ptr{Cint},
                        b::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64}, cntl::Ptr{Float64},
                        icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma38dd(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl,
                cntl, info, rinfo, presrv, ap, ai, ax, an, anz, keep, ne)
  @ccall libhsl.ma38dd_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{Float64},
                        xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint},
                        itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint},
                        nblks::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint},
                        ax::Ptr{Float64}, an::Ref{Cint}, anz::Ref{Cint}, keep::Ptr{Cint},
                        ne::Ref{Cint})::Cvoid
end

function ma38ed(cp, n, cperm, rperm, nzoff, itail, xtail, xx, xsize, xuse, ii, isize, iuse, icntl,
                cntl, info, rinfo, nblks, ap, ai, ax, presrv, k1, an, anz, pr, keep, rmax, cmax,
                totnlu, xrmax, xruse, iout, xout)
  @ccall libhsl.ma38ed_(cp::Ptr{Cint}, n::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint},
                        nzoff::Ref{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{Float64},
                        xsize::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint},
                        iuse::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, nblks::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint},
                        ax::Ptr{Float64}, presrv::Ref{Cint}, k1::Ref{Cint}, an::Ref{Cint},
                        anz::Ref{Cint}, pr::Ptr{Cint}, keep::Ptr{Cint}, rmax::Ref{Cint},
                        cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint},
                        iout::Ref{Cint}, xout::Ref{Cint})::Cvoid
end

function ma38fd(cp, nz, n, pn, cperm, rperm, itail, xtail, xx, xsize, ii, isize, icntl, cntl, info,
                rinfo, pgiven, iuse, xuse, wir, wic, wpr, wpc, wm, head, wj, rp, wc, wr, dn, dsiz,
                rmax, cmax, totnlu, xrmax, xruse)
  @ccall libhsl.ma38fd_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, pn::Ref{Cint}, cperm::Ptr{Cint},
                        rperm::Ptr{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{Float64},
                        xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64}, pgiven::Ref{Cint},
                        iuse::Ref{Cint}, xuse::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint},
                        wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, head::Ptr{Cint},
                        wj::Ptr{Cint}, rp::Ptr{Cint}, wc::Ptr{Cint}, wr::Ptr{Cint}, dn::Ref{Cint},
                        dsiz::Ref{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint},
                        xrmax::Ref{Cint}, xruse::Ref{Cint})::Cvoid
end

function ma38gd(xx, xsize, xhead, xuse, ii, isize, ihead, iuse, cp, rp, dn, n, wir, wic, wr, wc,
                ffxp, ffsize, wxp, ffdimc, doslot, pfree, xfree, mhead, mtail, slots)
  @ccall libhsl.ma38gd_(xx::Ptr{Float64}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint},
                        ii::Ptr{Cint}, isize::Ref{Cint}, ihead::Ref{Cint}, iuse::Ref{Cint},
                        cp::Ptr{Cint}, rp::Ptr{Cint}, dn::Ref{Cint}, n::Ref{Cint}, wir::Ptr{Cint},
                        wic::Ptr{Cint}, wr::Ptr{Cint}, wc::Ptr{Cint}, ffxp::Ref{Cint},
                        ffsize::Ref{Cint}, wxp::Ref{Cint}, ffdimc::Ref{Cint}, doslot::Ref{Cint},
                        pfree::Ref{Cint}, xfree::Ref{Cint}, mhead::Ref{Cint}, mtail::Ref{Cint},
                        slots::Ref{Cint})::Cvoid
end

function ma38hd(xx, xsize, ii, isize, n, nz, nzdia, nzoff, nblks, cp, cperm, rperm, pr, pc, w,
                zperm, bp, offp, presrv)
  @ccall libhsl.ma38hd_(xx::Ptr{Float64}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint},
                        n::Ref{Cint}, nz::Ref{Cint}, nzdia::Ref{Cint}, nzoff::Ref{Cint},
                        nblks::Ref{Cint}, cp::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint},
                        pr::Ptr{Cint}, pc::Ptr{Cint}, w::Ptr{Cint}, zperm::Ptr{Cint}, bp::Ptr{Cint},
                        offp::Ptr{Cint}, presrv::Ref{Cint})::Cvoid
end

function ma38jd(n, job, transc, luxsiz, lux, luisiz, lui, b, x, r, z, ly, y, s, cntl, info, rinfo,
                cperm, rperm, an, anz, ap, ai, ax, on, nzoff, offp, offi, offx, nblks, lublkp, blkp,
                irstep)
  @ccall libhsl.ma38jd_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, luxsiz::Ref{Cint},
                        lux::Ptr{Float64}, luisiz::Ref{Cint}, lui::Ptr{Cint}, b::Ptr{Float64},
                        x::Ptr{Float64}, r::Ptr{Float64}, z::Ptr{Float64}, ly::Ref{Cint},
                        y::Ptr{Float64}, s::Ptr{Float64}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, an::Ref{Cint},
                        anz::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{Float64},
                        on::Ref{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint},
                        offx::Ptr{Float64}, nblks::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint},
                        irstep::Ref{Cint})::Cvoid
end

function ma38kd(n, nz, transa, xx, xsize, info, icntl, ii, isize, w, wp, who)
  @ccall libhsl.ma38kd_(n::Ref{Cint}, nz::Ref{Cint}, transa::Ref{Cint}, xx::Ptr{Float64},
                        xsize::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint}, ii::Ptr{Cint},
                        isize::Ref{Cint}, w::Ptr{Cint}, wp::Ptr{Cint}, who::Ref{Cint})::Cvoid
end

function ma38ld(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38ld_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint},
                        lux::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma38md(w, n, rperm, cperm, nzoff, offp, offi, offx, pr, icntl, mp, mi, mx, mn, mnz, presrv,
                nblks, blkp, onz, who, nbelow)
  @ccall libhsl.ma38md_(w::Ptr{Cint}, n::Ref{Cint}, rperm::Ptr{Cint}, cperm::Ptr{Cint},
                        nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{Float64},
                        pr::Ptr{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, mi::Ptr{Cint},
                        mx::Ptr{Float64}, mn::Ref{Cint}, mnz::Ref{Cint}, presrv::Ref{Cint},
                        nblks::Ref{Cint}, blkp::Ptr{Cint}, onz::Ref{Cint}, who::Ref{Cint},
                        nbelow::Ref{Cint})::Cvoid
end

function ma38nd(who, icntl, info, error, s)
  @ccall libhsl.ma38nd_(who::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, error::Ref{Cint},
                        s::Ref{Cint})::Cvoid
end

function ma38od(xx, xsize, xhead, xuse, lui, frdimc, frxp, frnext, frprev, nlu, lup, ffxp, ffsize,
                pfree, xfree)
  @ccall libhsl.ma38od_(xx::Ptr{Float64}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint},
                        lui::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint},
                        frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, ffxp::Ref{Cint},
                        ffsize::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint})::Cvoid
end

function ma38pd(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl,
                info, rinfo, presrv, ap, ai, ax, an, anz, lui, luisiz, lublkp, blkp, offp, on,
                cperm, rperm, ne)
  @ccall libhsl.ma38pd_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{Float64},
                        xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint},
                        itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint},
                        nblks::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64},
                        presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{Float64},
                        an::Ref{Cint}, anz::Ref{Cint}, lui::Ptr{Cint}, luisiz::Ref{Cint},
                        lublkp::Ptr{Cint}, blkp::Ptr{Cint}, offp::Ptr{Cint}, on::Ref{Cint},
                        cperm::Ptr{Cint}, rperm::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function ma38qd(presrv, n, nz, cperm, rperm, pr, w, nblks, arx, ari, nzoff, nzdia, icntl, mp, blkp,
                mi, mx, offp, on, nzblk, cblk, kn, nz2, nbelow)
  @ccall libhsl.ma38qd_(presrv::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, cperm::Ptr{Cint},
                        rperm::Ptr{Cint}, pr::Ptr{Cint}, w::Ptr{Cint}, nblks::Ref{Cint},
                        arx::Ptr{Float64}, ari::Ptr{Cint}, nzoff::Ref{Cint}, nzdia::Ref{Cint},
                        icntl::Ptr{Cint}, mp::Ptr{Cint}, blkp::Ptr{Cint}, mi::Ptr{Cint},
                        mx::Ptr{Float64}, offp::Ptr{Cint}, on::Ref{Cint}, nzblk::Ref{Cint},
                        cblk::Ref{Cint}, kn::Ref{Cint}, nz2::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function ma38rd(cp, nz, n, xtail, xx, xsize, xuse, ari, cperm, rperm, icntl, info, rinfo, mc, mr,
                wir, wic, wpr, wpc, wm, wj, frdimc, frxp, frnext, frprev, nlu, lup, lui, noutsd,
                xrmax)
  @ccall libhsl.ma38rd_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, xtail::Ref{Cint},
                        xx::Ptr{Float64}, xsize::Ref{Cint}, xuse::Ref{Cint}, ari::Ptr{Cint},
                        cperm::Ptr{Cint}, rperm::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, mc::Ref{Cint}, mr::Ref{Cint}, wir::Ptr{Cint},
                        wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint},
                        wj::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint},
                        frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint},
                        noutsd::Ref{Cint}, xrmax::Ref{Cint})::Cvoid
end

function ma38sd(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38sd_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint},
                        lux::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma38td(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38td_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint},
                        lui::Ptr{Cint}, lux::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma38ud(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38ud_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint},
                        lui::Ptr{Cint}, lux::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma38yd(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl,
                info, rinfo, b, x, lx, w, lw)
  @ccall libhsl.ma38yd_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint},
                        job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint},
                        value::Ptr{Float64}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64},
                        icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, b::Ptr{Float64},
                        x::Ptr{Float64}, lx::Ref{Cint}, w::Ptr{Float64}, lw::Ref{Cint})::Cvoid
end

function ma38zd(who, error, i, j, x, io)
  @ccall libhsl.ma38zd_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint},
                        x::Ref{Float64}, io::Ref{Cint})::Cvoid
end

function ma38i(keep, cntl, icntl)
  @ccall libhsl.ma38i_(keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function ma38a(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.ma38a_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint},
                       lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{Float32}, index::Ptr{Cint},
                       keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma38b(n, ne, job, transa, lvalue, lindex, value, index, keep, cntl, icntl, info, rinfo)
  @ccall libhsl.ma38b_(n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, transa::Ref{Cint},
                       lvalue::Ref{Cint}, lindex::Ref{Cint}, value::Ptr{Float32}, index::Ptr{Cint},
                       keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma38c(n, job, transc, lvalue, lindex, value, index, keep, b, x, w, cntl, icntl, info,
               rinfo)
  @ccall libhsl.ma38c_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, lvalue::Ref{Cint},
                       lindex::Ref{Cint}, value::Ptr{Float32}, index::Ptr{Cint}, keep::Ptr{Cint},
                       b::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32}, cntl::Ptr{Float32},
                       icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma38d(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, cntl,
               info, rinfo, presrv, ap, ai, ax, an, anz, keep, ne)
  @ccall libhsl.ma38d_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{Float32},
                       xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint},
                       itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint},
                       nblks::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint},
                       ax::Ptr{Float32}, an::Ref{Cint}, anz::Ref{Cint}, keep::Ptr{Cint},
                       ne::Ref{Cint})::Cvoid
end

function ma38e(cp, n, cperm, rperm, nzoff, itail, xtail, xx, xsize, xuse, ii, isize, iuse, icntl,
               cntl, info, rinfo, nblks, ap, ai, ax, presrv, k1, an, anz, pr, keep, rmax, cmax,
               totnlu, xrmax, xruse, iout, xout)
  @ccall libhsl.ma38e_(cp::Ptr{Cint}, n::Ref{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint},
                       nzoff::Ref{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{Float32},
                       xsize::Ref{Cint}, xuse::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint},
                       iuse::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, nblks::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint},
                       ax::Ptr{Float32}, presrv::Ref{Cint}, k1::Ref{Cint}, an::Ref{Cint},
                       anz::Ref{Cint}, pr::Ptr{Cint}, keep::Ptr{Cint}, rmax::Ref{Cint},
                       cmax::Ref{Cint}, totnlu::Ref{Cint}, xrmax::Ref{Cint}, xruse::Ref{Cint},
                       iout::Ref{Cint}, xout::Ref{Cint})::Cvoid
end

function ma38f(cp, nz, n, pn, cperm, rperm, itail, xtail, xx, xsize, ii, isize, icntl, cntl, info,
               rinfo, pgiven, iuse, xuse, wir, wic, wpr, wpc, wm, head, wj, rp, wc, wr, dn, dsiz,
               rmax, cmax, totnlu, xrmax, xruse)
  @ccall libhsl.ma38f_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, pn::Ref{Cint}, cperm::Ptr{Cint},
                       rperm::Ptr{Cint}, itail::Ref{Cint}, xtail::Ref{Cint}, xx::Ptr{Float32},
                       xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32}, pgiven::Ref{Cint},
                       iuse::Ref{Cint}, xuse::Ref{Cint}, wir::Ptr{Cint}, wic::Ptr{Cint},
                       wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, head::Ptr{Cint},
                       wj::Ptr{Cint}, rp::Ptr{Cint}, wc::Ptr{Cint}, wr::Ptr{Cint}, dn::Ref{Cint},
                       dsiz::Ref{Cint}, rmax::Ref{Cint}, cmax::Ref{Cint}, totnlu::Ref{Cint},
                       xrmax::Ref{Cint}, xruse::Ref{Cint})::Cvoid
end

function ma38g(xx, xsize, xhead, xuse, ii, isize, ihead, iuse, cp, rp, dn, n, wir, wic, wr, wc,
               ffxp, ffsize, wxp, ffdimc, doslot, pfree, xfree, mhead, mtail, slots)
  @ccall libhsl.ma38g_(xx::Ptr{Float32}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint},
                       ii::Ptr{Cint}, isize::Ref{Cint}, ihead::Ref{Cint}, iuse::Ref{Cint},
                       cp::Ptr{Cint}, rp::Ptr{Cint}, dn::Ref{Cint}, n::Ref{Cint}, wir::Ptr{Cint},
                       wic::Ptr{Cint}, wr::Ptr{Cint}, wc::Ptr{Cint}, ffxp::Ref{Cint},
                       ffsize::Ref{Cint}, wxp::Ref{Cint}, ffdimc::Ref{Cint}, doslot::Ref{Cint},
                       pfree::Ref{Cint}, xfree::Ref{Cint}, mhead::Ref{Cint}, mtail::Ref{Cint},
                       slots::Ref{Cint})::Cvoid
end

function ma38h(xx, xsize, ii, isize, n, nz, nzdia, nzoff, nblks, cp, cperm, rperm, pr, pc, w, zperm,
               bp, offp, presrv)
  @ccall libhsl.ma38h_(xx::Ptr{Float32}, xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint},
                       n::Ref{Cint}, nz::Ref{Cint}, nzdia::Ref{Cint}, nzoff::Ref{Cint},
                       nblks::Ref{Cint}, cp::Ptr{Cint}, cperm::Ptr{Cint}, rperm::Ptr{Cint},
                       pr::Ptr{Cint}, pc::Ptr{Cint}, w::Ptr{Cint}, zperm::Ptr{Cint}, bp::Ptr{Cint},
                       offp::Ptr{Cint}, presrv::Ref{Cint})::Cvoid
end

function ma38j(n, job, transc, luxsiz, lux, luisiz, lui, b, x, r, z, ly, y, s, cntl, info, rinfo,
               cperm, rperm, an, anz, ap, ai, ax, on, nzoff, offp, offi, offx, nblks, lublkp, blkp,
               irstep)
  @ccall libhsl.ma38j_(n::Ref{Cint}, job::Ref{Cint}, transc::Ref{Cint}, luxsiz::Ref{Cint},
                       lux::Ptr{Float32}, luisiz::Ref{Cint}, lui::Ptr{Cint}, b::Ptr{Float32},
                       x::Ptr{Float32}, r::Ptr{Float32}, z::Ptr{Float32}, ly::Ref{Cint},
                       y::Ptr{Float32}, s::Ptr{Float32}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, cperm::Ptr{Cint}, rperm::Ptr{Cint}, an::Ref{Cint},
                       anz::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{Float32},
                       on::Ref{Cint}, nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint},
                       offx::Ptr{Float32}, nblks::Ref{Cint}, lublkp::Ptr{Cint}, blkp::Ptr{Cint},
                       irstep::Ref{Cint})::Cvoid
end

function ma38k(n, nz, transa, xx, xsize, info, icntl, ii, isize, w, wp, who)
  @ccall libhsl.ma38k_(n::Ref{Cint}, nz::Ref{Cint}, transa::Ref{Cint}, xx::Ptr{Float32},
                       xsize::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint}, ii::Ptr{Cint},
                       isize::Ref{Cint}, w::Ptr{Cint}, wp::Ptr{Cint}, who::Ref{Cint})::Cvoid
end

function ma38l(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38l_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint},
                       lux::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma38m(w, n, rperm, cperm, nzoff, offp, offi, offx, pr, icntl, mp, mi, mx, mn, mnz, presrv,
               nblks, blkp, onz, who, nbelow)
  @ccall libhsl.ma38m_(w::Ptr{Cint}, n::Ref{Cint}, rperm::Ptr{Cint}, cperm::Ptr{Cint},
                       nzoff::Ref{Cint}, offp::Ptr{Cint}, offi::Ptr{Cint}, offx::Ptr{Float32},
                       pr::Ptr{Cint}, icntl::Ptr{Cint}, mp::Ptr{Cint}, mi::Ptr{Cint},
                       mx::Ptr{Float32}, mn::Ref{Cint}, mnz::Ref{Cint}, presrv::Ref{Cint},
                       nblks::Ref{Cint}, blkp::Ptr{Cint}, onz::Ref{Cint}, who::Ref{Cint},
                       nbelow::Ref{Cint})::Cvoid
end

function ma38n(who, icntl, info, error, s)
  @ccall libhsl.ma38n_(who::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, error::Ref{Cint},
                       s::Ref{Cint})::Cvoid
end

function ma38o(xx, xsize, xhead, xuse, lui, frdimc, frxp, frnext, frprev, nlu, lup, ffxp, ffsize,
               pfree, xfree)
  @ccall libhsl.ma38o_(xx::Ptr{Float32}, xsize::Ref{Cint}, xhead::Ref{Cint}, xuse::Ref{Cint},
                       lui::Ptr{Cint}, frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint},
                       frprev::Ptr{Cint}, nlu::Ref{Cint}, lup::Ptr{Cint}, ffxp::Ref{Cint},
                       ffsize::Ref{Cint}, pfree::Ref{Cint}, xfree::Ref{Cint})::Cvoid
end

function ma38p(n, nz, cp, xx, xsize, ii, isize, xtail, itail, iuse, xuse, nzoff, nblks, icntl, info,
               rinfo, presrv, ap, ai, ax, an, anz, lui, luisiz, lublkp, blkp, offp, on, cperm,
               rperm, ne)
  @ccall libhsl.ma38p_(n::Ref{Cint}, nz::Ref{Cint}, cp::Ptr{Cint}, xx::Ptr{Float32},
                       xsize::Ref{Cint}, ii::Ptr{Cint}, isize::Ref{Cint}, xtail::Ref{Cint},
                       itail::Ref{Cint}, iuse::Ref{Cint}, xuse::Ref{Cint}, nzoff::Ref{Cint},
                       nblks::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32},
                       presrv::Ref{Cint}, ap::Ptr{Cint}, ai::Ptr{Cint}, ax::Ptr{Float32},
                       an::Ref{Cint}, anz::Ref{Cint}, lui::Ptr{Cint}, luisiz::Ref{Cint},
                       lublkp::Ptr{Cint}, blkp::Ptr{Cint}, offp::Ptr{Cint}, on::Ref{Cint},
                       cperm::Ptr{Cint}, rperm::Ptr{Cint}, ne::Ref{Cint})::Cvoid
end

function ma38q(presrv, n, nz, cperm, rperm, pr, w, nblks, arx, ari, nzoff, nzdia, icntl, mp, blkp,
               mi, mx, offp, on, nzblk, cblk, kn, nz2, nbelow)
  @ccall libhsl.ma38q_(presrv::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, cperm::Ptr{Cint},
                       rperm::Ptr{Cint}, pr::Ptr{Cint}, w::Ptr{Cint}, nblks::Ref{Cint},
                       arx::Ptr{Float32}, ari::Ptr{Cint}, nzoff::Ref{Cint}, nzdia::Ref{Cint},
                       icntl::Ptr{Cint}, mp::Ptr{Cint}, blkp::Ptr{Cint}, mi::Ptr{Cint},
                       mx::Ptr{Float32}, offp::Ptr{Cint}, on::Ref{Cint}, nzblk::Ref{Cint},
                       cblk::Ref{Cint}, kn::Ref{Cint}, nz2::Ref{Cint}, nbelow::Ref{Cint})::Cvoid
end

function ma38r(cp, nz, n, xtail, xx, xsize, xuse, ari, cperm, rperm, icntl, info, rinfo, mc, mr,
               wir, wic, wpr, wpc, wm, wj, frdimc, frxp, frnext, frprev, nlu, lup, lui, noutsd,
               xrmax)
  @ccall libhsl.ma38r_(cp::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint}, xtail::Ref{Cint},
                       xx::Ptr{Float32}, xsize::Ref{Cint}, xuse::Ref{Cint}, ari::Ptr{Cint},
                       cperm::Ptr{Cint}, rperm::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, mc::Ref{Cint}, mr::Ref{Cint}, wir::Ptr{Cint},
                       wic::Ptr{Cint}, wpr::Ptr{Cint}, wpc::Ptr{Cint}, wm::Ptr{Cint}, wj::Ptr{Cint},
                       frdimc::Ptr{Cint}, frxp::Ptr{Cint}, frnext::Ptr{Cint}, frprev::Ptr{Cint},
                       nlu::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint}, noutsd::Ref{Cint},
                       xrmax::Ref{Cint})::Cvoid
end

function ma38s(nlu, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38s_(nlu::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint}, lui::Ptr{Cint},
                       lux::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma38t(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38t_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint},
                       lui::Ptr{Cint}, lux::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma38u(nlu, npiv, n, lup, lui, lux, x, w)
  @ccall libhsl.ma38u_(nlu::Ref{Cint}, npiv::Ref{Cint}, n::Ref{Cint}, lup::Ptr{Cint},
                       lui::Ptr{Cint}, lux::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function ma38y(who, where, n, ne, job, trans, lvalue, lindex, value, index, keep, cntl, icntl, info,
               rinfo, b, x, lx, w, lw)
  @ccall libhsl.ma38y_(who::Ref{Cint}, where::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint},
                       job::Ref{Cint}, trans::Ref{Cint}, lvalue::Ref{Cint}, lindex::Ref{Cint},
                       value::Ptr{Float32}, index::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32},
                       icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, b::Ptr{Float32},
                       x::Ptr{Float32}, lx::Ref{Cint}, w::Ptr{Float32}, lw::Ref{Cint})::Cvoid
end

function ma38z(who, error, i, j, x, io)
  @ccall libhsl.ma38z_(who::Ref{Cint}, error::Ref{Cint}, i::Ref{Cint}, j::Ref{Cint},
                       x::Ref{Float32}, io::Ref{Cint})::Cvoid
end
