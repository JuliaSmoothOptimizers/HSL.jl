function ma49id(cntl, icntl, keep)
  @ccall libhsl.ma49id_(cntl::Ptr{Float64}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49ad(job, m, n, ne, irn, jcn, iptr, jptr, a, b, x, keep, is, maxis, s, maxs, q, maxq,
                cntl, icntl, info, rinfo)
  @ccall libhsl.ma49ad_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint},
                        jcn::Ptr{Cint}, iptr::Ptr{Cint}, jptr::Ptr{Cint}, a::Ptr{Float64},
                        b::Ptr{Float64}, x::Ptr{Float64}, keep::Ptr{Cint}, is::Ptr{Cint},
                        maxis::Ref{Cint}, s::Ptr{Float64}, maxs::Ref{Cint}, q::Ptr{Float64},
                        maxq::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma49bd(m, n, nnz, a, map, icn, iptr, ikeep, iw, liw, awork, la, q, lq, noper, iflag, nproc,
                info, cntl, icntl, keep)
  @ccall libhsl.ma49bd_(m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, a::Ptr{Float64}, map::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, ikeep::Ptr{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, awork::Ptr{Float64}, la::Ref{Cint}, q::Ptr{Float64},
                        lq::Ref{Cint}, noper::Ref{Float64}, iflag::Ref{Cint}, nproc::Ref{Cint},
                        info::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                        keep::Ptr{Cint})::Cvoid
end

function ma49cd(m, n, nz, a, icn, iptr, jptr, nstk, nsteps, iw, liw, awork, la, q, lq, x, b, iflag,
                nproc, info, rinfo, icntl, keep, cntl)
  @ccall libhsl.ma49cd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        iptr::Ptr{Cint}, jptr::Ptr{Cint}, nstk::Ptr{Cint}, nsteps::Ref{Cint},
                        iw::Ptr{Cint}, liw::Ref{Cint}, awork::Ptr{Float64}, la::Ref{Cint},
                        q::Ptr{Float64}, lq::Ref{Cint}, x::Ptr{Float64}, b::Ptr{Float64},
                        iflag::Ref{Cint}, nproc::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64},
                        icntl::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma49dd(m, n, nz, irn, jptr, icn, iptr, iw, liw, ikeep, iflag, iord, store, info, icntl,
                keep, llirn)
  @ccall libhsl.ma49dd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        ikeep::Ptr{Cint}, iflag::Ref{Cint}, iord::Ref{Cint}, store::Ref{Cint},
                        info::Ptr{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint}, llirn::Ref{Cint})::Cvoid
end

function ma49ed(m, n, nz, irn, jptr, icn, iptr, perm, icnata, ataptr, lata, iw2, iw3, iw4, iflag,
                ierror)
  @ccall libhsl.ma49ed_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, perm::Ptr{Cint}, icnata::Ptr{Cint},
                        ataptr::Ptr{Cint}, lata::Ref{Cint}, iw2::Ptr{Cint}, iw3::Ptr{Cint},
                        iw4::Ptr{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint})::Cvoid
end

function ma49fd(m, n, nz, a, icn, iptr, le, rwperm, rwblk, perm, ides, nsteps, nelim, fils, frere,
                ndd, lerow, iw2, iwsiz, iw3, maxrow, ptrist, qstack, q, lq, awork, la, iw, liw,
                istack, rstack, maxfrt, iflag, ierror, sne, lcks, icntl, iwptr, info, posfac, qpos,
                noper, rlxqr, blas3, cntl)
  @ccall libhsl.ma49fd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        iptr::Ptr{Cint}, le::Ptr{Cint}, rwperm::Ptr{Cint}, rwblk::Ptr{Cint},
                        perm::Ptr{Cint}, ides::Ref{Cint}, nsteps::Ref{Cint}, nelim::Ptr{Cint},
                        fils::Ptr{Cint}, frere::Ptr{Cint}, ndd::Ptr{Cint}, lerow::Ptr{Cint},
                        iw2::Ptr{Cint}, iwsiz::Ref{Cint}, iw3::Ptr{Cint}, maxrow::Ref{Cint},
                        ptrist::Ptr{Cint}, qstack::Ptr{Float64}, q::Ptr{Float64}, lq::Ref{Cint},
                        awork::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        istack::Ptr{Cint}, rstack::Ptr{Cint}, maxfrt::Ref{Cint}, iflag::Ref{Cint},
                        ierror::Ref{Cint}, sne::Ref{Cint}, lcks::Ptr{Cint}, icntl::Ptr{Cint},
                        iwptr::Ref{Cint}, info::Ptr{Cint}, posfac::Ref{Cint}, qpos::Ref{Cint},
                        noper::Ref{Float64}, rlxqr::Ref{Cint}, blas3::Ref{Cint},
                        cntl::Ptr{Float64})::Cvoid
end

