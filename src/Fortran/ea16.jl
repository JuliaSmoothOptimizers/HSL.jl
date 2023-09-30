function ea16ad(n, blk, nwant, nv, liwork, lwork, icntl, info)
  @ccall libhsl.ea16ad_(n::Ref{Cint}, blk::Ref{Cint}, nwant::Ref{Cint}, nv::Ref{Cint},
                        liwork::Ref{Cint}, lwork::Ref{Cint}, icntl::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ea16bd(n, blk, nwant, nv, mode, which, ido, ipos, v, ldv, bv, ldbv, range, sigma, neineg,
                iwork, liwork, work, lwork, icntl, cntl, info)
  @ccall libhsl.ea16bd_(n::Ref{Cint}, blk::Ref{Cint}, nwant::Ref{Cint}, nv::Ref{Cint},
                        mode::Ref{Cint}, which::Ref{Cint}, ido::Ref{Cint}, ipos::Ptr{Cint},
                        v::Ptr{Float64}, ldv::Ref{Cint}, bv::Ptr{Float64}, ldbv::Ref{Cint},
                        range::Ptr{Float64}, sigma::Ref{Float64}, neineg::Ref{Cint},
                        iwork::Ptr{Cint}, liwork::Ref{Cint}, work::Ptr{Float64}, lwork::Ref{Cint},
                        icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ea16ed(ido, ipos, v, ldv, nv, bv, ldbv, istep, lstep, nstep, nnstep, n, blk, bgs, nconv,
                offset, vinit, coef, ldcoef, t, ldt, random, norm, gsstrt, lgsstr, gsnumb, lgsnum,
                temp, ltemp, iseed, safmin, epss, tollan, tolloc, ratnor, ermove, lderve, ermola,
                lderla, luerr, ierr, nmva, nmvb, isave, rsave, errmax)
  @ccall libhsl.ea16ed_(ido::Ref{Cint}, ipos::Ptr{Cint}, v::Ptr{Float64}, ldv::Ref{Cint},
                        nv::Ref{Cint}, bv::Ptr{Float64}, ldbv::Ref{Cint}, istep::Ref{Cint},
                        lstep::Ref{Cint}, nstep::Ref{Cint}, nnstep::Ref{Cint}, n::Ref{Cint},
                        blk::Ref{Cint}, bgs::Ref{Cint}, nconv::Ref{Cint}, offset::Ref{Cint},
                        vinit::Ref{Cint}, coef::Ptr{Float64}, ldcoef::Ref{Cint}, t::Ptr{Float64},
                        ldt::Ref{Cint}, random::Ptr{Cint}, norm::Ptr{Float64}, gsstrt::Ptr{Cint},
                        lgsstr::Ref{Cint}, gsnumb::Ptr{Cint}, lgsnum::Ref{Cint}, temp::Ptr{Float64},
                        ltemp::Ref{Cint}, iseed::Ptr{Cint}, safmin::Ref{Float64},
                        epss::Ref{Float64}, tollan::Ref{Float64}, tolloc::Ref{Float64},
                        ratnor::Ref{Float64}, ermove::Ptr{Float64}, lderve::Ref{Cint},
                        ermola::Ptr{Float64}, lderla::Ref{Cint}, luerr::Ref{Cint}, ierr::Ref{Cint},
                        nmva::Ref{Cint}, nmvb::Ref{Cint}, isave::Ptr{Cint}, rsave::Ptr{Float64},
                        errmax::Ref{Float64})::Cvoid
end

function ea16fd(t, ldt, nt, blk, ritz, eigvec, ldeigv, resid, pipe, ldpipe, work, lwork, ierr)
  @ccall libhsl.ea16fd_(t::Ptr{Float64}, ldt::Ref{Cint}, nt::Ref{Cint}, blk::Ref{Cint},
                        ritz::Ptr{Float64}, eigvec::Ptr{Float64}, ldeigv::Ref{Cint},
                        resid::Ptr{Float64}, pipe::Ptr{Float64}, ldpipe::Ref{Cint},
                        work::Ptr{Float64}, lwork::Ref{Cint}, ierr::Ref{Cint})::Cvoid
end

function ea16gd(n, nv, nwant, blk, liwork, lwork, isave, lisave, icntl, info)
  @ccall libhsl.ea16gd_(n::Ref{Cint}, nv::Ref{Cint}, nwant::Ref{Cint}, blk::Ref{Cint},
                        liwork::Ref{Cint}, lwork::Ref{Cint}, isave::Ptr{Cint}, lisave::Ref{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ea16hd(nconv, ncoold, mritz, nlanc, perm, ritz, resid, v, ldv, n, nvecs, lu, nconv2,
                ncool2)
  @ccall libhsl.ea16hd_(nconv::Ref{Cint}, ncoold::Ref{Cint}, mritz::Ref{Cint}, nlanc::Ref{Cint},
                        perm::Ptr{Cint}, ritz::Ptr{Float64}, resid::Ptr{Float64}, v::Ptr{Float64},
                        ldv::Ref{Cint}, n::Ref{Cint}, nvecs::Ref{Cint}, lu::Ref{Cint},
                        nconv2::Ref{Cint}, ncool2::Ref{Cint})::Cvoid
end

function ea16id(icntl, cntl)
  @ccall libhsl.ea16id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ea16jd(ido, mode, ipos, n, blk, vinit, inivec, iseed, v, ldv, istep, nmva, nmvb, lu)
  @ccall libhsl.ea16jd_(ido::Ref{Cint}, mode::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint},
                        blk::Ref{Cint}, vinit::Ref{Cint}, inivec::Ref{Cint}, iseed::Ptr{Cint},
                        v::Ptr{Float64}, ldv::Ref{Cint}, istep::Ref{Cint}, nmva::Ref{Cint},
                        nmvb::Ref{Cint}, lu::Ref{Cint})::Cvoid
end

function ea16kd(n, k, m, v, ldv, coef, ldcoef, norm, temp, ltemp, random, udfl, dgks, maxit, iseed,
                info)
  @ccall libhsl.ea16kd_(n::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint}, v::Ptr{Float64}, ldv::Ref{Cint},
                        coef::Ptr{Float64}, ldcoef::Ref{Cint}, norm::Ptr{Float64},
                        temp::Ptr{Float64}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float64},
                        dgks::Ref{Float64}, maxit::Ref{Cint}, iseed::Ptr{Cint},
                        info::Ref{Cint})::Cvoid
end

function ea16ld(ido, ipos, n, k, m, v, ldv, bv, ldbv, coef, ldcoef, norm, temp, ltemp, random, udfl,
                dgks, maxit, iseed, isave, minrat, info)
  @ccall libhsl.ea16ld_(ido::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint},
                        v::Ptr{Float64}, ldv::Ref{Cint}, bv::Ptr{Float64}, ldbv::Ref{Cint},
                        coef::Ptr{Float64}, ldcoef::Ref{Cint}, norm::Ptr{Float64},
                        temp::Ptr{Float64}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float64},
                        dgks::Ref{Float64}, maxit::Ref{Cint}, iseed::Ptr{Cint}, isave::Ptr{Cint},
                        minrat::Ref{Float64}, info::Ref{Cint})::Cvoid
