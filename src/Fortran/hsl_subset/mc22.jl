function mc22ar(::Type{Float32}, ::Type{Int32}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset.mc22a_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, nz::Ref{Int32},
                              lenrow::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, iw::Ptr{Int32},
                              iw1::Ptr{Int32})::Cvoid
end

function mc22ar(::Type{Float64}, ::Type{Int32}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset.mc22ad_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, nz::Ref{Int32},
                               lenrow::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, iw::Ptr{Int32},
                               iw1::Ptr{Int32})::Cvoid
end

function mc22ar(::Type{Float128}, ::Type{Int32}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset.mc22aq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, nz::Ref{Int32},
                               lenrow::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, iw::Ptr{Int32},
                               iw1::Ptr{Int32})::Cvoid
end

function mc22ar(::Type{Float32}, ::Type{Int64}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset_64.mc22a_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32}, nz::Ref{Int64},
                                    lenrow::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end

function mc22ar(::Type{Float64}, ::Type{Int64}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset_64.mc22ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     nz::Ref{Int64}, lenrow::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end

function mc22ar(::Type{Float128}, ::Type{Int64}, n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl_subset_64.mc22aq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     nz::Ref{Int64}, lenrow::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, iw::Ptr{Int64}, iw1::Ptr{Int64})::Cvoid
end