function ma49gd(m, n, nz, nsteps, inode, nfront, nrass, numorg, ides, perm, fils, frere, lerow, ndd,
                rwblk, istack, rstack, ptrist, iw2, iwsiz, iw3, maxrow, rwperm, le, nelim, ifront,
                ipt, iw, liw, awork, la, a, iptr, icn, iblk, iqptr, ysize, blksiz, posfac, rstk,
                iright, iflag, ierror, blas3, sne, rlxqr, ldiag, lp)
  @ccall libhsl.ma49gd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint},
                        inode::Ref{Cint}, nfront::Ref{Cint}, nrass::Ref{Cint}, numorg::Ref{Cint},
                        ides::Ref{Cint}, perm::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                        lerow::Ptr{Cint}, ndd::Ptr{Cint}, rwblk::Ptr{Cint}, istack::Ptr{Cint},
                        rstack::Ptr{Cint}, ptrist::Ptr{Cint}, iw2::Ptr{Cint}, iwsiz::Ref{Cint},
                        iw3::Ptr{Cint}, maxrow::Ref{Cint}, rwperm::Ptr{Cint}, le::Ptr{Cint},
                        nelim::Ptr{Cint}, ifront::Ptr{Cint}, ipt::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, awork::Ptr{Float64}, la::Ref{Cint}, a::Ptr{Float64},
                        iptr::Ptr{Cint}, icn::Ptr{Cint}, iblk::Ref{Cint}, iqptr::Ref{Cint},
                        ysize::Ref{Cint}, blksiz::Ref{Cint}, posfac::Ref{Cint}, rstk::Ref{Cint},
                        iright::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, blas3::Ref{Cint},
                        sne::Ref{Cint}, rlxqr::Ref{Cint}, ldiag::Ref{Cint}, lp::Ref{Cint})::Cvoid
end

function ma49hd(m, n, nz, irn, jptr, icn, iptr, rnto, cnto, rcmstr, ccmstr, jptrout, iw, liw, iflag,
                store, perm, istat, nzbtf, nzout, info, mprint, ldiag, lp, mp, ierror, reduc)
  @ccall libhsl.ma49hd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, rnto::Ptr{Cint}, cnto::Ptr{Cint},
                        rcmstr::Ptr{Cint}, ccmstr::Ptr{Cint}, jptrout::Ptr{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, iflag::Ref{Cint}, store::Ref{Cint}, perm::Ptr{Cint},
                        istat::Ptr{Cint}, nzbtf::Ref{Cint}, nzout::Ref{Cint}, info::Ptr{Cint},
                        mprint::Ref{Cint}, ldiag::Ref{Cint}, lp::Ref{Cint}, mp::Ref{Cint},
                        ierror::Ref{Cint}, reduc::Ref{Cint})::Cvoid
end

function ma49jd(dimv, v, nvar, n, m, nelim, q, llq, work, lwork, ywork, ly, t, qptr, wb, sne, lcks,
                noper, info, cntl)
  @ccall libhsl.ma49jd_(dimv::Ref{Cint}, v::Ptr{Float64}, nvar::Ref{Cint}, n::Ref{Cint},
                        m::Ref{Cint}, nelim::Ref{Cint}, q::Ptr{Float64}, llq::Ref{Cint},
                        work::Ptr{Float64}, lwork::Ref{Cint}, ywork::Ptr{Float64}, ly::Ref{Cint},
                        t::Ptr{Float64}, qptr::Ref{Cint}, wb::Ref{Cint}, sne::Ref{Cint},
                        lcks::Ptr{Cint}, noper::Ref{Float64}, info::Ptr{Cint},
                        cntl::Ptr{Float64})::Cvoid
end

function ma49kd(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, awork, la, nsteps, x, b, qstack, q,
                lq, qwork, lqw, ides, maxfrt, nproc, nstk, pool, leaves, maxlea, nbrad, fils, frere,
                iflag, ierror, iprob, btf, iat)
  @ccall libhsl.ma49kd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        iptr::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, ir::Ptr{Cint},
                        lir::Ref{Cint}, istack::Ptr{Cint}, awork::Ptr{Float64}, la::Ref{Cint},
                        nsteps::Ref{Cint}, x::Ptr{Float64}, b::Ptr{Float64}, qstack::Ptr{Float64},
                        q::Ptr{Float64}, lq::Ref{Cint}, qwork::Ptr{Float64}, lqw::Ref{Cint},
                        ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint},
                        pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint}, nbrad::Ref{Cint},
                        fils::Ptr{Cint}, frere::Ptr{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint},
                        iprob::Ref{Cint}, btf::Ref{Cint}, iat::Ref{Cint})::Cvoid
end