end

function ea16md(first, number, nnumb, ntasks)
  @ccall libhsl.ea16md_(first::Ptr{Cint}, number::Ptr{Cint}, nnumb::Ref{Cint},
                        ntasks::Ref{Cint})::Cvoid
end

function ea16nd(n, first, number, ntasks, k, m, v, ldv, norm, coef, ldcoef, temp, ltemp, random,
                udfl, dgks, maxit, iseed, info)
  @ccall libhsl.ea16nd_(n::Ref{Cint}, first::Ptr{Cint}, number::Ptr{Cint}, ntasks::Ref{Cint},
                        k::Ref{Cint}, m::Ref{Cint}, v::Ptr{Float64}, ldv::Ref{Cint},
                        norm::Ptr{Float64}, coef::Ptr{Float64}, ldcoef::Ref{Cint},
                        temp::Ptr{Float64}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float64},
                        dgks::Ref{Float64}, maxit::Ref{Cint}, iseed::Ptr{Cint},
                        info::Ref{Cint})::Cvoid
end

function ea16od(ido, ipos, n, first, number, ntasks, k, m, v, ldv, bv, ldbv, coef, ldcoef, norm,
                temp, ltemp, random, udfl, dgks, maxit, iseed, isave, minrat, info)
  @ccall libhsl.ea16od_(ido::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint}, first::Ptr{Cint},
                        number::Ptr{Cint}, ntasks::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint},
                        v::Ptr{Float64}, ldv::Ref{Cint}, bv::Ptr{Float64}, ldbv::Ref{Cint},
                        coef::Ptr{Float64}, ldcoef::Ref{Cint}, norm::Ptr{Float64},
                        temp::Ptr{Float64}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float64},
                        dgks::Ref{Float64}, maxit::Ref{Cint}, iseed::Ptr{Cint}, isave::Ptr{Cint},
                        minrat::Ref{Float64}, info::Ref{Cint})::Cvoid
