function ma62id(icntl, cntl, isave)
  @ccall libhsl.ma62id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint})::Cvoid
end

function ma62ad(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.ma62ad_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                        lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ma62jd(nvar, ivar, ndf, last, icntl, isave, info, rinfo)
  @ccall libhsl.ma62jd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                        icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma62pd(istrm, filnam, lenbuf, icntl, isave, info)
  @ccall libhsl.ma62pd_(istrm::Ptr{Cint}, filnam::Ptr{UInt8}, lenbuf::Ptr{Cint}, icntl::Ptr{Cint},
                        isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62bd(nvar, ivar, ndf, last, lavar, avar, nrhsb, rhs, lx, x, lenbuf, lw, w, liw, iw,
                icntl, cntl, isave, info, rinfo)
  @ccall libhsl.ma62bd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                        lavar::Ref{Cint}, avar::Ptr{Float64}, nrhsb::Ref{Cint}, rhs::Ptr{Float64},
                        lx::Ref{Cint}, x::Ptr{Float64}, lenbuf::Ptr{Cint}, lw::Ref{Cint},
                        w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, isave::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma62cd(nrhsc, lx, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.ma62cd_(nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, lw::Ref{Cint},
                        w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                        isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62dd(nrhs, ndf, x, lyinbf, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec,
                isize, mkey, icntl, info)
  @ccall libhsl.ma62dd_(nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{Float64}, lyinbf::Ref{Cint},
                        bufr::Ptr{Float64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint},
                        w::Ptr{Float64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint},
                        ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62ed(nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey,
                icntl, info)
  @ccall libhsl.ma62ed_(nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{Float64}, bufr::Ptr{Float64},
                        dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float64},
                        ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint},
                        isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62fd(avar, rhs, nrhs, ivar, last, ndf, lavar, nvar, nfront, bufr, lbufr, ibufr, libufr,
                fa, frhs, lhed, lpiv, lastft, icntl, cntl, ifile, irec, mkey, iell, nell, lfrnt,
                largfr, kr, lp, icntl5, negpiv, mxbuf, mxibuf, info, det, ops, rms, nzerol)
  @ccall libhsl.ma62fd_(avar::Ptr{Float64}, rhs::Ptr{Float64}, nrhs::Ref{Cint}, ivar::Ptr{Cint},
                        last::Ptr{Cint}, ndf::Ref{Cint}, lavar::Ref{Cint}, nvar::Ref{Cint},
                        nfront::Ref{Cint}, bufr::Ptr{Float64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint},
                        libufr::Ref{Cint}, fa::Ptr{Float64}, frhs::Ptr{Float64}, lhed::Ptr{Cint},
                        lpiv::Ptr{Cint}, lastft::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                        ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, iell::Ref{Cint},
                        nell::Ref{Cint}, lfrnt::Ref{Cint}, largfr::Ref{Cint}, kr::Ref{Cint},
                        lp::Ref{Cint}, icntl5::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint},
                        mxibuf::Ref{Cint}, info::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64},
                        rms::Ref{Float64}, nzerol::Ptr{Float64})::Cvoid
end

function ma62gd(jfl, fa, frhs, nrhs, lfrnt, npiv, bufr, lbufr, nfront, lp, ifile, irec, mkey, iell,
                mxbuf, kz, nzerol, info, icntl)
  @ccall libhsl.ma62gd_(jfl::Ref{Cint}, fa::Ptr{Float64}, frhs::Ptr{Float64}, nrhs::Ref{Cint},
                        lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{Float64}, lbufr::Ref{Cint},
                        nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint},
                        mkey::Ref{Cint}, iell::Ref{Cint}, mxbuf::Ref{Cint}, kz::Ref{Cint},
                        nzerol::Ptr{Float64}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma62hd(jfl, lfrnt, npiv, ibufr, libufr, lhed, nfront, lp, ifile, irec, mkey, iell, mxibuf,
                info, icntl)
  @ccall libhsl.ma62hd_(jfl::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint},
                        libufr::Ref{Cint}, lhed::Ptr{Cint}, nfront::Ref{Cint}, lp::Ref{Cint},
                        ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint},
                        mxibuf::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma62ld(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, icntl8, jflag)
  @ccall libhsl.ma62ld_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{Float64},
                        lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint},
                        icntl8::Ref{Cint}, jflag::Ptr{Cint})::Cvoid
end

