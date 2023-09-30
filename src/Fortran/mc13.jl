function mc13dd(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl.mc13dd_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, ior::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                        iw::Ptr{Cint})::Cvoid
end

function mc13ed(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl.mc13ed_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, arp::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                        lowl::Ptr{Cint}, numb::Ptr{Cint}, prev::Ptr{Cint})::Cvoid
end

function mc13d(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl.mc13d_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, ior::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                       iw::Ptr{Cint})::Cvoid
end

function mc13e(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl.mc13e_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, arp::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                       lowl::Ptr{Cint}, numb::Ptr{Cint}, prev::Ptr{Cint})::Cvoid
end