end

function ea16pd(ncoold, nconv, nkryl, ritz, resid, eigvec, ldeigv, neigv, pipe, ldpipe, tol, tollan,
                perm, temp, epss)
  @ccall libhsl.ea16pd_(ncoold::Ref{Cint}, nconv::Ref{Cint}, nkryl::Ref{Cint}, ritz::Ptr{Float64},
                        resid::Ptr{Float64}, eigvec::Ptr{Float64}, ldeigv::Ref{Cint},
                        neigv::Ref{Cint}, pipe::Ptr{Float64}, ldpipe::Ref{Cint}, tol::Ptr{Float64},
                        tollan::Ref{Float64}, perm::Ptr{Cint}, temp::Ptr{Float64},
                        epss::Ref{Float64})::Cvoid
end

function ea16qd(nritz, blk, ritz, ritvec, ldritv, n, pipe, ldpipe, res, ldres, safmin)
  @ccall libhsl.ea16qd_(nritz::Ref{Cint}, blk::Ref{Cint}, ritz::Ptr{Float64}, ritvec::Ptr{Float64},
                        ldritv::Ref{Cint}, n::Ref{Cint}, pipe::Ptr{Float64}, ldpipe::Ref{Cint},
                        res::Ptr{Float64}, ldres::Ref{Cint}, safmin::Ref{Float64})::Cvoid
end

function ea16rd(nkryl, blk, nconv, npurg, t, ldt, ritz, eigvec, ldeigv, lceigv, neigv, pipe, ldpipe,
                tt, ldtt, lctt)
  @ccall libhsl.ea16rd_(nkryl::Ref{Cint}, blk::Ref{Cint}, nconv::Ref{Cint}, npurg::Ref{Cint},
                        t::Ptr{Float64}, ldt::Ref{Cint}, ritz::Ptr{Float64}, eigvec::Ptr{Float64},
                        ldeigv::Ref{Cint}, lceigv::Ref{Cint}, neigv::Ref{Cint}, pipe::Ptr{Float64},
                        ldpipe::Ref{Cint}, tt::Ptr{Float64}, ldtt::Ref{Cint},
                        lctt::Ref{Cint})::Cvoid
end

function ea16sd(v, ldv, lcv, n, m, z, ldz, lcz, k, work, ldw, lcw)
  @ccall libhsl.ea16sd_(v::Ptr{Float64}, ldv::Ref{Cint}, lcv::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint},
                        z::Ptr{Float64}, ldz::Ref{Cint}, lcz::Ref{Cint}, k::Ref{Cint},
                        work::Ptr{Float64}, ldw::Ref{Cint}, lcw::Ref{Cint})::Cvoid
end

function ea16td(t, ldt, blk, nstep, nconv, offset, ermola, lderla, f, ldf, svd, work, lwork, info)
  @ccall libhsl.ea16td_(t::Ptr{Float64}, ldt::Ref{Cint}, blk::Ref{Cint}, nstep::Ref{Cint},
                        nconv::Ref{Cint}, offset::Ref{Cint}, ermola::Ptr{Float64},
                        lderla::Ref{Cint}, f::Ptr{Float64}, ldf::Ref{Cint}, svd::Ptr{Float64},
                        work::Ptr{Float64}, lwork::Ref{Cint}, info::Ref{Cint})::Cvoid
end

function ea16ud(istep, blk, ermola, lderla, ermove, lderve, nconv, svd, safmin, errloc)
  @ccall libhsl.ea16ud_(istep::Ref{Cint}, blk::Ref{Cint}, ermola::Ptr{Float64}, lderla::Ref{Cint},
                        ermove::Ptr{Float64}, lderve::Ref{Cint}, nconv::Ref{Cint},
                        svd::Ptr{Float64}, safmin::Ref{Float64}, errloc::Ref{Float64})::Cvoid