function ma62md(iell, avar, lavar, rhs, nrhs, ivar, last, ndf, nvar, istatc, nfront, fa, frhs, lhed,
                lastft, lpiv, kr, lfrnt)
  @ccall libhsl.ma62md_(iell::Ref{Cint}, avar::Ptr{Float64}, lavar::Ref{Cint}, rhs::Ptr{Float64},
                        nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint},
                        nvar::Ref{Cint}, istatc::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float64},
                        frhs::Ptr{Float64}, lhed::Ptr{Cint}, lastft::Ptr{Cint}, lpiv::Ptr{Cint},
                        kr::Ref{Cint}, lfrnt::Ref{Cint})::Cvoid
end

function ma62nd(iell, ndf, last, nfront, fa, lhed, nrhs, frhs, lastft, lpiv, lfrnt, kr, libufr,
                ibufr, lbufr, bufr, ifile, irec, mkey, det, ops, lp, negpiv, mxbuf, mxibuf, nzerol,
                cntl, icntl, info)
  @ccall libhsl.ma62nd_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nfront::Ref{Cint},
                        fa::Ptr{Float64}, lhed::Ptr{Cint}, nrhs::Ref{Cint}, frhs::Ptr{Float64},
                        lastft::Ptr{Cint}, lpiv::Ptr{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint},
                        libufr::Ref{Cint}, ibufr::Ptr{Cint}, lbufr::Ref{Cint}, bufr::Ptr{Float64},
                        ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float64},
                        ops::Ref{Float64}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint},
                        mxibuf::Ref{Cint}, nzerol::Ptr{Float64}, cntl::Ptr{Float64},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62od(iell, avar, lavar, rhs, nrhs, ivar, ndf, last, nvar, istatc, bufr, lbufr, ibufr,
                libufr, ifile, irec, mkey, det, ops, cntl, lp, negpiv, mxbuf, mxibuf, nzerol, icntl,
                info)
  @ccall libhsl.ma62od_(iell::Ref{Cint}, avar::Ptr{Float64}, lavar::Ref{Cint}, rhs::Ptr{Float64},
                        nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                        nvar::Ref{Cint}, istatc::Ref{Cint}, bufr::Ptr{Float64}, lbufr::Ref{Cint},
                        ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint},
                        mkey::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, cntl::Ptr{Float64},
                        lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint},
                        nzerol::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62i(icntl, cntl, isave)
  @ccall libhsl.ma62i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint})::Cvoid
end

