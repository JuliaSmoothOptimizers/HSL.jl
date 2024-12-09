function ma33id(icntl, cntl)
  @ccall libhsl.ma33id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma33id_64(icntl, cntl)
  @ccall libhsl_subset_64.ma33id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function ma33ad(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr, nextr,
                lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
  @ccall libhsl.ma33ad_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                        iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint}, lenc::Ptr{Cint},
                        ifirst::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, lastc::Ptr{Cint},
                        nextc::Ptr{Cint}, iptr::Ptr{Cint}, ipc::Ptr{Cint}, u::Ref{Float64},
                        iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function ma33ad_64(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr,
                   nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
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

function ma33bd(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl, rinfo)
  @ccall libhsl.ma33bd_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                        iq::Ptr{Cint}, w::Ptr{Float64}, iw::Ptr{Cint}, iflag::Ref{Cint},
                        icntl::Ptr{Cint}, cntl::Ptr{Float64}, rinfo::Ptr{Float64})::Cvoid
end

function ma33bd_64(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset_64.ma33bd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64}, iflag::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma33cd(n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq, x, w, mtype, rinfo)
  @ccall libhsl.ma33cd_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, idisp::Ptr{Cint},
                        ip::Ptr{Cint}, iq::Ptr{Cint}, x::Ptr{Float64}, w::Ptr{Float64},
                        mtype::Ref{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma33cd_64(n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq, x, w, mtype, rinfo)
  @ccall libhsl_subset_64.ma33cd_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                     iq::Ptr{Int64}, x::Ptr{Float64}, w::Ptr{Float64},
                                     mtype::Ref{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function ma33dd(a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl.ma33dd_(a::Ptr{Float64}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint},
                        iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ma33dd_64(a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset_64.ma33dd_64_(a::Ptr{Float64}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                     n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                     reals::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma33i(icntl, cntl)
  @ccall libhsl.ma33i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma33i_64(icntl, cntl)
  @ccall libhsl_subset_64.ma33i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function ma33a(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr, nextr,
               lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
  @ccall libhsl.ma33a_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                       iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint}, lenc::Ptr{Cint},
                       ifirst::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, lastc::Ptr{Cint},
                       nextc::Ptr{Cint}, iptr::Ptr{Cint}, ipc::Ptr{Cint}, u::Ref{Float32},
                       iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function ma33a_64(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr,
                  nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
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

function ma33b(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl, rinfo)
  @ccall libhsl.ma33b_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                       iq::Ptr{Cint}, w::Ptr{Float32}, iw::Ptr{Cint}, iflag::Ref{Cint},
                       icntl::Ptr{Cint}, cntl::Ptr{Float32}, rinfo::Ptr{Float32})::Cvoid
end

function ma33b_64(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl, rinfo)
  @ccall libhsl_subset_64.ma33b_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    idisp::Ptr{Int64}, ip::Ptr{Int64}, iq::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, iflag::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    rinfo::Ptr{Float32})::Cvoid
end

function ma33c(n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq, x, w, mtype, rinfo)
  @ccall libhsl.ma33c_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, idisp::Ptr{Cint},
                       ip::Ptr{Cint}, iq::Ptr{Cint}, x::Ptr{Float32}, w::Ptr{Float32},
                       mtype::Ref{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma33c_64(n, icn, a, licn, lenr, lenrl, lenoff, idisp, ip, iq, x, w, mtype, rinfo)
  @ccall libhsl_subset_64.ma33c_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    lenoff::Ptr{Int64}, idisp::Ptr{Int64}, ip::Ptr{Int64},
                                    iq::Ptr{Int64}, x::Ptr{Float32}, w::Ptr{Float32},
                                    mtype::Ref{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma33d(a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl.ma33d_(a::Ptr{Float32}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint},
                       iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma33d_64(a, icn, iptr, n, iactiv, itop, reals, info)
  @ccall libhsl_subset_64.ma33d_64_(a::Ptr{Float32}, icn::Ptr{Int64}, iptr::Ptr{Int64},
                                    n::Ref{Int64}, iactiv::Ref{Int64}, itop::Ref{Int64},
                                    reals::Ref{Int64}, info::Ptr{Int64})::Cvoid
end