end

function ea16vd(istep, jstep, blk, nlock, ermola, lderla, tdia, ldtdia, toff, ldtoff, svd, work,
                lwork, safmin, epss, errlan, info)
  @ccall libhsl.ea16vd_(istep::Ref{Cint}, jstep::Ref{Cint}, blk::Ref{Cint}, nlock::Ref{Cint},
                        ermola::Ptr{Float64}, lderla::Ref{Cint}, tdia::Ptr{Float64},
                        ldtdia::Ref{Cint}, toff::Ptr{Float64}, ldtoff::Ref{Cint}, svd::Ptr{Float64},
                        work::Ptr{Float64}, lwork::Ref{Cint}, safmin::Ref{Float64},
                        epss::Ref{Float64}, errlan::Ref{Float64}, info::Ref{Cint})::Cvoid
end

function ea16wd(ritz, nconv, resid, errmax, gamma, ermove, lderve)
  @ccall libhsl.ea16wd_(ritz::Ptr{Float64}, nconv::Ref{Cint}, resid::Ptr{Float64},
                        errmax::Ref{Float64}, gamma::Ref{Float64}, ermove::Ptr{Float64},
                        lderve::Ref{Cint})::Cvoid
end

function ea16xd(nstep, lstep, ermo, lder, errlev)
  @ccall libhsl.ea16xd_(nstep::Ref{Cint}, lstep::Ref{Cint}, ermo::Ptr{Float64}, lder::Ref{Cint},
                        errlev::Ref{Float64})::Cvoid
end

function ea16yd(nstep, kblock, ermo, lder, errlev)
  @ccall libhsl.ea16yd_(nstep::Ref{Cint}, kblock::Ref{Cint}, ermo::Ptr{Float64}, lder::Ref{Cint},
                        errlev::Ref{Float64})::Cvoid
end

function ea16zd(ierr, warn)
  @ccall libhsl.ea16zd_(ierr::Ref{Cint}, warn::Ref{Cint})::Cvoid
end