function ma62a(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.ma62a_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                       lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function ma62j(nvar, ivar, ndf, last, icntl, isave, info, rinfo)
  @ccall libhsl.ma62j_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                       icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma62p(istrm, filnam, lenbuf, icntl, isave, info)
  @ccall libhsl.ma62p_(istrm::Ptr{Cint}, filnam::Ptr{UInt8}, lenbuf::Ptr{Cint}, icntl::Ptr{Cint},
                       isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62b(nvar, ivar, ndf, last, lavar, avar, nrhsb, rhs, lx, x, lenbuf, lw, w, liw, iw, icntl,
               cntl, isave, info, rinfo)
  @ccall libhsl.ma62b_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                       lavar::Ref{Cint}, avar::Ptr{Float32}, nrhsb::Ref{Cint}, rhs::Ptr{Float32},
                       lx::Ref{Cint}, x::Ptr{Float32}, lenbuf::Ptr{Cint}, lw::Ref{Cint},
                       w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, isave::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma62c(nrhsc, lx, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.ma62c_(nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, lw::Ref{Cint},
                       w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                       isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62d(nrhs, ndf, x, lyinbf, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec,
               isize, mkey, icntl, info)
  @ccall libhsl.ma62d_(nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{Float32}, lyinbf::Ref{Cint},
                       bufr::Ptr{Float32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint},
                       w::Ptr{Float32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint},
                       ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62e(nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey,
               icntl, info)
  @ccall libhsl.ma62e_(nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{Float32}, bufr::Ptr{Float32},
                       dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float32},
                       ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint},
                       isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62f(avar, rhs, nrhs, ivar, last, ndf, lavar, nvar, nfront, bufr, lbufr, ibufr, libufr,
               fa, frhs, lhed, lpiv, lastft, icntl, cntl, ifile, irec, mkey, iell, nell, lfrnt,
               largfr, kr, lp, icntl5, negpiv, mxbuf, mxibuf, info, det, ops, rms, nzerol)
  @ccall libhsl.ma62f_(avar::Ptr{Float32}, rhs::Ptr{Float32}, nrhs::Ref{Cint}, ivar::Ptr{Cint},
                       last::Ptr{Cint}, ndf::Ref{Cint}, lavar::Ref{Cint}, nvar::Ref{Cint},
                       nfront::Ref{Cint}, bufr::Ptr{Float32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint},
                       libufr::Ref{Cint}, fa::Ptr{Float32}, frhs::Ptr{Float32}, lhed::Ptr{Cint},
                       lpiv::Ptr{Cint}, lastft::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, iell::Ref{Cint},
                       nell::Ref{Cint}, lfrnt::Ref{Cint}, largfr::Ref{Cint}, kr::Ref{Cint},
                       lp::Ref{Cint}, icntl5::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint},
                       mxibuf::Ref{Cint}, info::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32},
                       rms::Ref{Float32}, nzerol::Ptr{Float32})::Cvoid
end

function ma62g(jfl, fa, frhs, nrhs, lfrnt, npiv, bufr, lbufr, nfront, lp, ifile, irec, mkey, iell,
               mxbuf, kz, nzerol, info, icntl)
  @ccall libhsl.ma62g_(jfl::Ref{Cint}, fa::Ptr{Float32}, frhs::Ptr{Float32}, nrhs::Ref{Cint},
                       lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{Float32}, lbufr::Ref{Cint},
                       nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint},
                       mkey::Ref{Cint}, iell::Ref{Cint}, mxbuf::Ref{Cint}, kz::Ref{Cint},
                       nzerol::Ptr{Float32}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma62h(jfl, lfrnt, npiv, ibufr, libufr, lhed, nfront, lp, ifile, irec, mkey, iell, mxibuf,
               info, icntl)
  @ccall libhsl.ma62h_(jfl::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint},
                       libufr::Ref{Cint}, lhed::Ptr{Cint}, nfront::Ref{Cint}, lp::Ref{Cint},
                       ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint},
                       mxibuf::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma62l(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, icntl8, jflag)
  @ccall libhsl.ma62l_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{Float32},
                       lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint},
                       icntl8::Ref{Cint}, jflag::Ptr{Cint})::Cvoid
end

function ma62m(iell, avar, lavar, rhs, nrhs, ivar, last, ndf, nvar, istatc, nfront, fa, frhs, lhed,
               lastft, lpiv, kr, lfrnt)
  @ccall libhsl.ma62m_(iell::Ref{Cint}, avar::Ptr{Float32}, lavar::Ref{Cint}, rhs::Ptr{Float32},
                       nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint},
                       nvar::Ref{Cint}, istatc::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float32},
                       frhs::Ptr{Float32}, lhed::Ptr{Cint}, lastft::Ptr{Cint}, lpiv::Ptr{Cint},
                       kr::Ref{Cint}, lfrnt::Ref{Cint})::Cvoid
end

function ma62n(iell, ndf, last, nfront, fa, lhed, nrhs, frhs, lastft, lpiv, lfrnt, kr, libufr,
               ibufr, lbufr, bufr, ifile, irec, mkey, det, ops, lp, negpiv, mxbuf, mxibuf, nzerol,
               cntl, icntl, info)
  @ccall libhsl.ma62n_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nfront::Ref{Cint},
                       fa::Ptr{Float32}, lhed::Ptr{Cint}, nrhs::Ref{Cint}, frhs::Ptr{Float32},
                       lastft::Ptr{Cint}, lpiv::Ptr{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint},
                       libufr::Ref{Cint}, ibufr::Ptr{Cint}, lbufr::Ref{Cint}, bufr::Ptr{Float32},
                       ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float32},
                       ops::Ref{Float32}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint},
                       mxibuf::Ref{Cint}, nzerol::Ptr{Float32}, cntl::Ptr{Float32},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma62o(iell, avar, lavar, rhs, nrhs, ivar, ndf, last, nvar, istatc, bufr, lbufr, ibufr,
               libufr, ifile, irec, mkey, det, ops, cntl, lp, negpiv, mxbuf, mxibuf, nzerol, icntl,
               info)
  @ccall libhsl.ma62o_(iell::Ref{Cint}, avar::Ptr{Float32}, lavar::Ref{Cint}, rhs::Ptr{Float32},
                       nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint},
                       nvar::Ref{Cint}, istatc::Ref{Cint}, bufr::Ptr{Float32}, lbufr::Ref{Cint},
                       ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint},
                       mkey::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, cntl::Ptr{Float32},
                       lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint},
                       nzerol::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
