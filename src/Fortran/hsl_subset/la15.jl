function la15ir(::Type{Float32}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.la15i_(icntl::Ptr{Int32}, cntl::Ptr{Float32}, keep::Ptr{Int32})::Cvoid
end

function la15ir(::Type{Float64}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.la15id_(icntl::Ptr{Int32}, cntl::Ptr{Float64}, keep::Ptr{Int32})::Cvoid
end

function la15ir(::Type{Float128}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.la15iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128}, keep::Ptr{Int32})::Cvoid
end

function la15ir(::Type{Float32}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15ir(::Type{Float64}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15ir(::Type{Float128}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     keep::Ptr{Int64})::Cvoid
end

function la15ar(::Type{Float32}, ::Type{Int32}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15a_(a::Ptr{Float32}, ind::Ptr{Int32}, nzero::Ref{Int32}, ia::Ref{Int32},
                              n::Ref{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32},
                              g::Ref{Float32}, u::Ref{Float32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, keep::Ptr{Int32})::Cvoid
end

function la15ar(::Type{Float64}, ::Type{Int32}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15ad_(a::Ptr{Float64}, ind::Ptr{Int32}, nzero::Ref{Int32}, ia::Ref{Int32},
                               n::Ref{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64},
                               g::Ref{Float64}, u::Ref{Float64}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, keep::Ptr{Int32})::Cvoid
end

function la15ar(::Type{Float128}, ::Type{Int32}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15aq_(a::Ptr{Float128}, ind::Ptr{Int32}, nzero::Ref{Int32}, ia::Ref{Int32},
                               n::Ref{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128},
                               g::Ref{Float128}, u::Ref{Float128}, icntl::Ptr{Int32},
                               cntl::Ptr{Float128}, keep::Ptr{Int32})::Cvoid
end

function la15ar(::Type{Float32}, ::Type{Int64}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15a_64_(a::Ptr{Float32}, ind::Ptr{Int64}, nzero::Ref{Int64},
                                    ia::Ref{Int64}, n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32}, g::Ref{Float32}, u::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15ar(::Type{Float64}, ::Type{Int64}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15ad_64_(a::Ptr{Float64}, ind::Ptr{Int64}, nzero::Ref{Int64},
                                     ia::Ref{Int64}, n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64}, g::Ref{Float64}, u::Ref{Float64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15ar(::Type{Float128}, ::Type{Int64}, a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15aq_64_(a::Ptr{Float128}, ind::Ptr{Int64}, nzero::Ref{Int64},
                                     ia::Ref{Int64}, n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128}, g::Ref{Float128}, u::Ref{Float128},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     keep::Ptr{Int64})::Cvoid
end

function la15br(::Type{Float32}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset.la15b_(a::Ptr{Float32}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                              ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32}, g::Ref{Float32},
                              b::Ptr{Float32}, trans::Ref{Cint}, icntl::Ptr{Int32},
                              keep::Ptr{Int32})::Cvoid
end

function la15br(::Type{Float64}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset.la15bd_(a::Ptr{Float64}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64}, g::Ref{Float64},
                               b::Ptr{Float64}, trans::Ref{Cint}, icntl::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function la15br(::Type{Float128}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset.la15bq_(a::Ptr{Float128}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128}, g::Ref{Float128},
                               b::Ptr{Float128}, trans::Ref{Cint}, icntl::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function la15br(::Type{Float32}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset_64.la15b_64_(a::Ptr{Float32}, ind::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    g::Ref{Float32}, b::Ptr{Float32}, trans::Ref{Cint},
                                    icntl::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function la15br(::Type{Float64}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset_64.la15bd_64_(a::Ptr{Float64}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     g::Ref{Float64}, b::Ptr{Float64}, trans::Ref{Cint},
                                     icntl::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function la15br(::Type{Float128}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset_64.la15bq_64_(a::Ptr{Float128}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128}, g::Ref{Float128}, b::Ptr{Float128},
                                     trans::Ref{Cint}, icntl::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function la15cr(::Type{Float32}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15c_(a::Ptr{Float32}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                              ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32}, g::Ref{Float32},
                              u::Ref{Float32}, mm::Ref{Int32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, keep::Ptr{Int32})::Cvoid
end

function la15cr(::Type{Float64}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15cd_(a::Ptr{Float64}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64}, g::Ref{Float64},
                               u::Ref{Float64}, mm::Ref{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, keep::Ptr{Int32})::Cvoid
end

function la15cr(::Type{Float128}, ::Type{Int32}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset.la15cq_(a::Ptr{Float128}, ind::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128}, g::Ref{Float128},
                               u::Ref{Float128}, mm::Ref{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float128}, keep::Ptr{Int32})::Cvoid
end

function la15cr(::Type{Float32}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15c_64_(a::Ptr{Float32}, ind::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    g::Ref{Float32}, u::Ref{Float32}, mm::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15cr(::Type{Float64}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15cd_64_(a::Ptr{Float64}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     g::Ref{Float64}, u::Ref{Float64}, mm::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15cr(::Type{Float128}, ::Type{Int64}, a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl,
                keep)
  @ccall libhsl_subset_64.la15cq_64_(a::Ptr{Float128}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128}, g::Ref{Float128}, u::Ref{Float128},
                                     mm::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     keep::Ptr{Int64})::Cvoid
end

function la15er(::Type{Float32}, ::Type{Int32}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset.la15e_(a::Ptr{Float32}, irn::Ptr{Int32}, ip::Ptr{Int32}, n::Ref{Int32},
                              iw::Ptr{Int32}, ia::Ref{Int32}, reals::Ref{Cint}, ncp::Ref{Int32},
                              lrow::Ref{Int32}, lcol::Ref{Int32})::Cvoid
end

function la15er(::Type{Float64}, ::Type{Int32}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset.la15ed_(a::Ptr{Float64}, irn::Ptr{Int32}, ip::Ptr{Int32}, n::Ref{Int32},
                               iw::Ptr{Int32}, ia::Ref{Int32}, reals::Ref{Cint}, ncp::Ref{Int32},
                               lrow::Ref{Int32}, lcol::Ref{Int32})::Cvoid
end

function la15er(::Type{Float128}, ::Type{Int32}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset.la15eq_(a::Ptr{Float128}, irn::Ptr{Int32}, ip::Ptr{Int32}, n::Ref{Int32},
                               iw::Ptr{Int32}, ia::Ref{Int32}, reals::Ref{Cint}, ncp::Ref{Int32},
                               lrow::Ref{Int32}, lcol::Ref{Int32})::Cvoid
end

function la15er(::Type{Float32}, ::Type{Int64}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset_64.la15e_64_(a::Ptr{Float32}, irn::Ptr{Int64}, ip::Ptr{Int64}, n::Ref{Int64},
                                    iw::Ptr{Int64}, ia::Ref{Int64}, reals::Ref{Cint},
                                    ncp::Ref{Int64}, lrow::Ref{Int64}, lcol::Ref{Int64})::Cvoid
end

function la15er(::Type{Float64}, ::Type{Int64}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset_64.la15ed_64_(a::Ptr{Float64}, irn::Ptr{Int64}, ip::Ptr{Int64},
                                     n::Ref{Int64}, iw::Ptr{Int64}, ia::Ref{Int64},
                                     reals::Ref{Cint}, ncp::Ref{Int64}, lrow::Ref{Int64},
                                     lcol::Ref{Int64})::Cvoid
end

function la15er(::Type{Float128}, ::Type{Int64}, a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset_64.la15eq_64_(a::Ptr{Float128}, irn::Ptr{Int64}, ip::Ptr{Int64},
                                     n::Ref{Int64}, iw::Ptr{Int64}, ia::Ref{Int64},
                                     reals::Ref{Cint}, ncp::Ref{Int64}, lrow::Ref{Int64},
                                     lcol::Ref{Int64})::Cvoid
end
