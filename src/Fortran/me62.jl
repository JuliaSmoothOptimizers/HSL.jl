function me62id(icntl, cntl, isave)
  @ccall libhsl.me62id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint})::Cvoid
end

function me62ad(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.me62ad_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62jd(nvar, ivar, ndf, last, icntl, isave, info, rinfo)
  @ccall libhsl.me62jd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me62pd(istrm, filnam, lenbuf, icntl, isave, info)
  @ccall libhsl.me62pd_(istrm::Ptr{Cint}, filnam::Ref{UInt8}, lenbuf::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62bd(kind, nvar, ivar, ndf, last, lavar, avar, nrhsb, rhs, lx, x, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.me62bd_(kind::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lavar::Ref{Cint}, avar::Ptr{ComplexF64}, nrhsb::Ref{Cint}, rhs::Ptr{ComplexF64}, lx::Ref{Cint}, x::Ptr{ComplexF64}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{ComplexF64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me62cd(kind, nrhsc, lx, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.me62cd_(kind::Ref{Cint}, nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{ComplexF64}, lw::Ref{Cint}, w::Ptr{ComplexF64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62dd(kind, nrhs, ndf, x, lyinbf, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, icntl, info)
  @ccall libhsl.me62dd_(kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{ComplexF64}, lyinbf::Ref{Cint}, bufr::Ptr{ComplexF64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62ed(kind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, icntl, info)
  @ccall libhsl.me62ed_(kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{ComplexF64}, bufr::Ptr{ComplexF64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62fd(kind, avar, rhs, nrhs, ivar, last, ndf, lavar, nvar, nfront, bufr, lbufr, ibufr, libufr, fa, frhs, lhed, lpiv, lastft, icntl, cntl, ifile, irec, mkey, iell, nell, lfrnt, largfr, kr, lp, icntl5, negpiv, mxbuf, mxibuf, info, det, ops, rms, nzerol)
  @ccall libhsl.me62fd_(kind::Ref{Cint}, avar::Ptr{ComplexF64}, rhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, lavar::Ref{Cint}, nvar::Ref{Cint}, nfront::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, lhed::Ptr{Cint}, lpiv::Ptr{Cint}, lastft::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lfrnt::Ref{Cint}, largfr::Ref{Cint}, kr::Ref{Cint}, lp::Ref{Cint}, icntl5::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, info::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, rms::Ref{Float64}, nzerol::Ptr{Float64})::Cvoid
end

function me62gd(jfl, kind, fa, frhs, nrhs, lfrnt, npiv, bufr, lbufr, nfront, lp, ifile, irec, mkey, iell, mxbuf, kz, nzerol, info, icntl)
  @ccall libhsl.me62gd_(jfl::Ref{Cint}, kind::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint}, mxbuf::Ref{Cint}, kz::Ref{Cint}, nzerol::Ptr{Float64}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me62hd(jfl, lfrnt, npiv, ibufr, libufr, lhed, nfront, lp, ifile, irec, mkey, iell, mxibuf, info, icntl)
  @ccall libhsl.me62hd_(jfl::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lhed::Ptr{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint}, mxibuf::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me62ld(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, icntl8, jflag)
  @ccall libhsl.me62ld_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, icntl8::Ref{Cint}, jflag::Ptr{Cint})::Cvoid
end

function me62md(iell, avar, lavar, rhs, nrhs, ivar, last, ndf, nvar, istatc, nfront, fa, frhs, lhed, lastft, lpiv, kr, lfrnt)
  @ccall libhsl.me62md_(iell::Ref{Cint}, avar::Ptr{ComplexF64}, lavar::Ref{Cint}, rhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, istatc::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, lhed::Ptr{Cint}, lastft::Ptr{Cint}, lpiv::Ptr{Cint}, kr::Ref{Cint}, lfrnt::Ref{Cint})::Cvoid
end

function me62nd(kind, iell, ndf, last, nfront, fa, lhed, nrhs, frhs, lastft, lpiv, lfrnt, kr, libufr, ibufr, lbufr, bufr, ifile, irec, mkey, det, ops, lp, negpiv, mxbuf, mxibuf, nzerol, cntl, icntl, info)
  @ccall libhsl.me62nd_(kind::Ref{Cint}, iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF64}, lhed::Ptr{Cint}, nrhs::Ref{Cint}, frhs::Ptr{ComplexF64}, lastft::Ptr{Cint}, lpiv::Ptr{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, lbufr::Ref{Cint}, bufr::Ptr{ComplexF64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, nzerol::Ptr{Float64}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62od(kind, iell, avar, lavar, rhs, nrhs, ivar, ndf, last, nvar, istatc, bufr, lbufr, ibufr, libufr, ifile, irec, mkey, det, ops, cntl, lp, negpiv, mxbuf, mxibuf, nzerol, icntl, info)
  @ccall libhsl.me62od_(kind::Ref{Cint}, iell::Ref{Cint}, avar::Ptr{ComplexF64}, lavar::Ref{Cint}, rhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, istatc::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, cntl::Ptr{Float64}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, nzerol::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62i(icntl, cntl, isave)
  @ccall libhsl.me62i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint})::Cvoid
end

function me62a(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.me62a_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62j(nvar, ivar, ndf, last, icntl, isave, info, rinfo)
  @ccall libhsl.me62j_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me62p(istrm, filnam, lenbuf, icntl, isave, info)
  @ccall libhsl.me62p_(istrm::Ptr{Cint}, filnam::Ref{UInt8}, lenbuf::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62b(kind, nvar, ivar, ndf, last, lavar, avar, nrhsb, rhs, lx, x, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.me62b_(kind::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lavar::Ref{Cint}, avar::Ptr{ComplexF32}, nrhsb::Ref{Cint}, rhs::Ptr{ComplexF32}, lx::Ref{Cint}, x::Ptr{ComplexF32}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{ComplexF32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me62c(kind, nrhsc, lx, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.me62c_(kind::Ref{Cint}, nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{ComplexF32}, lw::Ref{Cint}, w::Ptr{ComplexF32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62d(kind, nrhs, ndf, x, lyinbf, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, icntl, info)
  @ccall libhsl.me62d_(kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{ComplexF32}, lyinbf::Ref{Cint}, bufr::Ptr{ComplexF32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62e(kind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, icntl, info)
  @ccall libhsl.me62e_(kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{ComplexF32}, bufr::Ptr{ComplexF32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62f(kind, avar, rhs, nrhs, ivar, last, ndf, lavar, nvar, nfront, bufr, lbufr, ibufr, libufr, fa, frhs, lhed, lpiv, lastft, icntl, cntl, ifile, irec, mkey, iell, nell, lfrnt, largfr, kr, lp, icntl5, negpiv, mxbuf, mxibuf, info, det, ops, rms, nzerol)
  @ccall libhsl.me62f_(kind::Ref{Cint}, avar::Ptr{ComplexF32}, rhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, lavar::Ref{Cint}, nvar::Ref{Cint}, nfront::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, lhed::Ptr{Cint}, lpiv::Ptr{Cint}, lastft::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lfrnt::Ref{Cint}, largfr::Ref{Cint}, kr::Ref{Cint}, lp::Ref{Cint}, icntl5::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, info::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, rms::Ref{Float32}, nzerol::Ptr{Float32})::Cvoid
end

function me62g(jfl, kind, fa, frhs, nrhs, lfrnt, npiv, bufr, lbufr, nfront, lp, ifile, irec, mkey, iell, mxbuf, kz, nzerol, info, icntl)
  @ccall libhsl.me62g_(jfl::Ref{Cint}, kind::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint}, mxbuf::Ref{Cint}, kz::Ref{Cint}, nzerol::Ptr{Float32}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me62h(jfl, lfrnt, npiv, ibufr, libufr, lhed, nfront, lp, ifile, irec, mkey, iell, mxibuf, info, icntl)
  @ccall libhsl.me62h_(jfl::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lhed::Ptr{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, mkey::Ref{Cint}, iell::Ref{Cint}, mxibuf::Ref{Cint}, info::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function me62l(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, icntl8, jflag)
  @ccall libhsl.me62l_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, icntl8::Ref{Cint}, jflag::Ptr{Cint})::Cvoid
end

function me62m(iell, avar, lavar, rhs, nrhs, ivar, last, ndf, nvar, istatc, nfront, fa, frhs, lhed, lastft, lpiv, kr, lfrnt)
  @ccall libhsl.me62m_(iell::Ref{Cint}, avar::Ptr{ComplexF32}, lavar::Ref{Cint}, rhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, istatc::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, lhed::Ptr{Cint}, lastft::Ptr{Cint}, lpiv::Ptr{Cint}, kr::Ref{Cint}, lfrnt::Ref{Cint})::Cvoid
end

function me62n(kind, iell, ndf, last, nfront, fa, lhed, nrhs, frhs, lastft, lpiv, lfrnt, kr, libufr, ibufr, lbufr, bufr, ifile, irec, mkey, det, ops, lp, negpiv, mxbuf, mxibuf, nzerol, cntl, icntl, info)
  @ccall libhsl.me62n_(kind::Ref{Cint}, iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF32}, lhed::Ptr{Cint}, nrhs::Ref{Cint}, frhs::Ptr{ComplexF32}, lastft::Ptr{Cint}, lpiv::Ptr{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, lbufr::Ref{Cint}, bufr::Ptr{ComplexF32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, nzerol::Ptr{Float32}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me62o(kind, iell, avar, lavar, rhs, nrhs, ivar, ndf, last, nvar, istatc, bufr, lbufr, ibufr, libufr, ifile, irec, mkey, det, ops, cntl, lp, negpiv, mxbuf, mxibuf, nzerol, icntl, info)
  @ccall libhsl.me62o_(kind::Ref{Cint}, iell::Ref{Cint}, avar::Ptr{ComplexF32}, lavar::Ref{Cint}, rhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, istatc::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, cntl::Ptr{Float32}, lp::Ref{Cint}, negpiv::Ref{Cint}, mxbuf::Ref{Cint}, mxibuf::Ref{Cint}, nzerol::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
