function mc33ad(m, n, nzi, nzo, itype, a, irn, jcn, ip, iq, iprof, iflag, iw, iw1, ierr)
  @ccall libhsl.mc33ad_(m::Ref{Cint}, n::Ref{Cint}, nzi::Ref{Cint}, nzo::Ref{Cint},
                        itype::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        ip::Ptr{Cint}, iq::Ptr{Cint}, iprof::Ptr{Cint}, iflag::Ptr{Cint},
                        iw::Ptr{Cint}, iw1::Ptr{Cint}, ierr::Ref{Cint})::Cvoid
end

function mc33bd(m, n, nz, irn, lencol, iprof, jcsbnd, jbend, irsbnd, ip, iq, jcolst, jcn, irowst,
                lenrow, ipinv, iqinv, minr, tally, head, flm, flt, blm, jflag, irow, jtype)
  @ccall libhsl.mc33bd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint},
                        lencol::Ptr{Cint}, iprof::Ptr{Cint}, jcsbnd::Ref{Cint}, jbend::Ref{Cint},
                        irsbnd::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, jcolst::Ptr{Cint},
                        jcn::Ptr{Cint}, irowst::Ptr{Cint}, lenrow::Ptr{Cint}, ipinv::Ptr{Cint},
                        iqinv::Ptr{Cint}, minr::Ptr{Cint}, tally::Ptr{Cint}, head::Ptr{Cint},
                        flm::Ptr{Cint}, flt::Ptr{Cint}, blm::Ptr{Cint}, jflag::Ptr{Cint},
                        irow::Ptr{Cint}, jtype::Ref{Cint})::Cvoid
end

function mc33cd(m, n, nz, irow, jts, mconst, ipinv, jcsbnd, irn, jcolst, lencol, jcsbst, irsbst,
                loop, ip, iq, iqinv, iprof, nblk)
  @ccall libhsl.mc33cd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint}, jts::Ref{Cint},
                        mconst::Ref{Cint}, ipinv::Ptr{Cint}, jcsbnd::Ref{Cint}, irn::Ptr{Cint},
                        jcolst::Ptr{Cint}, lencol::Ptr{Cint}, jcsbst::Ref{Cint}, irsbst::Ref{Cint},
                        loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                        iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33dd(m, n, nz, irow, jts, ipinv, jcsbnd, jcsbst, jbend, jcolst, lencol, irn, irsbst,
                loop, ip, iq, iqinv, iprof, nblk)
  @ccall libhsl.mc33dd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint}, jts::Ref{Cint},
                        ipinv::Ptr{Cint}, jcsbnd::Ref{Cint}, jcsbst::Ref{Cint}, jbend::Ref{Cint},
                        jcolst::Ptr{Cint}, lencol::Ptr{Cint}, irn::Ptr{Cint}, irsbst::Ref{Cint},
                        loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                        iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33a(m, n, nzi, nzo, itype, a, irn, jcn, ip, iq, iprof, iflag, iw, iw1, ierr)
  @ccall libhsl.mc33a_(m::Ref{Cint}, n::Ref{Cint}, nzi::Ref{Cint}, nzo::Ref{Cint}, itype::Ref{Cint},
                       a::Ptr{Float32}, irn::Ptr{Cint}, jcn::Ptr{Cint}, ip::Ptr{Cint},
                       iq::Ptr{Cint}, iprof::Ptr{Cint}, iflag::Ptr{Cint}, iw::Ptr{Cint},
                       iw1::Ptr{Cint}, ierr::Ref{Cint})::Cvoid
end

function mc33b(m, n, nz, irn, lencol, iprof, jcsbnd, jbend, irsbnd, ip, iq, jcolst, jcn, irowst,
               lenrow, ipinv, iqinv, minr, tally, head, flm, flt, blm, jflag, irow, jtype)
  @ccall libhsl.mc33b_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, lencol::Ptr{Cint},
                       iprof::Ptr{Cint}, jcsbnd::Ref{Cint}, jbend::Ref{Cint}, irsbnd::Ref{Cint},
                       ip::Ptr{Cint}, iq::Ptr{Cint}, jcolst::Ptr{Cint}, jcn::Ptr{Cint},
                       irowst::Ptr{Cint}, lenrow::Ptr{Cint}, ipinv::Ptr{Cint}, iqinv::Ptr{Cint},
                       minr::Ptr{Cint}, tally::Ptr{Cint}, head::Ptr{Cint}, flm::Ptr{Cint},
                       flt::Ptr{Cint}, blm::Ptr{Cint}, jflag::Ptr{Cint}, irow::Ptr{Cint},
                       jtype::Ref{Cint})::Cvoid
end

function mc33c(m, n, nz, irow, jts, mconst, ipinv, jcsbnd, irn, jcolst, lencol, jcsbst, irsbst,
               loop, ip, iq, iqinv, iprof, nblk)
  @ccall libhsl.mc33c_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint}, jts::Ref{Cint},
                       mconst::Ref{Cint}, ipinv::Ptr{Cint}, jcsbnd::Ref{Cint}, irn::Ptr{Cint},
                       jcolst::Ptr{Cint}, lencol::Ptr{Cint}, jcsbst::Ref{Cint}, irsbst::Ref{Cint},
                       loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                       iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33d(m, n, nz, irow, jts, ipinv, jcsbnd, jcsbst, jbend, jcolst, lencol, irn, irsbst, loop,
               ip, iq, iqinv, iprof, nblk)
  @ccall libhsl.mc33d_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint}, jts::Ref{Cint},
                       ipinv::Ptr{Cint}, jcsbnd::Ref{Cint}, jcsbst::Ref{Cint}, jbend::Ref{Cint},
                       jcolst::Ptr{Cint}, lencol::Ptr{Cint}, irn::Ptr{Cint}, irsbst::Ref{Cint},
                       loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                       iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end
