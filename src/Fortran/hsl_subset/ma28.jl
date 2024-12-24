function ma28ar(::Type{Float32}, ::Type{Int32}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28a_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              irn::Ptr{Int32}, lirn::Ref{Int32}, icn::Ptr{Int32}, u::Ref{Float32},
                              ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32},
                              iflag::Ref{Int32})::Cvoid
end

function ma28ar(::Type{Float64}, ::Type{Int32}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28ad_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               irn::Ptr{Int32}, lirn::Ref{Int32}, icn::Ptr{Int32}, u::Ref{Float64},
                               ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64},
                               iflag::Ref{Int32})::Cvoid
end

function ma28ar(::Type{Float128}, ::Type{Int32}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28aq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               irn::Ptr{Int32}, lirn::Ref{Int32}, icn::Ptr{Int32}, u::Ref{Float128},
                               ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128},
                               iflag::Ref{Int32})::Cvoid
end

function ma28ar(::Type{Float32}, ::Type{Int64}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28a_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, irn::Ptr{Int64}, lirn::Ref{Int64},
                                    icn::Ptr{Int64}, u::Ref{Float32}, ikeep::Ptr{Int64},
                                    iw::Ptr{Int64}, w::Ptr{Float32}, iflag::Ref{Int64})::Cvoid
end

function ma28ar(::Type{Float64}, ::Type{Int64}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28ad_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, irn::Ptr{Int64}, lirn::Ref{Int64},
                                     icn::Ptr{Int64}, u::Ref{Float64}, ikeep::Ptr{Int64},
                                     iw::Ptr{Int64}, w::Ptr{Float64}, iflag::Ref{Int64})::Cvoid
end

function ma28ar(::Type{Float128}, ::Type{Int64}, n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28aq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, irn::Ptr{Int64}, lirn::Ref{Int64},
                                     icn::Ptr{Int64}, u::Ref{Float128}, ikeep::Ptr{Int64},
                                     iw::Ptr{Int64}, w::Ptr{Float128}, iflag::Ref{Int64})::Cvoid
end

function ma28br(::Type{Float32}, ::Type{Int32}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28b_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              ivect::Ptr{Int32}, jvect::Ptr{Int32}, icn::Ptr{Int32},
                              ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32},
                              iflag::Ref{Int32})::Cvoid
end

function ma28br(::Type{Float64}, ::Type{Int32}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28bd_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               ivect::Ptr{Int32}, jvect::Ptr{Int32}, icn::Ptr{Int32},
                               ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64},
                               iflag::Ref{Int32})::Cvoid
end

function ma28br(::Type{Float128}, ::Type{Int32}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset.ma28bq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               ivect::Ptr{Int32}, jvect::Ptr{Int32}, icn::Ptr{Int32},
                               ikeep::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128},
                               iflag::Ref{Int32})::Cvoid
end

function ma28br(::Type{Float32}, ::Type{Int64}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28b_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, ivect::Ptr{Int64}, jvect::Ptr{Int64},
                                    icn::Ptr{Int64}, ikeep::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32}, iflag::Ref{Int64})::Cvoid
end

function ma28br(::Type{Float64}, ::Type{Int64}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28bd_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, ivect::Ptr{Int64}, jvect::Ptr{Int64},
                                     icn::Ptr{Int64}, ikeep::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64}, iflag::Ref{Int64})::Cvoid
end

function ma28br(::Type{Float128}, ::Type{Int64}, n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w,
                iflag)
  @ccall libhsl_subset_64.ma28bq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, ivect::Ptr{Int64}, jvect::Ptr{Int64},
                                     icn::Ptr{Int64}, ikeep::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128}, iflag::Ref{Int64})::Cvoid
end

