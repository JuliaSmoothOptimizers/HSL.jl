function ma42id(icntl, cntl, isave)
  @ccall libhsl.ma42id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint})::Cvoid
end

function ma42ad(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.ma42ad_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42jd(nvar, ivar, ndf, last, nmaxe, ifsize, icntl, isave, info)
  @ccall libhsl.ma42jd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, ifsize::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42pd(istrm, lenbuf, lenfle, icntl, isave, info)
  @ccall libhsl.ma42pd_(istrm::Ptr{Cint}, lenbuf::Ptr{Cint}, lenfle::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42bd(nvar, ivar, ndf, last, nmaxe, avar, nrhs, rhs, lrhs, lx, x, nfront, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.ma42bd_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, avar::Ptr{Float64}, nrhs::Ref{Cint}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, nfront::Ptr{Cint}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma42cd(trans, nrhs, lx, b, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.ma42cd_(trans::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float64}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42dd(ind, nrhs, ndf, x, lyinbf, ly1, ly2, y, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, info)
  @ccall libhsl.ma42dd_(ind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{Float64}, lyinbf::Ref{Cint}, ly1::Ref{Cint}, ly2::Ref{Cint}, y::Ptr{Float64}, bufr::Ptr{Float64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma42ed(ind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, info)
  @ccall libhsl.ma42ed_(ind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{Float64}, bufr::Ptr{Float64}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float64}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma42fd(avar, rhs, lrhs, nrhs, ivar, last, ndf, nmaxe, nvar, mfront, nfront, bufrl, llb, bufru, lub, ibufr, libufr, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, icntl, cntl, ifile, irec, isize, mkey, numblk, iell, nell, kfrnt, lfrnt, icom, pivblk, bzero, info, rinfo)
  @ccall libhsl.ma42fd_(avar::Ptr{Float64}, rhs::Ptr{Float64}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nmaxe::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float64}, frhs::Ptr{Float64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, icom::Ptr{Cint}, pivblk::Ref{Cint}, bzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma42gd(ind, jfl, fa, frhs, nrhs, kfrnt, lfrnt, npiv, bufr, lbufr, mfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.ma42gd_(ind::Ref{Cint}, jfl::Ref{Cint}, fa::Ptr{Float64}, frhs::Ptr{Float64}, nrhs::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{Float64}, lbufr::Ref{Cint}, mfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42hd(jfl, kfrnt, lfrnt, npiv, ibufr, libufr, khed, lhed, mfront, nfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.ma42hd_(jfl::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, khed::Ptr{Cint}, lhed::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42kd(jfl, ind, length, ifile, isize, mkey, numblk, irec, iell, nell, lp, info)
  @ccall libhsl.ma42kd_(jfl::Ref{Cint}, ind::Ref{Cint}, length::Ref{Cint}, ifile::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, irec::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42ld(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, jflag)
  @ccall libhsl.ma42ld_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{Float64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, jflag::Ref{Cint})::Cvoid
end

function ma42md(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, last, ndf, nvar, mfront, nfront, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, istatc, lfree, kr, kfrnt, lfrnt, info)
  @ccall libhsl.ma42md_(iell::Ref{Cint}, avar::Ptr{Float64}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{Float64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float64}, frhs::Ptr{Float64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, kr::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42nd(iell, ndf, last, mfront, nfront, fa, lhed, khed, lrhs, nrhs, frhs, kdest, ldest, kpiv, kpvlnk, kpivrx, lpivcx, pivot, kfrnt, lfrnt, kr, ks, nmaxe, nelim, iforce, libufr, ibufr, bufrl, llb, bufru, lub, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info, ofdiag, nsize, lstat)
  @ccall libhsl.ma42nd_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float64}, lhed::Ptr{Cint}, khed::Ptr{Cint}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, frhs::Ptr{Float64}, kdest::Ptr{Cint}, ldest::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, kpivrx::Ref{Cint}, lpivcx::Ref{Cint}, pivot::Ref{Float64}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, ks::Ref{Cint}, nmaxe::Ref{Cint}, nelim::Ref{Cint}, iforce::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, nell::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, ofdiag::Ref{Cint}, nsize::Ref{Cint}, lstat::Ref{Cint})::Cvoid
end

function ma42od(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, ndf, last, nvar, mfront, nfront, lhed, khed, kr, kpiv, kpvlnk, ldest, kdest, istatc, lfree, frhs, bufrl, llb, bufru, lub, ibufr, libufr, mvar, kfrnt, lfrnt, fa, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info)
  @ccall libhsl.ma42od_(iell::Ref{Cint}, avar::Ptr{Float64}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{Float64}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kr::Ref{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, frhs::Ptr{Float64}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, mvar::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, fa::Ptr{Float64}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float64}, ops::Ref{Float64}, nell::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42i(icntl, cntl, isave)
  @ccall libhsl.ma42i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint})::Cvoid
end

function ma42a(nvar, ivar, ndf, last, lenlst, icntl, isave, info)
  @ccall libhsl.ma42a_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lenlst::Ref{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42j(nvar, ivar, ndf, last, nmaxe, ifsize, icntl, isave, info)
  @ccall libhsl.ma42j_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, ifsize::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42p(istrm, lenbuf, lenfle, icntl, isave, info)
  @ccall libhsl.ma42p_(istrm::Ptr{Cint}, lenbuf::Ptr{Cint}, lenfle::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42b(nvar, ivar, ndf, last, nmaxe, avar, nrhs, rhs, lrhs, lx, x, nfront, lenbuf, lw, w, liw, iw, icntl, cntl, isave, info, rinfo)
  @ccall libhsl.ma42b_(nvar::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nmaxe::Ref{Cint}, avar::Ptr{Float32}, nrhs::Ref{Cint}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, nfront::Ptr{Cint}, lenbuf::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma42c(trans, nrhs, lx, b, x, lw, w, liw, iw, icntl, isave, info)
  @ccall libhsl.ma42c_(trans::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float32}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, isave::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42d(ind, nrhs, ndf, x, lyinbf, ly1, ly2, y, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, irec, isize, mkey, info)
  @ccall libhsl.ma42d_(ind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, x::Ptr{Float32}, lyinbf::Ref{Cint}, ly1::Ref{Cint}, ly2::Ref{Cint}, y::Ptr{Float32}, bufr::Ptr{Float32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma42e(ind, nrhs, ndf, r1, bufr, dimbuf, ibufr, dimibf, w, ldw, lp, nrhsb, ifile, isize, mkey, info)
  @ccall libhsl.ma42e_(ind::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, r1::Ptr{Float32}, bufr::Ptr{Float32}, dimbuf::Ref{Cint}, ibufr::Ptr{Cint}, dimibf::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint}, lp::Ref{Cint}, nrhsb::Ref{Cint}, ifile::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma42f(avar, rhs, lrhs, nrhs, ivar, last, ndf, nmaxe, nvar, mfront, nfront, bufrl, llb, bufru, lub, ibufr, libufr, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, icntl, cntl, ifile, irec, isize, mkey, numblk, iell, nell, kfrnt, lfrnt, icom, pivblk, bzero, info, rinfo)
  @ccall libhsl.ma42f_(avar::Ptr{Float32}, rhs::Ptr{Float32}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nmaxe::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float32}, frhs::Ptr{Float32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, icom::Ptr{Cint}, pivblk::Ref{Cint}, bzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma42g(ind, jfl, fa, frhs, nrhs, kfrnt, lfrnt, npiv, bufr, lbufr, mfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.ma42g_(ind::Ref{Cint}, jfl::Ref{Cint}, fa::Ptr{Float32}, frhs::Ptr{Float32}, nrhs::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, bufr::Ptr{Float32}, lbufr::Ref{Cint}, mfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42h(jfl, kfrnt, lfrnt, npiv, ibufr, libufr, khed, lhed, mfront, nfront, lp, ifile, irec, isize, mkey, numblk, iell, nell, info)
  @ccall libhsl.ma42h_(jfl::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, npiv::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, khed::Ptr{Cint}, lhed::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lp::Ref{Cint}, ifile::Ref{Cint}, irec::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42k(jfl, ind, length, ifile, isize, mkey, numblk, irec, iell, nell, lp, info)
  @ccall libhsl.ma42k_(jfl::Ref{Cint}, ind::Ref{Cint}, length::Ref{Cint}, ifile::Ref{Cint}, isize::Ref{Cint}, mkey::Ref{Cint}, numblk::Ref{Cint}, irec::Ref{Cint}, iell::Ref{Cint}, nell::Ref{Cint}, lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42l(iopt, ifile, mkey, bufr, lbufr, ibufr, libufr, lp, jflag)
  @ccall libhsl.ma42l_(iopt::Ref{Cint}, ifile::Ref{Cint}, mkey::Ref{Cint}, bufr::Ptr{Float32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, lp::Ref{Cint}, jflag::Ref{Cint})::Cvoid
end

function ma42m(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, last, ndf, nvar, mfront, nfront, fa, frhs, lhed, khed, kpiv, kpvlnk, ldest, kdest, istatc, lfree, kr, kfrnt, lfrnt, info)
  @ccall libhsl.ma42m_(iell::Ref{Cint}, avar::Ptr{Float32}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{Float32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, last::Ptr{Cint}, ndf::Ref{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float32}, frhs::Ptr{Float32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, kr::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma42n(iell, ndf, last, mfront, nfront, fa, lhed, khed, lrhs, nrhs, frhs, kdest, ldest, kpiv, kpvlnk, kpivrx, lpivcx, pivot, kfrnt, lfrnt, kr, ks, nmaxe, nelim, iforce, libufr, ibufr, bufrl, llb, bufru, lub, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info, ofdiag, nsize, lstat)
  @ccall libhsl.ma42n_(iell::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, fa::Ptr{Float32}, lhed::Ptr{Cint}, khed::Ptr{Cint}, lrhs::Ref{Cint}, nrhs::Ref{Cint}, frhs::Ptr{Float32}, kdest::Ptr{Cint}, ldest::Ptr{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, kpivrx::Ref{Cint}, lpivcx::Ref{Cint}, pivot::Ref{Float32}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, kr::Ref{Cint}, ks::Ref{Cint}, nmaxe::Ref{Cint}, nelim::Ref{Cint}, iforce::Ref{Cint}, libufr::Ref{Cint}, ibufr::Ptr{Cint}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, nell::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, ofdiag::Ref{Cint}, nsize::Ref{Cint}, lstat::Ref{Cint})::Cvoid
end

function ma42o(iell, avar, lrhs, nmaxe, rhs, nrhs, ivar, ndf, last, nvar, mfront, nfront, lhed, khed, kr, kpiv, kpvlnk, ldest, kdest, istatc, lfree, frhs, bufrl, llb, bufru, lub, ibufr, libufr, mvar, kfrnt, lfrnt, fa, ifile, irec, isize, mkey, numblk, det, ops, nell, cntl, icntl, info)
  @ccall libhsl.ma42o_(iell::Ref{Cint}, avar::Ptr{Float32}, lrhs::Ref{Cint}, nmaxe::Ref{Cint}, rhs::Ptr{Float32}, nrhs::Ref{Cint}, ivar::Ptr{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, nvar::Ref{Cint}, mfront::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, khed::Ptr{Cint}, kr::Ref{Cint}, kpiv::Ptr{Cint}, kpvlnk::Ptr{Cint}, ldest::Ptr{Cint}, kdest::Ptr{Cint}, istatc::Ref{Cint}, lfree::Ref{Cint}, frhs::Ptr{Float32}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, mvar::Ref{Cint}, kfrnt::Ref{Cint}, lfrnt::Ref{Cint}, fa::Ptr{Float32}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, det::Ref{Float32}, ops::Ref{Float32}, nell::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
