function mc13dd(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl.mc13dd_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, ior::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                        iw::Ptr{Cint})::Cvoid
end

function mc13dd_64(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset_64.mc13dd_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, ior::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc13ed(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl.mc13ed_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, arp::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                        lowl::Ptr{Cint}, numb::Ptr{Cint}, prev::Ptr{Cint})::Cvoid
end

function mc13ed_64(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl_subset_64.mc13ed_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, arp::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, lowl::Ptr{Int64},
                                     numb::Ptr{Int64}, prev::Ptr{Int64})::Cvoid
end

function mc13d(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl.mc13d_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, ior::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                       iw::Ptr{Cint})::Cvoid
end

function mc13d_64(n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset_64.mc13d_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, ior::Ptr{Int64},
                                    ib::Ptr{Int64}, num::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc13e(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl.mc13e_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, arp::Ptr{Cint}, ib::Ptr{Cint}, num::Ref{Cint},
                       lowl::Ptr{Cint}, numb::Ptr{Cint}, prev::Ptr{Cint})::Cvoid
end

function mc13e_64(n, icn, licn, ip, lenr, arp, ib, num, lowl, numb, prev)
  @ccall libhsl_subset_64.mc13e_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, arp::Ptr{Int64},
                                    ib::Ptr{Int64}, num::Ref{Int64}, lowl::Ptr{Int64},
                                    numb::Ptr{Int64}, prev::Ptr{Int64})::Cvoid
end