function ea16a(n, blk, nwant, nv, liwork, lwork, icntl, info)
  @ccall libhsl.ea16a_(n::Ref{Cint}, blk::Ref{Cint}, nwant::Ref{Cint}, nv::Ref{Cint},
                       liwork::Ref{Cint}, lwork::Ref{Cint}, icntl::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function ea16b(n, blk, nwant, nv, mode, which, ido, ipos, v, ldv, bv, ldbv, range, sigma, neineg,
               iwork, liwork, work, lwork, icntl, cntl, info)
  @ccall libhsl.ea16b_(n::Ref{Cint}, blk::Ref{Cint}, nwant::Ref{Cint}, nv::Ref{Cint},
                       mode::Ref{Cint}, which::Ref{Cint}, ido::Ref{Cint}, ipos::Ptr{Cint},
                       v::Ptr{Float32}, ldv::Ref{Cint}, bv::Ptr{Float32}, ldbv::Ref{Cint},
                       range::Ptr{Float32}, sigma::Ref{Float32}, neineg::Ref{Cint},
                       iwork::Ptr{Cint}, liwork::Ref{Cint}, work::Ptr{Float32}, lwork::Ref{Cint},
                       icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ea16e(ido, ipos, v, ldv, nv, bv, ldbv, istep, lstep, nstep, nnstep, n, blk, bgs, nconv,
               offset, vinit, coef, ldcoef, t, ldt, random, norm, gsstrt, lgsstr, gsnumb, lgsnum,
               temp, ltemp, iseed, safmin, epss, tollan, tolloc, ratnor, ermove, lderve, ermola,
               lderla, luerr, ierr, nmva, nmvb, isave, rsave, errmax)
  @ccall libhsl.ea16e_(ido::Ref{Cint}, ipos::Ptr{Cint}, v::Ptr{Float32}, ldv::Ref{Cint},
                       nv::Ref{Cint}, bv::Ptr{Float32}, ldbv::Ref{Cint}, istep::Ref{Cint},
                       lstep::Ref{Cint}, nstep::Ref{Cint}, nnstep::Ref{Cint}, n::Ref{Cint},
                       blk::Ref{Cint}, bgs::Ref{Cint}, nconv::Ref{Cint}, offset::Ref{Cint},
                       vinit::Ref{Cint}, coef::Ptr{Float32}, ldcoef::Ref{Cint}, t::Ptr{Float32},
                       ldt::Ref{Cint}, random::Ptr{Cint}, norm::Ptr{Float32}, gsstrt::Ptr{Cint},
                       lgsstr::Ref{Cint}, gsnumb::Ptr{Cint}, lgsnum::Ref{Cint}, temp::Ptr{Float32},
                       ltemp::Ref{Cint}, iseed::Ptr{Cint}, safmin::Ref{Float32}, epss::Ref{Float32},
                       tollan::Ref{Float32}, tolloc::Ref{Float32}, ratnor::Ref{Float32},
                       ermove::Ptr{Float32}, lderve::Ref{Cint}, ermola::Ptr{Float32},
                       lderla::Ref{Cint}, luerr::Ref{Cint}, ierr::Ref{Cint}, nmva::Ref{Cint},
                       nmvb::Ref{Cint}, isave::Ptr{Cint}, rsave::Ptr{Float32},
                       errmax::Ref{Float32})::Cvoid
end

function ea16f(t, ldt, nt, blk, ritz, eigvec, ldeigv, resid, pipe, ldpipe, work, lwork, ierr)
  @ccall libhsl.ea16f_(t::Ptr{Float32}, ldt::Ref{Cint}, nt::Ref{Cint}, blk::Ref{Cint},
                       ritz::Ptr{Float32}, eigvec::Ptr{Float32}, ldeigv::Ref{Cint},
                       resid::Ptr{Float32}, pipe::Ptr{Float32}, ldpipe::Ref{Cint},
                       work::Ptr{Float32}, lwork::Ref{Cint}, ierr::Ref{Cint})::Cvoid
end

function ea16g(n, nv, nwant, blk, liwork, lwork, isave, lisave, icntl, info)
  @ccall libhsl.ea16g_(n::Ref{Cint}, nv::Ref{Cint}, nwant::Ref{Cint}, blk::Ref{Cint},
                       liwork::Ref{Cint}, lwork::Ref{Cint}, isave::Ptr{Cint}, lisave::Ref{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ea16h(nconv, ncoold, mritz, nlanc, perm, ritz, resid, v, ldv, n, nvecs, lu, nconv2, ncool2)
  @ccall libhsl.ea16h_(nconv::Ref{Cint}, ncoold::Ref{Cint}, mritz::Ref{Cint}, nlanc::Ref{Cint},
                       perm::Ptr{Cint}, ritz::Ptr{Float32}, resid::Ptr{Float32}, v::Ptr{Float32},
                       ldv::Ref{Cint}, n::Ref{Cint}, nvecs::Ref{Cint}, lu::Ref{Cint},
                       nconv2::Ref{Cint}, ncool2::Ref{Cint})::Cvoid
end

function ea16i(icntl, cntl)
  @ccall libhsl.ea16i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ea16j(ido, mode, ipos, n, blk, vinit, inivec, iseed, v, ldv, istep, nmva, nmvb, lu)
  @ccall libhsl.ea16j_(ido::Ref{Cint}, mode::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint},
                       blk::Ref{Cint}, vinit::Ref{Cint}, inivec::Ref{Cint}, iseed::Ptr{Cint},
                       v::Ptr{Float32}, ldv::Ref{Cint}, istep::Ref{Cint}, nmva::Ref{Cint},
                       nmvb::Ref{Cint}, lu::Ref{Cint})::Cvoid
end

function ea16k(n, k, m, v, ldv, coef, ldcoef, norm, temp, ltemp, random, udfl, dgks, maxit, iseed,
               info)
  @ccall libhsl.ea16k_(n::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint}, v::Ptr{Float32}, ldv::Ref{Cint},
                       coef::Ptr{Float32}, ldcoef::Ref{Cint}, norm::Ptr{Float32},
                       temp::Ptr{Float32}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float32},
                       dgks::Ref{Float32}, maxit::Ref{Cint}, iseed::Ptr{Cint},
                       info::Ref{Cint})::Cvoid
end

function ea16l(ido, ipos, n, k, m, v, ldv, bv, ldbv, coef, ldcoef, norm, temp, ltemp, random, udfl,
               dgks, maxit, iseed, isave, minrat, info)
  @ccall libhsl.ea16l_(ido::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint},
                       v::Ptr{Float32}, ldv::Ref{Cint}, bv::Ptr{Float32}, ldbv::Ref{Cint},
                       coef::Ptr{Float32}, ldcoef::Ref{Cint}, norm::Ptr{Float32},
                       temp::Ptr{Float32}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float32},
                       dgks::Ref{Float32}, maxit::Ref{Cint}, iseed::Ptr{Cint}, isave::Ptr{Cint},
                       minrat::Ref{Float32}, info::Ref{Cint})::Cvoid
