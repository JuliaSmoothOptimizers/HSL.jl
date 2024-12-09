function mc21ad(n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl.mc21ad_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc21ad_64(n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset_64.mc21ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc21bd(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
  @ccall libhsl.mc21bd_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                        lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, pr::Ptr{Cint},
                        arp::Ptr{Cint}, cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc21bd_64(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc21bd_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                     ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                     numnz::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                     cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc21a(n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl.mc21a_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc21a_64(n, icn, licn, ip, lenr, iperm, numnz, iw)
  @ccall libhsl_subset_64.mc21a_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                    numnz::Ref{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc21b(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
  @ccall libhsl.mc21b_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint},
                       lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, pr::Ptr{Cint},
                       arp::Ptr{Cint}, cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc21b_64(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc21b_64_(n::Ref{Int64}, icn::Ptr{Int64}, licn::Ref{Int64},
                                    ip::Ptr{Int64}, lenr::Ptr{Int64}, iperm::Ptr{Int64},
                                    numnz::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                    cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end