function ma49ld(mat, trans, m, n, ifact, lft, r, lr, istack, q, lq, qstack, awork, la, qwork, lqw,
                b, x, ides, nsteps, maxfrt, nproc, nstk, pool, maxlea, nbrad, fils, frere, iflag,
                ierror)
  @ccall libhsl.ma49ld_(mat::Ref{UInt8}, trans::Ref{UInt8}, m::Ref{Cint}, n::Ref{Cint},
                        ifact::Ptr{Cint}, lft::Ref{Cint}, r::Ptr{Float64}, lr::Ref{Cint},
                        istack::Ptr{Cint}, q::Ptr{Float64}, lq::Ref{Cint}, qstack::Ptr{Float64},
                        awork::Ptr{Float64}, la::Ref{Cint}, qwork::Ptr{Float64}, lqw::Ref{Cint},
                        b::Ptr{Float64}, x::Ptr{Float64}, ides::Ref{Cint}, nsteps::Ref{Cint},
                        maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint}, pool::Ptr{Cint},
                        maxlea::Ref{Cint}, nbrad::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                        iflag::Ref{Cint}, ierror::Ref{Cint})::Cvoid
end

function ma49md(n, rwblk, nstk, ndd, lerow, ma59cd, fils, frere, mstk, ncstk, nelim, nsteps, info,
                keep)
  @ccall libhsl.ma49md_(n::Ref{Cint}, rwblk::Ptr{Cint}, nstk::Ptr{Cint}, ndd::Ptr{Cint},
                        lerow::Ptr{Cint}, ma59cd::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                        mstk::Ptr{Cint}, ncstk::Ptr{Cint}, nelim::Ptr{Cint}, nsteps::Ref{Cint},
                        info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49nd(m, n, nz, irn, jptr, icn, iptr, map, rwcl, iflag, ierror, info37, info38, store,
                imap, mp, lp, llirn)
  @ccall libhsl.ma49nd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, map::Ptr{Cint}, rwcl::Ref{Cint},
                        iflag::Ref{Cint}, ierror::Ref{Cint}, info37::Ref{Cint}, info38::Ref{Cint},
                        store::Ref{Cint}, imap::Ref{Cint}, mp::Ref{Cint}, lp::Ref{Cint},
                        llirn::Ref{Cint})::Cvoid
end

function ma49od(m, n, nz, irn, jptr, icn, iptr, icnata, ataptr, lata, length, iw2, iflag, ierror)
  @ccall libhsl.ma49od_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        icn::Ptr{Cint}, iptr::Ptr{Cint}, icnata::Ptr{Cint}, ataptr::Ptr{Cint},
                        lata::Ref{Cint}, length::Ptr{Cint}, iw2::Ptr{Cint}, iflag::Ref{Cint},
                        ierror::Ref{Cint})::Cvoid
end

function ma49pd(m, n, nz, irn, jptr, perm, nelim, nsteps, le, rwperm, rwblk, iw)
  @ccall libhsl.ma49pd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                        perm::Ptr{Cint}, nelim::Ptr{Cint}, nsteps::Ref{Cint}, le::Ptr{Cint},
                        rwperm::Ptr{Cint}, rwblk::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ma49qd(root, nsteps, fils, frere, leaves, maxlea)
  @ccall libhsl.ma49qd_(root::Ref{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                        leaves::Ptr{Cint}, maxlea::Ref{Cint})::Cvoid
end

function ma49rd(nprocs, liw, a, la, lusizr, maxsiz, nsteps, nprocw, lenbud, lena, iptend, iptbeg,
                lrlu, iptrlu, iptini, lrlus, ipta, nblec, aloclu, again, buddy, ipttop, lilu,
                iptilu, iptfir, lilus, nbleci, iflag, ierror, icntl)
  @ccall libhsl.ma49rd_(nprocs::Ref{Cint}, liw::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint},
                        lusizr::Ref{Cint}, maxsiz::Ref{Cint}, nsteps::Ref{Cint}, nprocw::Ref{Cint},
                        lenbud::Ref{Cint}, lena::Ref{Cint}, iptend::Ref{Cint}, iptbeg::Ref{Cint},
                        lrlu::Ref{Cint}, iptrlu::Ref{Cint}, iptini::Ref{Cint}, lrlus::Ref{Cint},
                        ipta::Ptr{Cint}, nblec::Ref{Cint}, aloclu::Ref{Cint}, again::Ref{Cint},
                        buddy::Ref{Cint}, ipttop::Ref{Cint}, lilu::Ref{Cint}, iptilu::Ref{Cint},
                        iptfir::Ref{Cint}, lilus::Ref{Cint}, nbleci::Ref{Cint}, iflag::Ref{Cint},
                        ierror::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma49sd(nblk, nfront, nrass, frrows, frcols, desbtf, iwsiz, blas3)
  @ccall libhsl.ma49sd_(nblk::Ref{Cint}, nfront::Ref{Cint}, nrass::Ref{Cint}, frrows::Ptr{Cint},
                        frcols::Ptr{Cint}, desbtf::Ptr{Cint}, iwsiz::Ref{Cint},
                        blas3::Ref{Cint})::Cvoid
end

function ma49td(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, iwork, awork, la, nsteps, qstack, q,
                lq, qwork, lqw, b, x, res, w, ww, ides, maxfrt, nproc, nstk, pool, leaves, maxlea,
                nbrad, fils, frere, estim, iflag, ierror, mp, ldiag, sne, values, omegax, omegar)
  @ccall libhsl.ma49td_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        iptr::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, ir::Ptr{Cint},
                        lir::Ref{Cint}, istack::Ptr{Cint}, iwork::Ptr{Cint}, awork::Ptr{Float64},
                        la::Ref{Cint}, nsteps::Ref{Cint}, qstack::Ptr{Float64}, q::Ptr{Float64},
                        lq::Ref{Cint}, qwork::Ptr{Float64}, lqw::Ref{Cint}, b::Ptr{Float64},
                        x::Ptr{Float64}, res::Ptr{Float64}, w::Ptr{Float64}, ww::Ptr{Float64},
                        ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint},
                        pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint}, nbrad::Ref{Cint},
                        fils::Ptr{Cint}, frere::Ptr{Cint}, estim::Ref{Cint}, iflag::Ref{Cint},
                        ierror::Ref{Cint}, mp::Ref{Cint}, ldiag::Ref{Cint}, sne::Ref{Cint},
                        values::Ptr{Float64}, omegax::Ptr{Float64}, omegar::Ptr{Float64})::Cvoid