end

function ea16m(first, number, nnumb, ntasks)
  @ccall libhsl.ea16m_(first::Ptr{Cint}, number::Ptr{Cint}, nnumb::Ref{Cint},
                       ntasks::Ref{Cint})::Cvoid
end

function ea16n(n, first, number, ntasks, k, m, v, ldv, norm, coef, ldcoef, temp, ltemp, random,
               udfl, dgks, maxit, iseed, info)
  @ccall libhsl.ea16n_(n::Ref{Cint}, first::Ptr{Cint}, number::Ptr{Cint}, ntasks::Ref{Cint},
                       k::Ref{Cint}, m::Ref{Cint}, v::Ptr{Float32}, ldv::Ref{Cint},
                       norm::Ptr{Float32}, coef::Ptr{Float32}, ldcoef::Ref{Cint},
                       temp::Ptr{Float32}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float32},
                       dgks::Ref{Float32}, maxit::Ref{Cint}, iseed::Ptr{Cint},
                       info::Ref{Cint})::Cvoid
end

function ea16o(ido, ipos, n, first, number, ntasks, k, m, v, ldv, bv, ldbv, coef, ldcoef, norm,
               temp, ltemp, random, udfl, dgks, maxit, iseed, isave, minrat, info)
  @ccall libhsl.ea16o_(ido::Ref{Cint}, ipos::Ptr{Cint}, n::Ref{Cint}, first::Ptr{Cint},
                       number::Ptr{Cint}, ntasks::Ref{Cint}, k::Ref{Cint}, m::Ref{Cint},
                       v::Ptr{Float32}, ldv::Ref{Cint}, bv::Ptr{Float32}, ldbv::Ref{Cint},
                       coef::Ptr{Float32}, ldcoef::Ref{Cint}, norm::Ptr{Float32},
                       temp::Ptr{Float32}, ltemp::Ref{Cint}, random::Ptr{Cint}, udfl::Ref{Float32},
                       dgks::Ref{Float32}, maxit::Ref{Cint}, iseed::Ptr{Cint}, isave::Ptr{Cint},
                       minrat::Ref{Float32}, info::Ref{Cint})::Cvoid
end

function ea16p(ncoold, nconv, nkryl, ritz, resid, eigvec, ldeigv, neigv, pipe, ldpipe, tol, tollan,
               perm, temp, epss)
  @ccall libhsl.ea16p_(ncoold::Ref{Cint}, nconv::Ref{Cint}, nkryl::Ref{Cint}, ritz::Ptr{Float32},
                       resid::Ptr{Float32}, eigvec::Ptr{Float32}, ldeigv::Ref{Cint},
                       neigv::Ref{Cint}, pipe::Ptr{Float32}, ldpipe::Ref{Cint}, tol::Ptr{Float32},
                       tollan::Ref{Float32}, perm::Ptr{Cint}, temp::Ptr{Float32},
                       epss::Ref{Float32})::Cvoid
end

function ea16q(nritz, blk, ritz, ritvec, ldritv, n, pipe, ldpipe, res, ldres, safmin)
  @ccall libhsl.ea16q_(nritz::Ref{Cint}, blk::Ref{Cint}, ritz::Ptr{Float32}, ritvec::Ptr{Float32},
                       ldritv::Ref{Cint}, n::Ref{Cint}, pipe::Ptr{Float32}, ldpipe::Ref{Cint},
                       res::Ptr{Float32}, ldres::Ref{Cint}, safmin::Ref{Float32})::Cvoid
end

