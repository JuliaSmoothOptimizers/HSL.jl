function me42id(icntl, cntl, isave)
  @ccall libhsl.me42id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint})::Cvoid
end

function me42ad(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.me42ad_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42jd(nvar, ivar, ndf, last, nmaxe, ifsize, icntl, isave, info)
  @ccall libhsl.me42jd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, ifsize::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42pd(istrm, lenbuf, lenfle, icntl, isave, info)
  @ccall libhsl.me42pd_(istrm::Ptr{Cint}, lenbuf::Ptr{Cint}, lenfle::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42bd(nvar, ivar, ndf, last, nmaxe, avar, nrhs, rhs, lrhs, lx, x, nfront, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.me42bd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, avar::Ptr{ComplexF64}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, lx::Ref{Cint}, x::Ptr{ComplexF64}, nfront::Ptr{Cint}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{ComplexF64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me42cd(kind, nrhs, lx, b, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.me42cd_(kind::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, lw::Ref{Cint}, w::Ptr{ComplexF64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42dd(ind, kind, nrhs, ndf, x, lyinbf, ly1, ly2, y, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, info)
  @ccall libhsl.me42dd_(ind::Ref{Cint}, kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{ComplexF64}, lyinbf::Ref{Cint}, ly1::Ref{Cint}, ly2::Ref{Cint}, y::Ptr{ComplexF64}, bufr::Ptr{ComplexF64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function me42ed(ind, kind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, info)
  @ccall libhsl.me42ed_(ind::Ref{Cint}, kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{ComplexF64}, bufr::Ptr{ComplexF64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function me42fd(avar, rhs, lrhs, nrhs, ivar, last, ndf, nmaxe, nvar, mfront, nfront, bufrl, llb, bufru, lub, ibufr, libufr, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, icntl, cntl, ifile, irec, isize, mkey, numblk, iell, nell, kfrnt, lfrnt, icom, pivblk, bzero, info, rinfo)
  @ccall libhsl.me42fd_(avar::Ptr{ComplexF64}, rhs::Ptr{ComplexF64}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nmaxe::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, bufrl::Ptr{ComplexF64}, llb::Ref{Cint}, bufru::Ptr{ComplexF64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, icom::Ptr{Cint}, pivblk::Ref{Cint}, bzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function me42gd(ind, jfl, fa, frhs, nrhs, kfrnt, lfrnt, npiv, bufr, lbufr, mfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.me42gd_(ind::Ref{Cint}, jfl::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, mfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42hd(jfl, kfrnt, lfrnt, npiv, ibufr, libufr, khed, lhed, mfront, nfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.me42hd_(jfl::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, khed::Ptr{Cint}, lhed::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42kd(jfl, ind, length, ifile, isize, mkey, numblk, irec, iell, nell, lp, info)
  @ccall libhsl.me42kd_(jfl::Ref{Cint}, ind::Ref{Cint}, length::Ref{Cint}, ifile::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, irec::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42ld(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, jflag)
  @ccall libhsl.me42ld_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{ComplexF64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, jflag::Ref{Cint})::Cvoid
end

function me42md(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, last, ndf, nvar, mfront, nfront, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, istatc, lfree, kr, kfrnt, lfrnt, info)
  @ccall libhsl.me42md_(iell::Ref{Cint}, avar::Ptr{ComplexF64}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF64}, frhs::Ptr{ComplexF64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, kr::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42nd(iell, ndf, last, mfront, nfront, fa, lhed, khed, lrhs, nrhs, frhs, kdest, ldest, kpiv, kpvlnk, kpivrx, lpivcx, pivot, kfrnt, lfrnt, kr, ks, nmaxe, nelim, iforce, libufr, ibufr, bufrl, llb, bufru, lub, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info, nsize, lstat)
  @ccall libhsl.me42nd_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, frhs::Ptr{ComplexF64}, kdest::Ptr{Cint}, ldest::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, kpivrx::Ref{Cint}, lpivcx::Ref{Cint}, pivot::Ref{ComplexF64}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, ks::Ref{Cint}, nmaxe::Ref{Cint}, nelim::Ref{Cint}, iforce::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, bufrl::Ptr{ComplexF64}, llb::Ref{Cint}, bufru::Ptr{ComplexF64}, lub::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, nell::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, nsize::Ref{Cint}, lstat::Ref{Cint})::Cvoid
end

function me42od(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, ndf, last, nvar, mfront, nfront, lhed, khed, kr, kpiv, kpvlnk, ldest, kdest, istatc, lfree, frhs, bufrl, llb, bufru, lub, ibufr, libufr, mvar, kfrnt, lfrnt, fa, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info)
  @ccall libhsl.me42od_(iell::Ref{Cint}, avar::Ptr{ComplexF64}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{ComplexF64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kr::Ref{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, frhs::Ptr{ComplexF64}, bufrl::Ptr{ComplexF64}, llb::Ref{Cint}, bufru::Ptr{ComplexF64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, mvar::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, fa::Ptr{ComplexF64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, nell::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42i(icntl, cntl, isave)
  @ccall libhsl.me42i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint})::Cvoid
end

function me42a(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.me42a_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42j(nvar, ivar, ndf, last, nmaxe, ifsize, icntl, isave, info)
  @ccall libhsl.me42j_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, ifsize::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42p(istrm, lenbuf, lenfle, icntl, isave, info)
  @ccall libhsl.me42p_(istrm::Ptr{Cint}, lenbuf::Ptr{Cint}, lenfle::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42b(nvar, ivar, ndf, last, nmaxe, avar, nrhs, rhs, lrhs, lx, x, nfront, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.me42b_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, avar::Ptr{ComplexF32}, nrhs::Ref{Cint}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, lx::Ref{Cint}, x::Ptr{ComplexF32}, nfront::Ptr{Cint}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{ComplexF32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me42c(kind, nrhs, lx, b, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.me42c_(kind::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, lw::Ref{Cint}, w::Ptr{ComplexF32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me42d(ind, kind, nrhs, ndf, x, lyinbf, ly1, ly2, y, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, info)
  @ccall libhsl.me42d_(ind::Ref{Cint}, kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{ComplexF32}, lyinbf::Ref{Cint}, ly1::Ref{Cint}, ly2::Ref{Cint}, y::Ptr{ComplexF32}, bufr::Ptr{ComplexF32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function me42e(ind, kind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, info)
  @ccall libhsl.me42e_(ind::Ref{Cint}, kind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{ComplexF32}, bufr::Ptr{ComplexF32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{ComplexF32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function me42f(avar, rhs, lrhs, nrhs, ivar, last, ndf, nmaxe, nvar, mfront, nfront, bufrl, llb, bufru, lub, ibufr, libufr, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, icntl, cntl, ifile, irec, isize, mkey, numblk, iell, nell, kfrnt, lfrnt, icom, pivblk, bzero, info, rinfo)
  @ccall libhsl.me42f_(avar::Ptr{ComplexF32}, rhs::Ptr{ComplexF32}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nmaxe::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, bufrl::Ptr{ComplexF32}, llb::Ref{Cint}, bufru::Ptr{ComplexF32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, icom::Ptr{Cint}, pivblk::Ref{Cint}, bzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function me42g(ind, jfl, fa, frhs, nrhs, kfrnt, lfrnt, npiv, bufr, lbufr, mfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.me42g_(ind::Ref{Cint}, jfl::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, mfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42h(jfl, kfrnt, lfrnt, npiv, ibufr, libufr, khed, lhed, mfront, nfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.me42h_(jfl::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, khed::Ptr{Cint}, lhed::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42k(jfl, ind, length, ifile, isize, mkey, numblk, irec, iell, nell, lp, info)
  @ccall libhsl.me42k_(jfl::Ref{Cint}, ind::Ref{Cint}, length::Ref{Cint}, ifile::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, irec::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42l(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, jflag)
  @ccall libhsl.me42l_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{ComplexF32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, jflag::Ref{Cint})::Cvoid
end

function me42m(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, last, ndf, nvar, mfront, nfront, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, istatc, lfree, kr, kfrnt, lfrnt, info)
  @ccall libhsl.me42m_(iell::Ref{Cint}, avar::Ptr{ComplexF32}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF32}, frhs::Ptr{ComplexF32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, kr::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function me42n(iell, ndf, last, mfront, nfront, fa, lhed, khed, lrhs, nrhs, frhs, kdest, ldest, kpiv, kpvlnk, kpivrx, lpivcx, pivot, kfrnt, lfrnt, kr, ks, nmaxe, nelim, iforce, libufr, ibufr, bufrl, llb, bufru, lub, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info, nsize, lstat)
  @ccall libhsl.me42n_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{ComplexF32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, frhs::Ptr{ComplexF32}, kdest::Ptr{Cint}, ldest::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, kpivrx::Ref{Cint}, lpivcx::Ref{Cint}, pivot::Ref{ComplexF32}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, ks::Ref{Cint}, nmaxe::Ref{Cint}, nelim::Ref{Cint}, iforce::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, bufrl::Ptr{ComplexF32}, llb::Ref{Cint}, bufru::Ptr{ComplexF32}, lub::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, nell::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, nsize::Ref{Cint}, lstat::Ref{Cint})::Cvoid
end

function me42o(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, ndf, last, nvar, mfront, nfront, lhed, khed, kr, kpiv, kpvlnk, ldest, kdest, istatc, lfree, frhs, bufrl, llb, bufru, lub, ibufr, libufr, mvar, kfrnt, lfrnt, fa, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info)
  @ccall libhsl.me42o_(iell::Ref{Cint}, avar::Ptr{ComplexF32}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{ComplexF32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kr::Ref{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, frhs::Ptr{ComplexF32}, bufrl::Ptr{ComplexF32}, llb::Ref{Cint}, bufru::Ptr{ComplexF32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, mvar::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, fa::Ptr{ComplexF32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, nell::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
