function ma27ir(::Type{Float32}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma27i_(icntl::Ptr{Int32}, cntl::Ptr{Float32})::Cvoid
end

function ma27ir(::Type{Float64}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma27id_(icntl::Ptr{Int32}, cntl::Ptr{Float64})::Cvoid
end

function ma27ir(::Type{Float128}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.ma27iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128})::Cvoid
end

function ma27ir(::Type{Float32}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma27i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function ma27ir(::Type{Float64}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma27id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function ma27ir(::Type{Float128}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.ma27iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128})::Cvoid
end

function ma27ar(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag,
                icntl, cntl, info, ops)
  @ccall libhsl_subset.ma27a_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              iw::Ptr{Int32}, liw::Ref{Int32}, ikeep::Ptr{Int32}, iw1::Ptr{Int32},
                              nsteps::Ref{Int32}, iflag::Ref{Int32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, ops::Ref{Float32})::Cvoid
end

function ma27ar(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag,
                icntl, cntl, info, ops)
  @ccall libhsl_subset.ma27ad_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, ikeep::Ptr{Int32}, iw1::Ptr{Int32},
                               nsteps::Ref{Int32}, iflag::Ref{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, info::Ptr{Int32}, ops::Ref{Float64})::Cvoid
end

function ma27ar(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps,
                iflag, icntl, cntl, info, ops)
  @ccall libhsl_subset.ma27aq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, ikeep::Ptr{Int32}, iw1::Ptr{Int32},
                               nsteps::Ref{Int32}, iflag::Ref{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float128}, info::Ptr{Int32}, ops::Ref{Float128})::Cvoid
end

function ma27ar(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag,
                icntl, cntl, info, ops)
  @ccall libhsl_subset_64.ma27a_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, ikeep::Ptr{Int64},
                                    iw1::Ptr{Int64}, nsteps::Ref{Int64}, iflag::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    ops::Ref{Float32})::Cvoid
end

function ma27ar(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag,
                icntl, cntl, info, ops)
  @ccall libhsl_subset_64.ma27ad_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     ikeep::Ptr{Int64}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                     iflag::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, ops::Ref{Float64})::Cvoid
end

function ma27ar(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps,
                iflag, icntl, cntl, info, ops)
  @ccall libhsl_subset_64.ma27aq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     ikeep::Ptr{Int64}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                     iflag::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, ops::Ref{Float128})::Cvoid
end

function ma27br(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset.ma27b_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              a::Ptr{Float32}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                              ikeep::Ptr{Int32}, nsteps::Ref{Int32}, maxfrt::Ref{Int32},
                              iw1::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float32},
                              info::Ptr{Int32})::Cvoid
end

function ma27br(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset.ma27bd_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               a::Ptr{Float64}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                               ikeep::Ptr{Int32}, nsteps::Ref{Int32}, maxfrt::Ref{Int32},
                               iw1::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               info::Ptr{Int32})::Cvoid
end

function ma27br(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset.ma27bq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               a::Ptr{Float128}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                               ikeep::Ptr{Int32}, nsteps::Ref{Int32}, maxfrt::Ref{Int32},
                               iw1::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               info::Ptr{Int32})::Cvoid
end

function ma27br(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27b_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, ikeep::Ptr{Int64}, nsteps::Ref{Int64},
                                    maxfrt::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64})::Cvoid
end

function ma27br(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27bd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, ikeep::Ptr{Int64},
                                     nsteps::Ref{Int64}, maxfrt::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64})::Cvoid
end

function ma27br(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps,
                maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27bq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, a::Ptr{Float128}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, ikeep::Ptr{Int64},
                                     nsteps::Ref{Int64}, maxfrt::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64})::Cvoid
end