end

function ma49ud(m, n, nz, nzbtf, a, icn, iptr, rnto, cnto, ccmstr, rcmstr, aout, irnout, jptrout, r,
                lr, ir, lir, istack, awork, la, nsteps, x, b, qstack, q, lq, qwork, lqw, nproc,
                iwork, pool, leaves, fils, frere, nstk, iflag, info, icntl, keep)
  @ccall libhsl.ma49ud_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nzbtf::Ref{Cint},
                        a::Ptr{Float64}, icn::Ptr{Cint}, iptr::Ptr{Cint}, rnto::Ptr{Cint},
                        cnto::Ptr{Cint}, ccmstr::Ptr{Cint}, rcmstr::Ptr{Cint}, aout::Ptr{Float64},
                        irnout::Ptr{Cint}, jptrout::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint},
                        ir::Ptr{Cint}, lir::Ref{Cint}, istack::Ptr{Cint}, awork::Ptr{Float64},
                        la::Ref{Cint}, nsteps::Ref{Cint}, x::Ptr{Float64}, b::Ptr{Float64},
                        qstack::Ptr{Float64}, q::Ptr{Float64}, lq::Ref{Cint}, qwork::Ptr{Float64},
                        lqw::Ref{Cint}, nproc::Ref{Cint}, iwork::Ptr{Cint}, pool::Ptr{Cint},
                        leaves::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, nstk::Ptr{Cint},
                        iflag::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49vd(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, iwork, awork, la, temp, nsteps,
                qstack, q, lq, qwork, lqw, b, x, res, w, ww, ides, maxfrt, nproc, nstk, pool,
                leaves, maxlea, nbrad, fils, frere, maxit, iflag, ierror, mp, ldiag, sne, cgce,
                noiter, values)
  @ccall libhsl.ma49vd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        iptr::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, ir::Ptr{Cint},
                        lir::Ref{Cint}, istack::Ptr{Cint}, iwork::Ptr{Cint}, awork::Ptr{Float64},
                        la::Ref{Cint}, temp::Ptr{Float64}, nsteps::Ref{Cint}, qstack::Ptr{Float64},
                        q::Ptr{Float64}, lq::Ref{Cint}, qwork::Ptr{Float64}, lqw::Ref{Cint},
                        b::Ptr{Float64}, x::Ptr{Float64}, res::Ptr{Float64}, w::Ptr{Float64},
                        ww::Ptr{Float64}, ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint},
                        nstk::Ptr{Cint}, pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint},
                        nbrad::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, maxit::Ref{Cint},
                        iflag::Ref{Cint}, ierror::Ref{Cint}, mp::Ref{Cint}, ldiag::Ref{Cint},
                        sne::Ref{Cint}, cgce::Ref{Float64}, noiter::Ref{Cint},
                        values::Ptr{Float64})::Cvoid
end

function ma49wd(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag)
  @ccall libhsl.ma49wd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function ma49xd(n, ipe, iw, lw, iwfr)
  @ccall libhsl.ma49xd_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint},
                        iwfr::Ref{Cint})::Cvoid
end

