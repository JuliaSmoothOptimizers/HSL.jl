function mc23ar(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset.mc23a_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32},
                              lenoff::Ptr{Int32}, iw::Ptr{Int32}, iw1::Ptr{Int32})::Cvoid
end

function mc23ar(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset.mc23ad_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32},
                               lenoff::Ptr{Int32}, iw::Ptr{Int32}, iw1::Ptr{Int32})::Cvoid
end

function mc23ar(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset.mc23aq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32},
                               lenoff::Ptr{Int32}, iw::Ptr{Int32}, iw1::Ptr{Int32})::Cvoid
end

function mc23ar(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset_64.mc23a_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, idisp::Ptr{Int64},
                                    ip::Ptr{Int64}, iq::Ptr{Int64}, lenoff::Ptr{Int64},
                                    iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end

function mc23ar(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset_64.mc23ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, idisp::Ptr{Int64},
                                     ip::Ptr{Int64}, iq::Ptr{Int64}, lenoff::Ptr{Int64},
                                     iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end

function mc23ar(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw,
                iw1)
  @ccall libhsl_subset_64.mc23aq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, idisp::Ptr{Int64},
                                     ip::Ptr{Int64}, iq::Ptr{Int64}, lenoff::Ptr{Int64},
                                     iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end
