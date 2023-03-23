function ma52ad(icall, nvar, ivar, nelt, ndomn, idomn, nguard, lguard, iguard, liw, iw, lp, iflag)
  @ccall libhsl.ma52ad_(icall::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, nelt::Ref{Cint}, ndomn::Ref{Cint}, idomn::Ref{Cint}, nguard::Ptr{Cint}, lguard::Ref{Cint}, iguard::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52bd(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52bd_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ref{Cint}, ifvar::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ref{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52cd(ind, nrhs, lx, b, x, lw, w, liw, iw, isave, lp, iflag)
  @ccall libhsl.ma52cd_(ind::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float64}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52dd(nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, lhed, ifile, irec, isize, mkey, numblk, ifvar, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52dd_(nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float64}, farhs::Ptr{Float64}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ref{Cint}, nfvar::Ref{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52ed(last, ndf, nfront, lhed, kpvlnk)
  @ccall libhsl.ma52ed_(last::Ptr{Cint}, ndf::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, kpvlnk::Ptr{Cint})::Cvoid
end

function ma52fd(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, jfvar, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52fd_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ptr{Float64}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52gd(mfront, nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, khed, lhed, ifile, irec, isize, mkey, numblk, ifvar, jfvar, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52gd_(mfront::Ref{Cint}, nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float64}, farhs::Ptr{Float64}, khed::Ptr{Cint}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ptr{Float64}, nfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52kd(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, jfvar, ip, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52kd_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, ip::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52ld(mfront, nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, khed, lhed, ifile, irec, isize, mkey, numblk, ifvar, jfvar, ip, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52ld_(mfront::Ref{Cint}, nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float64}, llb::Ref{Cint}, bufru::Ptr{Float64}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float64}, farhs::Ptr{Float64}, khed::Ptr{Cint}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, ip::Ptr{Cint}, fvar::Ptr{Float64}, frhs::Ptr{Float64}, lfvar::Ptr{Cint}, nfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52a(icall, nvar, ivar, nelt, ndomn, idomn, nguard, lguard, iguard, liw, iw, lp, iflag)
  @ccall libhsl.ma52a_(icall::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, nelt::Ref{Cint}, ndomn::Ref{Cint}, idomn::Ref{Cint}, nguard::Ptr{Cint}, lguard::Ref{Cint}, iguard::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52b(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52b_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ref{Cint}, ifvar::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ref{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52c(ind, nrhs, lx, b, x, lw, w, liw, iw, isave, lp, iflag)
  @ccall libhsl.ma52c_(ind::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float32}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52d(nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, lhed, ifile, irec, isize, mkey, numblk, ifvar, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52d_(nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float32}, farhs::Ptr{Float32}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ref{Cint}, nfvar::Ref{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52e(last, ndf, nfront, lhed, kpvlnk)
  @ccall libhsl.ma52e_(last::Ptr{Cint}, ndf::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint}, kpvlnk::Ptr{Cint})::Cvoid
end

function ma52f(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, jfvar, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52f_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ptr{Float32}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52g(mfront, nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, khed, lhed, ifile, irec, isize, mkey, numblk, ifvar, jfvar, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52g_(mfront::Ref{Cint}, nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float32}, farhs::Ptr{Float32}, khed::Ptr{Cint}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ptr{Float32}, nfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52k(lrhs, nrhs, ndf, last, lx, x, lw, w, liw, iw, nfvar, ifvar, jfvar, ip, fvar, frhs, lfvar, isave, lp, iflag)
  @ccall libhsl.ma52k_(lrhs::Ref{Cint}, nrhs::Ref{Cint}, ndf::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, nfvar::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, ip::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma52l(mfront, nfront, nrhs, lrhs, bufrl, llb, bufru, lub, ibufr, libufr, fa, farhs, khed, lhed, ifile, irec, isize, mkey, numblk, ifvar, jfvar, ip, fvar, frhs, lfvar, nfvar, isave, lp, iflag)
  @ccall libhsl.ma52l_(mfront::Ref{Cint}, nfront::Ref{Cint}, nrhs::Ref{Cint}, lrhs::Ref{Cint}, bufrl::Ptr{Float32}, llb::Ref{Cint}, bufru::Ptr{Float32}, lub::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, fa::Ptr{Float32}, farhs::Ptr{Float32}, khed::Ptr{Cint}, lhed::Ptr{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, isize::Ptr{Cint}, mkey::Ptr{Cint}, numblk::Ptr{Cint}, ifvar::Ptr{Cint}, jfvar::Ptr{Cint}, ip::Ptr{Cint}, fvar::Ptr{Float32}, frhs::Ptr{Float32}, lfvar::Ptr{Cint}, nfvar::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, iflag::Ref{Cint})::Cvoid
end