function ma49yd(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl.ma49yd_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                        na::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma49zd(m, n, ne, jcn, iptr, keep, is, maxis, s, maxs, ipr, ir, r, lr, rows, icntl, info)
  @ccall libhsl.ma49zd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, iptr::Ptr{Cint},
                        keep::Ptr{Cint}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float64},
                        maxs::Ref{Cint}, ipr::Ptr{Cint}, ir::Ptr{Cint}, r::Ptr{Float64},
                        lr::Ref{Cint}, rows::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma49i(cntl, icntl, keep)
  @ccall libhsl.ma49i_(cntl::Ptr{Float32}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49a(job, m, n, ne, irn, jcn, iptr, jptr, a, b, x, keep, is, maxis, s, maxs, q, maxq,
               cntl, icntl, info, rinfo)
  @ccall libhsl.ma49a_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint},
                       jcn::Ptr{Cint}, iptr::Ptr{Cint}, jptr::Ptr{Cint}, a::Ptr{Float32},
                       b::Ptr{Float32}, x::Ptr{Float32}, keep::Ptr{Cint}, is::Ptr{Cint},
                       maxis::Ref{Cint}, s::Ptr{Float32}, maxs::Ref{Cint}, q::Ptr{Float32},
                       maxq::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma49b(m, n, nnz, a, map, icn, iptr, ikeep, iw, liw, awork, la, q, lq, noper, iflag, nproc,
               info, cntl, icntl, keep)
  @ccall libhsl.ma49b_(m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, a::Ptr{Float32}, map::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, ikeep::Ptr{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, awork::Ptr{Float32}, la::Ref{Cint}, q::Ptr{Float32},
                       lq::Ref{Cint}, noper::Ref{Float32}, iflag::Ref{Cint}, nproc::Ref{Cint},
                       info::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                       keep::Ptr{Cint})::Cvoid
end

function ma49c(m, n, nz, a, icn, iptr, jptr, nstk, nsteps, iw, liw, awork, la, q, lq, x, b, iflag,
               nproc, info, rinfo, icntl, keep, cntl)
  @ccall libhsl.ma49c_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       iptr::Ptr{Cint}, jptr::Ptr{Cint}, nstk::Ptr{Cint}, nsteps::Ref{Cint},
                       iw::Ptr{Cint}, liw::Ref{Cint}, awork::Ptr{Float32}, la::Ref{Cint},
                       q::Ptr{Float32}, lq::Ref{Cint}, x::Ptr{Float32}, b::Ptr{Float32},
                       iflag::Ref{Cint}, nproc::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32},
                       icntl::Ptr{Cint}, keep::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma49d(m, n, nz, irn, jptr, icn, iptr, iw, liw, ikeep, iflag, iord, store, info, icntl,
               keep, llirn)
  @ccall libhsl.ma49d_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       ikeep::Ptr{Cint}, iflag::Ref{Cint}, iord::Ref{Cint}, store::Ref{Cint},
                       info::Ptr{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint}, llirn::Ref{Cint})::Cvoid
end

function ma49e(m, n, nz, irn, jptr, icn, iptr, perm, icnata, ataptr, lata, iw2, iw3, iw4, iflag,
               ierror)
  @ccall libhsl.ma49e_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, perm::Ptr{Cint}, icnata::Ptr{Cint},
                       ataptr::Ptr{Cint}, lata::Ref{Cint}, iw2::Ptr{Cint}, iw3::Ptr{Cint},
                       iw4::Ptr{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint})::Cvoid
end

function ma49f(m, n, nz, a, icn, iptr, le, rwperm, rwblk, perm, ides, nsteps, nelim, fils, frere,
               ndd, lerow, iw2, iwsiz, iw3, maxrow, ptrist, qstack, q, lq, awork, la, iw, liw,
               istack, rstack, maxfrt, iflag, ierror, sne, lcks, icntl, iwptr, info, posfac, qpos,
               noper, rlxqr, blas3, cntl)
  @ccall libhsl.ma49f_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       iptr::Ptr{Cint}, le::Ptr{Cint}, rwperm::Ptr{Cint}, rwblk::Ptr{Cint},
                       perm::Ptr{Cint}, ides::Ref{Cint}, nsteps::Ref{Cint}, nelim::Ptr{Cint},
                       fils::Ptr{Cint}, frere::Ptr{Cint}, ndd::Ptr{Cint}, lerow::Ptr{Cint},
                       iw2::Ptr{Cint}, iwsiz::Ref{Cint}, iw3::Ptr{Cint}, maxrow::Ref{Cint},
                       ptrist::Ptr{Cint}, qstack::Ptr{Float32}, q::Ptr{Float32}, lq::Ref{Cint},
                       awork::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       istack::Ptr{Cint}, rstack::Ptr{Cint}, maxfrt::Ref{Cint}, iflag::Ref{Cint},
                       ierror::Ref{Cint}, sne::Ref{Cint}, lcks::Ptr{Cint}, icntl::Ptr{Cint},
                       iwptr::Ref{Cint}, info::Ptr{Cint}, posfac::Ref{Cint}, qpos::Ref{Cint},
                       noper::Ref{Float32}, rlxqr::Ref{Cint}, blas3::Ref{Cint},
                       cntl::Ptr{Float32})::Cvoid
end