function ma28cr(::Type{Float32}, ::Type{Int32}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset.ma28c_(n::Ref{Int32}, a::Ptr{Float32}, licn::Ref{Int32}, icn::Ptr{Int32},
                              ikeep::Ptr{Int32}, rhs::Ptr{Float32}, w::Ptr{Float32},
                              mtype::Ref{Int32})::Cvoid
end

function ma28cr(::Type{Float64}, ::Type{Int32}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset.ma28cd_(n::Ref{Int32}, a::Ptr{Float64}, licn::Ref{Int32}, icn::Ptr{Int32},
                               ikeep::Ptr{Int32}, rhs::Ptr{Float64}, w::Ptr{Float64},
                               mtype::Ref{Int32})::Cvoid
end

function ma28cr(::Type{Float128}, ::Type{Int32}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset.ma28cq_(n::Ref{Int32}, a::Ptr{Float128}, licn::Ref{Int32}, icn::Ptr{Int32},
                               ikeep::Ptr{Int32}, rhs::Ptr{Float128}, w::Ptr{Float128},
                               mtype::Ref{Int32})::Cvoid
end

function ma28cr(::Type{Float32}, ::Type{Int64}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset_64.ma28c_64_(n::Ref{Int64}, a::Ptr{Float32}, licn::Ref{Int64},
                                    icn::Ptr{Int64}, ikeep::Ptr{Int64}, rhs::Ptr{Float32},
                                    w::Ptr{Float32}, mtype::Ref{Int64})::Cvoid
end

function ma28cr(::Type{Float64}, ::Type{Int64}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset_64.ma28cd_64_(n::Ref{Int64}, a::Ptr{Float64}, licn::Ref{Int64},
                                     icn::Ptr{Int64}, ikeep::Ptr{Int64}, rhs::Ptr{Float64},
                                     w::Ptr{Float64}, mtype::Ref{Int64})::Cvoid
end

function ma28cr(::Type{Float128}, ::Type{Int64}, n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl_subset_64.ma28cq_64_(n::Ref{Int64}, a::Ptr{Float128}, licn::Ref{Int64},
                                     icn::Ptr{Int64}, ikeep::Ptr{Int64}, rhs::Ptr{Float128},
                                     w::Ptr{Float128}, mtype::Ref{Int64})::Cvoid
end

function ma28dr(::Type{Float32}, ::Type{Int32}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset.ma28d_(n::Ref{Int32}, a::Ptr{Float32}, licn::Ref{Int32}, ivect::Ptr{Int32},
                              jvect::Ptr{Int32}, nz::Ref{Int32}, icn::Ptr{Int32}, lenr::Ptr{Int32},
                              lenrl::Ptr{Int32}, lenoff::Ptr{Int32}, ip::Ptr{Int32}, iq::Ptr{Int32},
                              iw1::Ptr{Int32}, iw::Ptr{Int32}, w1::Ref{Float32},
                              iflag::Ref{Int32})::Cvoid
end

function ma28dr(::Type{Float64}, ::Type{Int32}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset.ma28dd_(n::Ref{Int32}, a::Ptr{Float64}, licn::Ref{Int32}, ivect::Ptr{Int32},
                               jvect::Ptr{Int32}, nz::Ref{Int32}, icn::Ptr{Int32}, lenr::Ptr{Int32},
                               lenrl::Ptr{Int32}, lenoff::Ptr{Int32}, ip::Ptr{Int32},
                               iq::Ptr{Int32}, iw1::Ptr{Int32}, iw::Ptr{Int32}, w1::Ref{Float64},
                               iflag::Ref{Int32})::Cvoid
end

function ma28dr(::Type{Float128}, ::Type{Int32}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset.ma28dq_(n::Ref{Int32}, a::Ptr{Float128}, licn::Ref{Int32}, ivect::Ptr{Int32},
                               jvect::Ptr{Int32}, nz::Ref{Int32}, icn::Ptr{Int32}, lenr::Ptr{Int32},
                               lenrl::Ptr{Int32}, lenoff::Ptr{Int32}, ip::Ptr{Int32},
                               iq::Ptr{Int32}, iw1::Ptr{Int32}, iw::Ptr{Int32}, w1::Ref{Float128},
                               iflag::Ref{Int32})::Cvoid
end

function ma28dr(::Type{Float32}, ::Type{Int64}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset_64.ma28d_64_(n::Ref{Int64}, a::Ptr{Float32}, licn::Ref{Int64},
                                    ivect::Ptr{Int64}, jvect::Ptr{Int64}, nz::Ref{Int64},
                                    icn::Ptr{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    lenoff::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    iw1::Ptr{Int64}, iw::Ptr{Int64}, w1::Ref{Float32},
                                    iflag::Ref{Int64})::Cvoid
end

function ma28dr(::Type{Float64}, ::Type{Int64}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset_64.ma28dd_64_(n::Ref{Int64}, a::Ptr{Float64}, licn::Ref{Int64},
                                     ivect::Ptr{Int64}, jvect::Ptr{Int64}, nz::Ref{Int64},
                                     icn::Ptr{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     iw1::Ptr{Int64}, iw::Ptr{Int64}, w1::Ref{Float64},
                                     iflag::Ref{Int64})::Cvoid
end

function ma28dr(::Type{Float128}, ::Type{Int64}, n, a, licn, ivect, jvect, nz, icn, lenr, lenrl,
                lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl_subset_64.ma28dq_64_(n::Ref{Int64}, a::Ptr{Float128}, licn::Ref{Int64},
                                     ivect::Ptr{Int64}, jvect::Ptr{Int64}, nz::Ref{Int64},
                                     icn::Ptr{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     iw1::Ptr{Int64}, iw::Ptr{Int64}, w1::Ref{Float128},
                                     iflag::Ref{Int64})::Cvoid
end

function ma28ir(::Type{Float32}, ::Type{Int32}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset.ma28i_(n::Ref{Int32}, nz::Ref{Int32}, aorg::Ptr{Float32}, irnorg::Ptr{Int32},
                              icnorg::Ptr{Int32}, licn::Ref{Int32}, a::Ptr{Float32},
                              icn::Ptr{Int32}, ikeep::Ptr{Int32}, rhs::Ptr{Float32},
                              x::Ptr{Float32}, r::Ptr{Float32}, w::Ptr{Float32}, mtype::Ref{Int32},
                              prec::Ref{Float32}, iflag::Ref{Int32})::Cvoid
end

function ma28ir(::Type{Float64}, ::Type{Int32}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset.ma28id_(n::Ref{Int32}, nz::Ref{Int32}, aorg::Ptr{Float64},
                               irnorg::Ptr{Int32}, icnorg::Ptr{Int32}, licn::Ref{Int32},
                               a::Ptr{Float64}, icn::Ptr{Int32}, ikeep::Ptr{Int32},
                               rhs::Ptr{Float64}, x::Ptr{Float64}, r::Ptr{Float64}, w::Ptr{Float64},
                               mtype::Ref{Int32}, prec::Ref{Float64}, iflag::Ref{Int32})::Cvoid
end

function ma28ir(::Type{Float128}, ::Type{Int32}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset.ma28iq_(n::Ref{Int32}, nz::Ref{Int32}, aorg::Ptr{Float128},
                               irnorg::Ptr{Int32}, icnorg::Ptr{Int32}, licn::Ref{Int32},
                               a::Ptr{Float128}, icn::Ptr{Int32}, ikeep::Ptr{Int32},
                               rhs::Ptr{Float128}, x::Ptr{Float128}, r::Ptr{Float128},
                               w::Ptr{Float128}, mtype::Ref{Int32}, prec::Ref{Float128},
                               iflag::Ref{Int32})::Cvoid
end

function ma28ir(::Type{Float32}, ::Type{Int64}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset_64.ma28i_64_(n::Ref{Int64}, nz::Ref{Int64}, aorg::Ptr{Float32},
                                    irnorg::Ptr{Int64}, icnorg::Ptr{Int64}, licn::Ref{Int64},
                                    a::Ptr{Float32}, icn::Ptr{Int64}, ikeep::Ptr{Int64},
                                    rhs::Ptr{Float32}, x::Ptr{Float32}, r::Ptr{Float32},
                                    w::Ptr{Float32}, mtype::Ref{Int64}, prec::Ref{Float32},
                                    iflag::Ref{Int64})::Cvoid
end

function ma28ir(::Type{Float64}, ::Type{Int64}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset_64.ma28id_64_(n::Ref{Int64}, nz::Ref{Int64}, aorg::Ptr{Float64},
                                     irnorg::Ptr{Int64}, icnorg::Ptr{Int64}, licn::Ref{Int64},
                                     a::Ptr{Float64}, icn::Ptr{Int64}, ikeep::Ptr{Int64},
                                     rhs::Ptr{Float64}, x::Ptr{Float64}, r::Ptr{Float64},
                                     w::Ptr{Float64}, mtype::Ref{Int64}, prec::Ref{Float64},
                                     iflag::Ref{Int64})::Cvoid
end

function ma28ir(::Type{Float128}, ::Type{Int64}, n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep,
                rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl_subset_64.ma28iq_64_(n::Ref{Int64}, nz::Ref{Int64}, aorg::Ptr{Float128},
                                     irnorg::Ptr{Int64}, icnorg::Ptr{Int64}, licn::Ref{Int64},
                                     a::Ptr{Float128}, icn::Ptr{Int64}, ikeep::Ptr{Int64},
                                     rhs::Ptr{Float128}, x::Ptr{Float128}, r::Ptr{Float128},
                                     w::Ptr{Float128}, mtype::Ref{Int64}, prec::Ref{Float128},
                                     iflag::Ref{Int64})::Cvoid
end
