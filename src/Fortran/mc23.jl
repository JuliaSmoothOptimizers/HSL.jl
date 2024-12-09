function mc23ad(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl.mc23ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                        lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc23ad_64(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl_subset_64.mc23ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, idisp::Ptr{Int64},
                                     ip::Ptr{Int64}, iq::Ptr{Int64}, lenoff::Ptr{Int64},
                                     iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end

function mc23a(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl.mc23a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                       lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc23a_64(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl_subset_64.mc23a_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, idisp::Ptr{Int64},
                                    ip::Ptr{Int64}, iq::Ptr{Int64}, lenoff::Ptr{Int64},
                                    iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end