function ma49g(m, n, nz, nsteps, inode, nfront, nrass, numorg, ides, perm, fils, frere, lerow, ndd,
               rwblk, istack, rstack, ptrist, iw2, iwsiz, iw3, maxrow, rwperm, le, nelim, ifront,
               ipt, iw, liw, awork, la, a, iptr, icn, iblk, iqptr, ysize, blksiz, posfac, rstk,
               iright, iflag, ierror, blas3, sne, rlxqr, ldiag, lp)
  @ccall libhsl.ma49g_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nsteps::Ref{Cint},
                       inode::Ref{Cint}, nfront::Ref{Cint}, nrass::Ref{Cint}, numorg::Ref{Cint},
                       ides::Ref{Cint}, perm::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                       lerow::Ptr{Cint}, ndd::Ptr{Cint}, rwblk::Ptr{Cint}, istack::Ptr{Cint},
                       rstack::Ptr{Cint}, ptrist::Ptr{Cint}, iw2::Ptr{Cint}, iwsiz::Ref{Cint},
                       iw3::Ptr{Cint}, maxrow::Ref{Cint}, rwperm::Ptr{Cint}, le::Ptr{Cint},
                       nelim::Ptr{Cint}, ifront::Ptr{Cint}, ipt::Ref{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, awork::Ptr{Float32}, la::Ref{Cint}, a::Ptr{Float32},
                       iptr::Ptr{Cint}, icn::Ptr{Cint}, iblk::Ref{Cint}, iqptr::Ref{Cint},
                       ysize::Ref{Cint}, blksiz::Ref{Cint}, posfac::Ref{Cint}, rstk::Ref{Cint},
                       iright::Ref{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint}, blas3::Ref{Cint},
                       sne::Ref{Cint}, rlxqr::Ref{Cint}, ldiag::Ref{Cint}, lp::Ref{Cint})::Cvoid
end

function ma49h(m, n, nz, irn, jptr, icn, iptr, rnto, cnto, rcmstr, ccmstr, jptrout, iw, liw, iflag,
               store, perm, istat, nzbtf, nzout, info, mprint, ldiag, lp, mp, ierror, reduc)
  @ccall libhsl.ma49h_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, rnto::Ptr{Cint}, cnto::Ptr{Cint},
                       rcmstr::Ptr{Cint}, ccmstr::Ptr{Cint}, jptrout::Ptr{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, iflag::Ref{Cint}, store::Ref{Cint}, perm::Ptr{Cint},
                       istat::Ptr{Cint}, nzbtf::Ref{Cint}, nzout::Ref{Cint}, info::Ptr{Cint},
                       mprint::Ref{Cint}, ldiag::Ref{Cint}, lp::Ref{Cint}, mp::Ref{Cint},
                       ierror::Ref{Cint}, reduc::Ref{Cint})::Cvoid
end

function ma49j(dimv, v, nvar, n, m, nelim, q, llq, work, lwork, ywork, ly, t, qptr, wb, sne, lcks,
               noper, info, cntl)
  @ccall libhsl.ma49j_(dimv::Ref{Cint}, v::Ptr{Float32}, nvar::Ref{Cint}, n::Ref{Cint},
                       m::Ref{Cint}, nelim::Ref{Cint}, q::Ptr{Float32}, llq::Ref{Cint},
                       work::Ptr{Float32}, lwork::Ref{Cint}, ywork::Ptr{Float32}, ly::Ref{Cint},
                       t::Ptr{Float32}, qptr::Ref{Cint}, wb::Ref{Cint}, sne::Ref{Cint},
                       lcks::Ptr{Cint}, noper::Ref{Float32}, info::Ptr{Cint},
                       cntl::Ptr{Float32})::Cvoid
end

function ma49k(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, awork, la, nsteps, x, b, qstack, q,
               lq, qwork, lqw, ides, maxfrt, nproc, nstk, pool, leaves, maxlea, nbrad, fils, frere,
               iflag, ierror, iprob, btf, iat)
  @ccall libhsl.ma49k_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       iptr::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, ir::Ptr{Cint},
                       lir::Ref{Cint}, istack::Ptr{Cint}, awork::Ptr{Float32}, la::Ref{Cint},
                       nsteps::Ref{Cint}, x::Ptr{Float32}, b::Ptr{Float32}, qstack::Ptr{Float32},
                       q::Ptr{Float32}, lq::Ref{Cint}, qwork::Ptr{Float32}, lqw::Ref{Cint},
                       ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint},
                       pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint}, nbrad::Ref{Cint},
                       fils::Ptr{Cint}, frere::Ptr{Cint}, iflag::Ref{Cint}, ierror::Ref{Cint},
                       iprob::Ref{Cint}, btf::Ref{Cint}, iat::Ref{Cint})::Cvoid
end

function ma49l(mat, trans, m, n, ifact, lft, r, lr, istack, q, lq, qstack, awork, la, qwork, lqw, b,
               x, ides, nsteps, maxfrt, nproc, nstk, pool, maxlea, nbrad, fils, frere, iflag,
               ierror)
  @ccall libhsl.ma49l_(mat::Ref{UInt8}, trans::Ref{UInt8}, m::Ref{Cint}, n::Ref{Cint},
                       ifact::Ptr{Cint}, lft::Ref{Cint}, r::Ptr{Float32}, lr::Ref{Cint},
                       istack::Ptr{Cint}, q::Ptr{Float32}, lq::Ref{Cint}, qstack::Ptr{Float32},
                       awork::Ptr{Float32}, la::Ref{Cint}, qwork::Ptr{Float32}, lqw::Ref{Cint},
                       b::Ptr{Float32}, x::Ptr{Float32}, ides::Ref{Cint}, nsteps::Ref{Cint},
                       maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint}, pool::Ptr{Cint},
                       maxlea::Ref{Cint}, nbrad::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                       iflag::Ref{Cint}, ierror::Ref{Cint})::Cvoid
