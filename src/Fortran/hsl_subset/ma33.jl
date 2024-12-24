function ma33ir(::Type{Float32}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma33i_(icntl::Ptr{Int32}, cntl::Ptr{Float32})::Cvoid
end

function ma33ir(::Type{Float64}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma33id_(icntl::Ptr{Int32}, cntl::Ptr{Float64})::Cvoid
end

function ma33ir(::Type{Float128}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma33iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128})::Cvoid
end

function ma33ir(::Type{Float32}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma33i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function ma33ir(::Type{Float64}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma33id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function ma33ir(::Type{Float128}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma33iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128})::Cvoid
end

function ma33ar(::Type{Float32}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.ma33a_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                              ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                              lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                              nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                              iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float32}, iflag::Ref{Int32},
                              icntl::Ptr{Int32}, cntl::Ptr{Float32}, info::Ptr{Int32},
                              rinfo::Ptr{Float32})::Cvoid
end

function ma33ar(::Type{Float64}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.ma33ad_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                               lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                               nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                               iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float64},
                               iflag::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function ma33ar(::Type{Float128}, ::Type{Int32}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.ma33aq_(nn::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, irn::Ptr{Int32}, lirn::Ref{Int32},
                               lenc::Ptr{Int32}, ifirst::Ptr{Int32}, lastr::Ptr{Int32},
                               nextr::Ptr{Int32}, lastc::Ptr{Int32}, nextc::Ptr{Int32},
                               iptr::Ptr{Int32}, ipc::Ptr{Int32}, u::Ref{Float128},
                               iflag::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function ma33ar(::Type{Float32}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.ma33a_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                    ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                    lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                    ipc::Ptr{Int64}, u::Ref{Float32}, iflag::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function ma33ar(::Type{Float64}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.ma33ad_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                     ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                     lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                     ipc::Ptr{Int64}, u::Ref{Float64}, iflag::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma33ar(::Type{Float128}, ::Type{Int64}, nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn,
                lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.ma33aq_64_(nn::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, lenc::Ptr{Int64},
                                     ifirst::Ptr{Int64}, lastr::Ptr{Int64}, nextr::Ptr{Int64},
                                     lastc::Ptr{Int64}, nextc::Ptr{Int64}, iptr::Ptr{Int64},
                                     ipc::Ptr{Int64}, u::Ref{Float128}, iflag::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function ma33br(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset.ma33b_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                              ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float32}, iw::Ptr{Int32},
                              iflag::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float32},
                              rinfo::Ptr{Float32})::Cvoid
end

function ma33br(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset.ma33bd_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float64}, iw::Ptr{Int32},
                               iflag::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               rinfo::Ptr{Float64})::Cvoid
end

function ma33br(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset.ma33bq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, idisp::Ptr{Int32},
                               ip::Ptr{Int32}, iq::Ptr{Int32}, w::Ptr{Float128}, iw::Ptr{Int32},
                               iflag::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               rinfo::Ptr{Float128})::Cvoid
end

function ma33br(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset_64.ma33b_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, iflag::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    rinfo::Ptr{Float32})::Cvoid
end

function ma33br(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset_64.ma33bd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64}, iflag::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma33br(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw,
                iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset_64.ma33bq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     w::Ptr{Float128}, iw::Ptr{Int64}, iflag::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     rinfo::Ptr{Float128})::Cvoid
end

function ma33cr(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype, rinfo)
  @ccall libhsl_subset.ma33c_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                              idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float32},
                              w::Ptr{Float32}, mtype::Ref{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function ma33cr(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype, rinfo)
  @ccall libhsl_subset.ma33cd_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                               idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float64},
                               w::Ptr{Float64}, mtype::Ref{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function ma33cr(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip,
                iq, x, w, mtype, rinfo)
  @ccall libhsl_subset.ma33cq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, lenoff::Ptr{Int32},
                               idisp::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32}, x::Ptr{Float128},
                               w::Ptr{Float128}, mtype::Ref{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function ma33cr(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype, rinfo)
  @ccall libhsl_subset_64.ma33c_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                    iq::Ptr{Int64}, x::Ptr{Float32}, w::Ptr{Float32},
                                    mtype::Ref{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma33cr(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq,
                x, w, mtype, rinfo)
  @ccall libhsl_subset_64.ma33cd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, x::Ptr{Float64}, w::Ptr{Float64},
                                     mtype::Ref{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function ma33cr(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip,
                iq, x, w, mtype, rinfo)
  @ccall libhsl_subset_64.ma33cq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, x::Ptr{Float128}, w::Ptr{Float128},
                                     mtype::Ref{Int64}, rinfo::Ptr{Float128})::Cvoid
end

function ma33dr(::Type{Float32}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset.ma33d_(a::Ptr{Float32}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                              iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint},
                              info::Ptr{Int32})::Cvoid
end

function ma33dr(::Type{Float64}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset.ma33dd_(a::Ptr{Float64}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                               iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint},
                               info::Ptr{Int32})::Cvoid
end

function ma33dr(::Type{Float128}, ::Type{Int32}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset.ma33dq_(a::Ptr{Float128}, icn::Ptr{Int32}, iptr::Ptr{Int32}, n::Ref{Int32},
                               iactiv::Ref{Int32}, itop::Ref{Int32}, reals::Ref{Cint},
                               info::Ptr{Int32})::Cvoid
end

function ma33dr(::Type{Float32}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset_64.ma33d_64_(a::Ptr{Float32}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                    n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                    reals::Ref{Cint}, info::Ptr{Int64})::Cvoid
end

function ma33dr(::Type{Float64}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset_64.ma33dd_64_(a::Ptr{Float64}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                     n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                     reals::Ref{Cint}, info::Ptr{Int64})::Cvoid
end

function ma33dr(::Type{Float128}, ::Type{Int64}, a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset_64.ma33dq_64_(a::Ptr{Float128}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                     n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                     reals::Ref{Cint}, info::Ptr{Int64})::Cvoid
end
