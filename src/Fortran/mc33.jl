function mc33cd(m, n, nz, irow, jts, mconst, ipinv, jcsbnd, irn, jcolst, lencol, jcsbst,
                irsbst, loop, ip, iq, iqinv, iprof, nblk)
    @ccall libhsl.mc33cd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint},
                          jts::Ref{Cint}, mconst::Ref{Cint}, ipinv::Ptr{Cint},
                          jcsbnd::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint},
                          lencol::Ptr{Cint}, jcsbst::Ref{Cint}, irsbst::Ref{Cint},
                          loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                          iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33dd(m, n, nz, irow, jts, ipinv, jcsbnd, jcsbst, jbend, jcolst, lencol, irn,
                irsbst, loop, ip, iq, iqinv, iprof, nblk)
    @ccall libhsl.mc33dd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint},
                          jts::Ref{Cint}, ipinv::Ptr{Cint}, jcsbnd::Ref{Cint},
                          jcsbst::Ref{Cint}, jbend::Ref{Cint}, jcolst::Ptr{Cint},
                          lencol::Ptr{Cint}, irn::Ptr{Cint}, irsbst::Ref{Cint},
                          loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                          iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33c(m, n, nz, irow, jts, mconst, ipinv, jcsbnd, irn, jcolst, lencol, jcsbst,
               irsbst, loop, ip, iq, iqinv, iprof, nblk)
    @ccall libhsl.mc33c_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint},
                         jts::Ref{Cint}, mconst::Ref{Cint}, ipinv::Ptr{Cint},
                         jcsbnd::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint},
                         lencol::Ptr{Cint}, jcsbst::Ref{Cint}, irsbst::Ref{Cint},
                         loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                         iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end

function mc33d(m, n, nz, irow, jts, ipinv, jcsbnd, jcsbst, jbend, jcolst, lencol, irn,
               irsbst, loop, ip, iq, iqinv, iprof, nblk)
    @ccall libhsl.mc33d_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, irow::Ptr{Cint},
                         jts::Ref{Cint}, ipinv::Ptr{Cint}, jcsbnd::Ref{Cint},
                         jcsbst::Ref{Cint}, jbend::Ref{Cint}, jcolst::Ptr{Cint},
                         lencol::Ptr{Cint}, irn::Ptr{Cint}, irsbst::Ref{Cint},
                         loop::Ref{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iqinv::Ptr{Cint},
                         iprof::Ptr{Cint}, nblk::Ref{Cint})::Cvoid
end