end

function ma49m(n, rwblk, nstk, ndd, lerow, ma59c, fils, frere, mstk, ncstk, nelim, nsteps, info,
               keep)
  @ccall libhsl.ma49m_(n::Ref{Cint}, rwblk::Ptr{Cint}, nstk::Ptr{Cint}, ndd::Ptr{Cint},
                       lerow::Ptr{Cint}, ma59c::Ptr{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                       mstk::Ptr{Cint}, ncstk::Ptr{Cint}, nelim::Ptr{Cint}, nsteps::Ref{Cint},
                       info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49n(m, n, nz, irn, jptr, icn, iptr, map, rwcl, iflag, ierror, info37, info38, store,
               imap, mp, lp, llirn)
  @ccall libhsl.ma49n_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, map::Ptr{Cint}, rwcl::Ref{Cint},
                       iflag::Ref{Cint}, ierror::Ref{Cint}, info37::Ref{Cint}, info38::Ref{Cint},
                       store::Ref{Cint}, imap::Ref{Cint}, mp::Ref{Cint}, lp::Ref{Cint},
                       llirn::Ref{Cint})::Cvoid
end

function ma49o(m, n, nz, irn, jptr, icn, iptr, icnata, ataptr, lata, length, iw2, iflag, ierror)
  @ccall libhsl.ma49o_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, icnata::Ptr{Cint}, ataptr::Ptr{Cint},
                       lata::Ref{Cint}, length::Ptr{Cint}, iw2::Ptr{Cint}, iflag::Ref{Cint},
                       ierror::Ref{Cint})::Cvoid
end

function ma49p(m, n, nz, irn, jptr, perm, nelim, nsteps, le, rwperm, rwblk, iw)
  @ccall libhsl.ma49p_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, jptr::Ptr{Cint},
                       perm::Ptr{Cint}, nelim::Ptr{Cint}, nsteps::Ref{Cint}, le::Ptr{Cint},
                       rwperm::Ptr{Cint}, rwblk::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ma49q(root, nsteps, fils, frere, leaves, maxlea)
  @ccall libhsl.ma49q_(root::Ref{Cint}, nsteps::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint},
                       leaves::Ptr{Cint}, maxlea::Ref{Cint})::Cvoid
end

function ma49r(nprocs, liw, a, la, lusizr, maxsiz, nsteps, nprocw, lenbud, lena, iptend, iptbeg,
               lrlu, iptrlu, iptini, lrlus, ipta, nblec, aloclu, again, buddy, ipttop, lilu, iptilu,
               iptfir, lilus, nbleci, iflag, ierror, icntl)
  @ccall libhsl.ma49r_(nprocs::Ref{Cint}, liw::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint},
                       lusizr::Ref{Cint}, maxsiz::Ref{Cint}, nsteps::Ref{Cint}, nprocw::Ref{Cint},
                       lenbud::Ref{Cint}, lena::Ref{Cint}, iptend::Ref{Cint}, iptbeg::Ref{Cint},
                       lrlu::Ref{Cint}, iptrlu::Ref{Cint}, iptini::Ref{Cint}, lrlus::Ref{Cint},
                       ipta::Ptr{Cint}, nblec::Ref{Cint}, aloclu::Ref{Cint}, again::Ref{Cint},
                       buddy::Ref{Cint}, ipttop::Ref{Cint}, lilu::Ref{Cint}, iptilu::Ref{Cint},
                       iptfir::Ref{Cint}, lilus::Ref{Cint}, nbleci::Ref{Cint}, iflag::Ref{Cint},
                       ierror::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma49s(nblk, nfront, nrass, frrows, frcols, desbtf, iwsiz, blas3)
  @ccall libhsl.ma49s_(nblk::Ref{Cint}, nfront::Ref{Cint}, nrass::Ref{Cint}, frrows::Ptr{Cint},
                       frcols::Ptr{Cint}, desbtf::Ptr{Cint}, iwsiz::Ref{Cint},
                       blas3::Ref{Cint})::Cvoid
end