function ea16r(nkryl, blk, nconv, npurg, t, ldt, ritz, eigvec, ldeigv, lceigv, neigv, pipe, ldpipe,
               tt, ldtt, lctt)
  @ccall libhsl.ea16r_(nkryl::Ref{Cint}, blk::Ref{Cint}, nconv::Ref{Cint}, npurg::Ref{Cint},
                       t::Ptr{Float32}, ldt::Ref{Cint}, ritz::Ptr{Float32}, eigvec::Ptr{Float32},
                       ldeigv::Ref{Cint}, lceigv::Ref{Cint}, neigv::Ref{Cint}, pipe::Ptr{Float32},
                       ldpipe::Ref{Cint}, tt::Ptr{Float32}, ldtt::Ref{Cint}, lctt::Ref{Cint})::Cvoid
end

function ea16s(v, ldv, lcv, n, m, z, ldz, lcz, k, work, ldw, lcw)
  @ccall libhsl.ea16s_(v::Ptr{Float32}, ldv::Ref{Cint}, lcv::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint},
                       z::Ptr{Float32}, ldz::Ref{Cint}, lcz::Ref{Cint}, k::Ref{Cint},
                       work::Ptr{Float32}, ldw::Ref{Cint}, lcw::Ref{Cint})::Cvoid
end

function ea16t(t, ldt, blk, nstep, nconv, offset, ermola, lderla, f, ldf, svd, work, lwork, info)
  @ccall libhsl.ea16t_(t::Ptr{Float32}, ldt::Ref{Cint}, blk::Ref{Cint}, nstep::Ref{Cint},
                       nconv::Ref{Cint}, offset::Ref{Cint}, ermola::Ptr{Float32}, lderla::Ref{Cint},
                       f::Ptr{Float32}, ldf::Ref{Cint}, svd::Ptr{Float32}, work::Ptr{Float32},
                       lwork::Ref{Cint}, info::Ref{Cint})::Cvoid
end

function ea16u(istep, blk, ermola, lderla, ermove, lderve, nconv, svd, safmin, errloc)
  @ccall libhsl.ea16u_(istep::Ref{Cint}, blk::Ref{Cint}, ermola::Ptr{Float32}, lderla::Ref{Cint},
                       ermove::Ptr{Float32}, lderve::Ref{Cint}, nconv::Ref{Cint}, svd::Ptr{Float32},
                       safmin::Ref{Float32}, errloc::Ref{Float32})::Cvoid
end

function ea16v(istep, jstep, blk, nlock, ermola, lderla, tdia, ldtdia, toff, ldtoff, svd, work,
               lwork, safmin, epss, errlan, info)
  @ccall libhsl.ea16v_(istep::Ref{Cint}, jstep::Ref{Cint}, blk::Ref{Cint}, nlock::Ref{Cint},
                       ermola::Ptr{Float32}, lderla::Ref{Cint}, tdia::Ptr{Float32},
                       ldtdia::Ref{Cint}, toff::Ptr{Float32}, ldtoff::Ref{Cint}, svd::Ptr{Float32},
                       work::Ptr{Float32}, lwork::Ref{Cint}, safmin::Ref{Float32},
                       epss::Ref{Float32}, errlan::Ref{Float32}, info::Ref{Cint})::Cvoid
end

function ea16w(ritz, nconv, resid, errmax, gamma, ermove, lderve)
  @ccall libhsl.ea16w_(ritz::Ptr{Float32}, nconv::Ref{Cint}, resid::Ptr{Float32},
                       errmax::Ref{Float32}, gamma::Ref{Float32}, ermove::Ptr{Float32},
                       lderve::Ref{Cint})::Cvoid
end

function ea16x(nstep, lstep, ermo, lder, errlev)
  @ccall libhsl.ea16x_(nstep::Ref{Cint}, lstep::Ref{Cint}, ermo::Ptr{Float32}, lder::Ref{Cint},
                       errlev::Ref{Float32})::Cvoid
end

function ea16y(nstep, kblock, ermo, lder, errlev)
  @ccall libhsl.ea16y_(nstep::Ref{Cint}, kblock::Ref{Cint}, ermo::Ptr{Float32}, lder::Ref{Cint},
                       errlev::Ref{Float32})::Cvoid
end

function ea16z(ierr, warn)
  @ccall libhsl.ea16z_(ierr::Ref{Cint}, warn::Ref{Cint})::Cvoid
end
