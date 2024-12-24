function mc13dr(::Type{Float32}, ::Type{Int32}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset.mc13d_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                              lenr::Ptr{Int32}, ior::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function mc13dr(::Type{Float64}, ::Type{Int32}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset.mc13dd_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, ior::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc13dr(::Type{Float128}, ::Type{Int32}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset.mc13dq_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, ior::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc13dr(::Type{Float32}, ::Type{Int64}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset_64.mc13d_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, ior::Ptr{Int64},
                                    ib::Ptr{Int64}, num::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc13dr(::Type{Float64}, ::Type{Int64}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset_64.mc13dd_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, ior::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc13dr(::Type{Float128}, ::Type{Int64}, n, icn, licn, ip, lenr, ior, ib, num, iw)
  @ccall libhsl_subset_64.mc13dq_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, ior::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc13er(::Type{Float32}, ::Type{Int32}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset.mc13e_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                              lenr::Ptr{Int32}, arp::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                              lowl::Ptr{Int32}, numb::Ptr{Int32}, prev::Ptr{Int32})::Cvoid
end

function mc13er(::Type{Float64}, ::Type{Int32}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset.mc13ed_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, arp::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                               lowl::Ptr{Int32}, numb::Ptr{Int32}, prev::Ptr{Int32})::Cvoid
end

function mc13er(::Type{Float128}, ::Type{Int32}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset.mc13eq_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, arp::Ptr{Int32}, ib::Ptr{Int32}, num::Ref{Int32},
                               lowl::Ptr{Int32}, numb::Ptr{Int32}, prev::Ptr{Int32})::Cvoid
end

function mc13er(::Type{Float32}, ::Type{Int64}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset_64.mc13e_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, arp::Ptr{Int64},
                                    ib::Ptr{Int64}, num::Ref{Int64}, lowl::Ptr{Int64},
                                    numb::Ptr{Int64}, prev::Ptr{Int64})::Cvoid
end

function mc13er(::Type{Float64}, ::Type{Int64}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset_64.mc13ed_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, arp::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, lowl::Ptr{Int64},
                                     numb::Ptr{Int64}, prev::Ptr{Int64})::Cvoid
end

function mc13er(::Type{Float128}, ::Type{Int64}, n, icn, licn, ip, lenr, arp, ib, num, lowl, numb,
                prev)
  @ccall libhsl_subset_64.mc13eq_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, arp::Ptr{Int64},
                                     ib::Ptr{Int64}, num::Ref{Int64}, lowl::Ptr{Int64},
                                     numb::Ptr{Int64}, prev::Ptr{Int64})::Cvoid
end