function ma49t(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, iwork, awork, la, nsteps, qstack, q,
               lq, qwork, lqw, b, x, res, w, ww, ides, maxfrt, nproc, nstk, pool, leaves, maxlea,
               nbrad, fils, frere, estim, iflag, ierror, mp, ldiag, sne, values, omegax, omegar)
  @ccall libhsl.ma49t_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       iptr::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, ir::Ptr{Cint},
                       lir::Ref{Cint}, istack::Ptr{Cint}, iwork::Ptr{Cint}, awork::Ptr{Float32},
                       la::Ref{Cint}, nsteps::Ref{Cint}, qstack::Ptr{Float32}, q::Ptr{Float32},
                       lq::Ref{Cint}, qwork::Ptr{Float32}, lqw::Ref{Cint}, b::Ptr{Float32},
                       x::Ptr{Float32}, res::Ptr{Float32}, w::Ptr{Float32}, ww::Ptr{Float32},
                       ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint}, nstk::Ptr{Cint},
                       pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint}, nbrad::Ref{Cint},
                       fils::Ptr{Cint}, frere::Ptr{Cint}, estim::Ref{Cint}, iflag::Ref{Cint},
                       ierror::Ref{Cint}, mp::Ref{Cint}, ldiag::Ref{Cint}, sne::Ref{Cint},
                       values::Ptr{Float32}, omegax::Ptr{Float32}, omegar::Ptr{Float32})::Cvoid
end

function ma49u(m, n, nz, nzbtf, a, icn, iptr, rnto, cnto, ccmstr, rcmstr, aout, irnout, jptrout, r,
               lr, ir, lir, istack, awork, la, nsteps, x, b, qstack, q, lq, qwork, lqw, nproc,
               iwork, pool, leaves, fils, frere, nstk, iflag, info, icntl, keep)
  @ccall libhsl.ma49u_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, nzbtf::Ref{Cint}, a::Ptr{Float32},
                       icn::Ptr{Cint}, iptr::Ptr{Cint}, rnto::Ptr{Cint}, cnto::Ptr{Cint},
                       ccmstr::Ptr{Cint}, rcmstr::Ptr{Cint}, aout::Ptr{Float32}, irnout::Ptr{Cint},
                       jptrout::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, ir::Ptr{Cint},
                       lir::Ref{Cint}, istack::Ptr{Cint}, awork::Ptr{Float32}, la::Ref{Cint},
                       nsteps::Ref{Cint}, x::Ptr{Float32}, b::Ptr{Float32}, qstack::Ptr{Float32},
                       q::Ptr{Float32}, lq::Ref{Cint}, qwork::Ptr{Float32}, lqw::Ref{Cint},
                       nproc::Ref{Cint}, iwork::Ptr{Cint}, pool::Ptr{Cint}, leaves::Ptr{Cint},
                       fils::Ptr{Cint}, frere::Ptr{Cint}, nstk::Ptr{Cint}, iflag::Ref{Cint},
                       info::Ptr{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma49v(m, n, nz, a, icn, iptr, r, lr, ir, lir, istack, iwork, awork, la, temp, nsteps,
               qstack, q, lq, qwork, lqw, b, x, res, w, ww, ides, maxfrt, nproc, nstk, pool, leaves,
               maxlea, nbrad, fils, frere, maxit, iflag, ierror, mp, ldiag, sne, cgce, noiter,
               values)
  @ccall libhsl.ma49v_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       iptr::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, ir::Ptr{Cint},
                       lir::Ref{Cint}, istack::Ptr{Cint}, iwork::Ptr{Cint}, awork::Ptr{Float32},
                       la::Ref{Cint}, temp::Ptr{Float32}, nsteps::Ref{Cint}, qstack::Ptr{Float32},
                       q::Ptr{Float32}, lq::Ref{Cint}, qwork::Ptr{Float32}, lqw::Ref{Cint},
                       b::Ptr{Float32}, x::Ptr{Float32}, res::Ptr{Float32}, w::Ptr{Float32},
                       ww::Ptr{Float32}, ides::Ref{Cint}, maxfrt::Ref{Cint}, nproc::Ref{Cint},
                       nstk::Ptr{Cint}, pool::Ptr{Cint}, leaves::Ptr{Cint}, maxlea::Ref{Cint},
                       nbrad::Ref{Cint}, fils::Ptr{Cint}, frere::Ptr{Cint}, maxit::Ref{Cint},
                       iflag::Ref{Cint}, ierror::Ref{Cint}, mp::Ref{Cint}, ldiag::Ref{Cint},
                       sne::Ref{Cint}, cgce::Ref{Float32}, noiter::Ref{Cint},
                       values::Ptr{Float32})::Cvoid
end

function ma49w(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag)
  @ccall libhsl.ma49w_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                       ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function ma49x(n, ipe, iw, lw, iwfr)
  @ccall libhsl.ma49x_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint},
                       iwfr::Ref{Cint})::Cvoid
end

function ma49y(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl.ma49y_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                       na::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, nemin::Ref{Cint})::Cvoid
end

function ma49z(m, n, ne, jcn, iptr, keep, is, maxis, s, maxs, ipr, ir, r, lr, rows, icntl, info)
  @ccall libhsl.ma49z_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, iptr::Ptr{Cint},
                       keep::Ptr{Cint}, is::Ptr{Cint}, maxis::Ref{Cint}, s::Ptr{Float32},
                       maxs::Ref{Cint}, ipr::Ptr{Cint}, ir::Ptr{Cint}, r::Ptr{Float32},
                       lr::Ref{Cint}, rows::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