function ma27cr(::Type{Float32}, ::Type{Int32}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset.ma27c_(n::Ref{Int32}, a::Ptr{Float32}, la::Ref{Int32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, w::Ptr{Float32}, maxfrt::Ref{Int32},
                              rhs::Ptr{Float32}, iw1::Ptr{Int32}, nsteps::Ref{Int32},
                              icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27cr(::Type{Float64}, ::Type{Int32}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset.ma27cd_(n::Ref{Int32}, a::Ptr{Float64}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float64}, maxfrt::Ref{Int32},
                               rhs::Ptr{Float64}, iw1::Ptr{Int32}, nsteps::Ref{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27cr(::Type{Float128}, ::Type{Int32}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset.ma27cq_(n::Ref{Int32}, a::Ptr{Float128}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float128}, maxfrt::Ref{Int32},
                               rhs::Ptr{Float128}, iw1::Ptr{Int32}, nsteps::Ref{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27cr(::Type{Float32}, ::Type{Int64}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset_64.ma27c_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfrt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27cr(::Type{Float64}, ::Type{Int64}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset_64.ma27cd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfrt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw1::Ptr{Int64}, nsteps::Ref{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27cr(::Type{Float128}, ::Type{Int64}, n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps,
                icntl, info)
  @ccall libhsl_subset_64.ma27cq_64_(n::Ref{Int64}, a::Ptr{Float128}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, w::Ptr{Float128},
                                     maxfrt::Ref{Int64}, rhs::Ptr{Float128}, iw1::Ptr{Int64},
                                     nsteps::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27gr(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma27g_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                              flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                              info::Ptr{Int32})::Cvoid
end

function ma27gr(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma27gd_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma27gr(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma27gq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma27gr(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma27g_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma27gr(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma27gd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27gr(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma27gq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27hr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma27h_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                              ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                              ncmpa::Ref{Int32}, fratio::Ref{Float32})::Cvoid
end

function ma27hr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma27hd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                               ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                               ncmpa::Ref{Int32}, fratio::Ref{Float64})::Cvoid
end

function ma27hr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma27hq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                               ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                               ncmpa::Ref{Int32}, fratio::Ref{Float128})::Cvoid
end

function ma27hr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma27h_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                    lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                    iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                    fratio::Ref{Float32})::Cvoid
end

function ma27hr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma27hd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float64})::Cvoid
end

function ma27hr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma27hq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float128})::Cvoid
end

function ma27ur(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma27u_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27ur(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma27ud_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27ur(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma27uq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27ur(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma27u_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27ur(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma27ud_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27ur(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma27uq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27jr(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma27j_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              perm::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32},
                              iq::Ptr{Int32}, flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                              info::Ptr{Int32})::Cvoid
end

function ma27jr(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma27jd_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               perm::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32},
                               iq::Ptr{Int32}, flag::Ptr{Int32}, iwfr::Ref{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27jr(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma27jq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               perm::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32},
                               iq::Ptr{Int32}, flag::Ptr{Int32}, iwfr::Ref{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27jr(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma27j_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    perm::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                    iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27jr(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma27jd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                     flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27jr(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma27jq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                     flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27kr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset.ma27k_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, ips::Ptr{Int32}, ipv::Ptr{Int32}, nv::Ptr{Int32},
                              flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27kr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset.ma27kd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ips::Ptr{Int32}, ipv::Ptr{Int32}, nv::Ptr{Int32},
                               flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27kr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset.ma27kq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ips::Ptr{Int32}, ipv::Ptr{Int32}, nv::Ptr{Int32},
                               flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma27kr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma27k_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ips::Ptr{Int64}, ipv::Ptr{Int64},
                                    nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27kr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma27kd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ips::Ptr{Int64}, ipv::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27kr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma27kq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ips::Ptr{Int64}, ipv::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma27lr(::Type{Float32}, ::Type{Int32}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset.ma27l_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                              ne::Ptr{Int32}, na::Ptr{Int32}, nd::Ptr{Int32}, nsteps::Ref{Int32},
                              nemin::Ref{Int32})::Cvoid
end

function ma27lr(::Type{Float64}, ::Type{Int32}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset.ma27ld_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                               ne::Ptr{Int32}, na::Ptr{Int32}, nd::Ptr{Int32}, nsteps::Ref{Int32},
                               nemin::Ref{Int32})::Cvoid
end

function ma27lr(::Type{Float128}, ::Type{Int32}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset.ma27lq_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                               ne::Ptr{Int32}, na::Ptr{Int32}, nd::Ptr{Int32}, nsteps::Ref{Int32},
                               nemin::Ref{Int32})::Cvoid
end

function ma27lr(::Type{Float32}, ::Type{Int64}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset_64.ma27l_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64}, ips::Ptr{Int64},
                                    ne::Ptr{Int64}, na::Ptr{Int64}, nd::Ptr{Int64},
                                    nsteps::Ref{Int64}, nemin::Ref{Int64})::Cvoid
end

function ma27lr(::Type{Float64}, ::Type{Int64}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset_64.ma27ld_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     nd::Ptr{Int64}, nsteps::Ref{Int64}, nemin::Ref{Int64})::Cvoid
end

function ma27lr(::Type{Float128}, ::Type{Int64}, n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset_64.ma27lq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     nd::Ptr{Int64}, nsteps::Ref{Int64}, nemin::Ref{Int64})::Cvoid
end

function ma27mr(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset.ma27m_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              perm::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32}, nd::Ptr{Int32},
                              nsteps::Ref{Int32}, lstki::Ptr{Int32}, lstkr::Ptr{Int32},
                              iw::Ptr{Int32}, info::Ptr{Int32}, ops::Ref{Float32})::Cvoid
end

function ma27mr(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset.ma27md_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               perm::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32}, nd::Ptr{Int32},
                               nsteps::Ref{Int32}, lstki::Ptr{Int32}, lstkr::Ptr{Int32},
                               iw::Ptr{Int32}, info::Ptr{Int32}, ops::Ref{Float64})::Cvoid
end

function ma27mr(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset.ma27mq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               perm::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32}, nd::Ptr{Int32},
                               nsteps::Ref{Int32}, lstki::Ptr{Int32}, lstkr::Ptr{Int32},
                               iw::Ptr{Int32}, info::Ptr{Int32}, ops::Ref{Float128})::Cvoid
end

function ma27mr(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset_64.ma27m_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    perm::Ptr{Int64}, na::Ptr{Int64}, ne::Ptr{Int64},
                                    nd::Ptr{Int64}, nsteps::Ref{Int64}, lstki::Ptr{Int64},
                                    lstkr::Ptr{Int64}, iw::Ptr{Int64}, info::Ptr{Int64},
                                    ops::Ref{Float32})::Cvoid
end

function ma27mr(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset_64.ma27md_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, ops::Ref{Float64})::Cvoid
end

function ma27mr(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki,
                lstkr, iw, info, ops)
  @ccall libhsl_subset_64.ma27mq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, perm::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, ops::Ref{Float128})::Cvoid
end

function ma27nr(::Type{Float32}, ::Type{Int32}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset.ma27n_(n::Ref{Int32}, nz::Ref{Int32}, nz1::Ref{Int32}, a::Ptr{Float32},
                              la::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, perm::Ptr{Int32}, iw2::Ptr{Int32}, icntl::Ptr{Int32},
                              info::Ptr{Int32})::Cvoid
end

function ma27nr(::Type{Float64}, ::Type{Int32}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset.ma27nd_(n::Ref{Int32}, nz::Ref{Int32}, nz1::Ref{Int32}, a::Ptr{Float64},
                               la::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, perm::Ptr{Int32}, iw2::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27nr(::Type{Float128}, ::Type{Int32}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset.ma27nq_(n::Ref{Int32}, nz::Ref{Int32}, nz1::Ref{Int32}, a::Ptr{Float128},
                               la::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, perm::Ptr{Int32}, iw2::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma27nr(::Type{Float32}, ::Type{Int64}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset_64.ma27n_64_(n::Ref{Int64}, nz::Ref{Int64}, nz1::Ref{Int64}, a::Ptr{Float32},
                                    la::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                    iw2::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma27nr(::Type{Float64}, ::Type{Int64}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset_64.ma27nd_64_(n::Ref{Int64}, nz::Ref{Int64}, nz1::Ref{Int64},
                                     a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     perm::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27nr(::Type{Float128}, ::Type{Int64}, n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2,
                icntl, info)
  @ccall libhsl_subset_64.ma27nq_64_(n::Ref{Int64}, nz::Ref{Int64}, nz1::Ref{Int64},
                                     a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     perm::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function ma27or(::Type{Float32}, ::Type{Int32}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset.ma27o_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, la::Ref{Int32},
                              iw::Ptr{Int32}, liw::Ref{Int32}, perm::Ptr{Int32}, nstk::Ptr{Int32},
                              nsteps::Ref{Int32}, maxfrt::Ref{Int32}, nelim::Ptr{Int32},
                              iw2::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float32},
                              info::Ptr{Int32})::Cvoid
end

function ma27or(::Type{Float64}, ::Type{Int32}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset.ma27od_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, la::Ref{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, perm::Ptr{Int32}, nstk::Ptr{Int32},
                               nsteps::Ref{Int32}, maxfrt::Ref{Int32}, nelim::Ptr{Int32},
                               iw2::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               info::Ptr{Int32})::Cvoid
end

function ma27or(::Type{Float128}, ::Type{Int32}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset.ma27oq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, la::Ref{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, perm::Ptr{Int32}, nstk::Ptr{Int32},
                               nsteps::Ref{Int32}, maxfrt::Ref{Int32}, nelim::Ptr{Int32},
                               iw2::Ptr{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               info::Ptr{Int32})::Cvoid
end

function ma27or(::Type{Float32}, ::Type{Int64}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27o_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                    nstk::Ptr{Int64}, nsteps::Ref{Int64}, maxfrt::Ref{Int64},
                                    nelim::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64})::Cvoid
end

function ma27or(::Type{Float64}, ::Type{Int64}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27od_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, perm::Ptr{Int64},
                                     nstk::Ptr{Int64}, nsteps::Ref{Int64}, maxfrt::Ref{Int64},
                                     nelim::Ptr{Int64}, iw2::Ptr{Int64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, info::Ptr{Int64})::Cvoid
end

function ma27or(::Type{Float128}, ::Type{Int64}, n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt,
                nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset_64.ma27oq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     la::Ref{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     perm::Ptr{Int64}, nstk::Ptr{Int64}, nsteps::Ref{Int64},
                                     maxfrt::Ref{Int64}, nelim::Ptr{Int64}, iw2::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64})::Cvoid
end

function ma27pr(::Type{Float32}, ::Type{Int32}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset.ma27p_(a::Ptr{Float32}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                              itop::Ref{Int32}, ireal::Ref{Int32}, ncmpbr::Ref{Int32},
                              ncmpbi::Ref{Int32})::Cvoid
end

function ma27pr(::Type{Float64}, ::Type{Int32}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset.ma27pd_(a::Ptr{Float64}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                               itop::Ref{Int32}, ireal::Ref{Int32}, ncmpbr::Ref{Int32},
                               ncmpbi::Ref{Int32})::Cvoid
end

function ma27pr(::Type{Float128}, ::Type{Int32}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset.ma27pq_(a::Ptr{Float128}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                               itop::Ref{Int32}, ireal::Ref{Int32}, ncmpbr::Ref{Int32},
                               ncmpbi::Ref{Int32})::Cvoid
end

function ma27pr(::Type{Float32}, ::Type{Int64}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset_64.ma27p_64_(a::Ptr{Float32}, iw::Ptr{Int64}, j1::Ref{Int64}, j2::Ref{Int64},
                                    itop::Ref{Int64}, ireal::Ref{Int64}, ncmpbr::Ref{Int64},
                                    ncmpbi::Ref{Int64})::Cvoid
end

function ma27pr(::Type{Float64}, ::Type{Int64}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset_64.ma27pd_64_(a::Ptr{Float64}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, ireal::Ref{Int64},
                                     ncmpbr::Ref{Int64}, ncmpbi::Ref{Int64})::Cvoid
end

function ma27pr(::Type{Float128}, ::Type{Int64}, a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset_64.ma27pq_64_(a::Ptr{Float128}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, ireal::Ref{Int64},
                                     ncmpbr::Ref{Int64}, ncmpbi::Ref{Int64})::Cvoid
end

function ma27qr(::Type{Float32}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset.ma27q_(n::Ref{Int32}, a::Ptr{Float32}, la::Ref{Int32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, w::Ptr{Float32}, maxfnt::Ref{Int32},
                              rhs::Ptr{Float32}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                              latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27qr(::Type{Float64}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset.ma27qd_(n::Ref{Int32}, a::Ptr{Float64}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float64}, maxfnt::Ref{Int32},
                               rhs::Ptr{Float64}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                               latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27qr(::Type{Float128}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk,
                latop, icntl)
  @ccall libhsl_subset.ma27qq_(n::Ref{Int32}, a::Ptr{Float128}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float128}, maxfnt::Ref{Int32},
                               rhs::Ptr{Float128}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                               latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27qr(::Type{Float32}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset_64.ma27q_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfnt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                    latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27qr(::Type{Float64}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset_64.ma27qd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfnt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                     latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27qr(::Type{Float128}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk,
                latop, icntl)
  @ccall libhsl_subset_64.ma27qq_64_(n::Ref{Int64}, a::Ptr{Float128}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, w::Ptr{Float128},
                                     maxfnt::Ref{Int64}, rhs::Ptr{Float128}, iw2::Ptr{Int64},
                                     nblk::Ref{Int64}, latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27rr(::Type{Float32}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset.ma27r_(n::Ref{Int32}, a::Ptr{Float32}, la::Ref{Int32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, w::Ptr{Float32}, maxfnt::Ref{Int32},
                              rhs::Ptr{Float32}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                              latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27rr(::Type{Float64}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset.ma27rd_(n::Ref{Int32}, a::Ptr{Float64}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float64}, maxfnt::Ref{Int32},
                               rhs::Ptr{Float64}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                               latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27rr(::Type{Float128}, ::Type{Int32}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk,
                latop, icntl)
  @ccall libhsl_subset.ma27rq_(n::Ref{Int32}, a::Ptr{Float128}, la::Ref{Int32}, iw::Ptr{Int32},
                               liw::Ref{Int32}, w::Ptr{Float128}, maxfnt::Ref{Int32},
                               rhs::Ptr{Float128}, iw2::Ptr{Int32}, nblk::Ref{Int32},
                               latop::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma27rr(::Type{Float32}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset_64.ma27r_64_(n::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, w::Ptr{Float32}, maxfnt::Ref{Int64},
                                    rhs::Ptr{Float32}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                    latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27rr(::Type{Float64}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop,
                icntl)
  @ccall libhsl_subset_64.ma27rd_64_(n::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, w::Ptr{Float64}, maxfnt::Ref{Int64},
                                     rhs::Ptr{Float64}, iw2::Ptr{Int64}, nblk::Ref{Int64},
                                     latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma27rr(::Type{Float128}, ::Type{Int64}, n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk,
                latop, icntl)
  @ccall libhsl_subset_64.ma27rq_64_(n::Ref{Int64}, a::Ptr{Float128}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, w::Ptr{Float128},
                                     maxfnt::Ref{Int64}, rhs::Ptr{Float128}, iw2::Ptr{Int64},
                                     nblk::Ref{Int64}, latop::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end
