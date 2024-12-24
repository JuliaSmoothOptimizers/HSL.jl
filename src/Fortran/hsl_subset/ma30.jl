function ma30ar(::Type{Float32}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset.ma30a_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                              ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                              lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                              nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                              iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float32},
                              iflag::Ref{Int32})::Cvoid
end

function ma30ar(::Type{Float64}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset.ma30ad_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                               lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                               nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                               iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float64},
                               iflag::Ref{Int32})::Cvoid
end

function ma30ar(::Type{Float128}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset.ma30aq_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                               lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                               nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                               iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float128},
                               iflag::Ref{Int32})::Cvoid
end

function ma30ar(::Type{Float32}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset_64.ma30a_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                    ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                    lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                    ipc::Ptr{Int64}, u::Ref{Float32}, iflag::Ref{Int64})::Cvoid
end

function ma30ar(::Type{Float64}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset_64.ma30ad_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                     ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                     lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                     ipc::Ptr{Int64}, u::Ref{Float64}, iflag::Ref{Int64})::Cvoid
end

function ma30ar(::Type{Float128}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl_subset_64.ma30aq_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                     ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                     lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                     ipc::Ptr{Int64}, u::Ref{Float128}, iflag::Ref{Int64})::Cvoid
end

function ma30br(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset.ma30b_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                              ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float32}, iw::Ptr{Int32},
                              iflag::Ref{Int32})::Cvoid
end

function ma30br(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset.ma30bd_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float64}, iw::Ptr{Int32},
                               iflag::Ref{Int32})::Cvoid
end

function ma30br(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset.ma30bq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float128}, iw::Ptr{Int32},
                               iflag::Ref{Int32})::Cvoid
end

function ma30br(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset_64.ma30b_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function ma30br(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset_64.ma30bd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function ma30br(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag)
  @ccall libhsl_subset_64.ma30bq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     w::Ptr{Float128}, iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function ma30cr(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype)
  @ccall libhsl_subset.ma30c_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                              idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float32},
                              w::Ptr{Float32}, mtype::Ref{Int32})::Cvoid
end

function ma30cr(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype)
  @ccall libhsl_subset.ma30cd_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                               idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float64},
                               w::Ptr{Float64}, mtype::Ref{Int32})::Cvoid
end

function ma30cr(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip,
                iq, x, w, mtype)
  @ccall libhsl_subset.ma30cq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                               idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float128},
                               w::Ptr{Float128}, mtype::Ref{Int32})::Cvoid
end

function ma30cr(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype)
  @ccall libhsl_subset_64.ma30c_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                    iq::Ptr{Int64}, x::Ptr{Float32}, w::Ptr{Float32},
                                    mtype::Ref{Int64})::Cvoid
end

function ma30cr(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype)
  @ccall libhsl_subset_64.ma30cd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, x::Ptr{Float64}, w::Ptr{Float64},
                                     mtype::Ref{Int64})::Cvoid
end

function ma30cr(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip,
                iq, x, w, mtype)
  @ccall libhsl_subset_64.ma30cq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, x::Ptr{Float128}, w::Ptr{Float128},
                                     mtype::Ref{Int64})::Cvoid
end

function ma30dr(::Type{Float32}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset.ma30d_(a::Ptr{Float32}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                              iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint})::Cvoid
end

function ma30dr(::Type{Float64}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset.ma30dd_(a::Ptr{Float64}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                               iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint})::Cvoid
end

function ma30dr(::Type{Float128}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset.ma30dq_(a::Ptr{Float128}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                               iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint})::Cvoid
end

function ma30dr(::Type{Float32}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset_64.ma30d_64_(a::Ptr{Float32}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                    n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                    reals::Ref{Cint})::Cvoid
end

function ma30dr(::Type{Float64}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset_64.ma30dd_64_(a::Ptr{Float64}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                     n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                     reals::Ref{Cint})::Cvoid
end

function ma30dr(::Type{Float128}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl_subset_64.ma30dq_64_(a::Ptr{Float128}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                     n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                     reals::Ref{Cint})::Cvoid
end
