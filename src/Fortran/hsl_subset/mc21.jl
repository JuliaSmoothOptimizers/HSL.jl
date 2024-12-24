function mc21ar(::Type{Float32}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset.mc21a_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                              lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function mc21ar(::Type{Float64}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset.mc21ad_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc21ar(::Type{Float128}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset.mc21aq_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc21ar(::Type{Float32}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset_64.mc21a_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                    numnz::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc21ar(::Type{Float64}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset_64.mc21ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc21ar(::Type{Float128}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset_64.mc21aq_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc21br(::Type{Float32}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset.mc21b_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                              lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                              pr::Ptr{Int32}, arp::Ptr{Int32}, cv::Ptr{Int32},
                              out::Ptr{Int32})::Cvoid
end

function mc21br(::Type{Float64}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset.mc21bd_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                               pr::Ptr{Int32}, arp::Ptr{Int32}, cv::Ptr{Int32},
                               out::Ptr{Int32})::Cvoid
end

function mc21br(::Type{Float128}, ::Type{Int32}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset.mc21bq_(n::Ref{Int32}, icn::Ptr{Int32}, licn::Ref{Int32}, ip::Ptr{Int32},
                               lenr::Ptr{Int32}, iperm::Ptr{Int32}, numnz::Ref{Int32},
                               pr::Ptr{Int32}, arp::Ptr{Int32}, cv::Ptr{Int32},
                               out::Ptr{Int32})::Cvoid
end

function mc21br(::Type{Float32}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset_64.mc21b_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                    numnz::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                    cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc21br(::Type{Float64}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset_64.mc21bd_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                     cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc21br(::Type{Float128}, ::Type{Int64}, n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv,
                out)
  @ccall libhsl_subset_64.mc21bq_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                     cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end
