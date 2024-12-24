function ma61ir(::Type{Float32}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.ma61i_(icntl::Ptr{Int32}, cntl::Ptr{Float32}, keep::Ptr{Int32})::Cvoid
end

function ma61ir(::Type{Float64}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.ma61id_(icntl::Ptr{Int32}, cntl::Ptr{Float64}, keep::Ptr{Int32})::Cvoid
end

function ma61ir(::Type{Float128}, ::Type{Int32}, icntl, cntl, keep)
  @ccall libhsl_subset.ma61iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128}, keep::Ptr{Int32})::Cvoid
end

function ma61ir(::Type{Float32}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function ma61ir(::Type{Float64}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function ma61ir(::Type{Float128}, ::Type{Int64}, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     keep::Ptr{Int64})::Cvoid
end

function ma61ar(::Type{Float32}, ::Type{Int32}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset.ma61a_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, ini::Ptr{Int32},
                              inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32},
                              iw::Ptr{Int32}, w::Ptr{Float32}, c::Ref{Float32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, keep::Ptr{Int32})::Cvoid
end

function ma61ar(::Type{Float64}, ::Type{Int32}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset.ma61ad_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32},
                               iw::Ptr{Int32}, w::Ptr{Float64}, c::Ref{Float64}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, info::Ptr{Int32}, keep::Ptr{Int32})::Cvoid
end

function ma61ar(::Type{Float128}, ::Type{Int32}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset.ma61aq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32},
                               iw::Ptr{Int32}, w::Ptr{Float128}, c::Ref{Float128},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function ma61ar(::Type{Float32}, ::Type{Int64}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset_64.ma61a_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iai::Ref{Int64}, iaj::Ref{Int64},
                                    ik::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    c::Ref{Float32}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61ar(::Type{Float64}, ::Type{Int64}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset_64.ma61ad_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iai::Ref{Int64},
                                     iaj::Ref{Int64}, ik::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64}, c::Ref{Float64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61ar(::Type{Float128}, ::Type{Int64}, n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl,
                cntl, info, keep)
  @ccall libhsl_subset_64.ma61aq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iai::Ref{Int64},
                                     iaj::Ref{Int64}, ik::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float128}, c::Ref{Float128}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float128}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61cr(::Type{Float32}, ::Type{Int32}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset.ma61c_(n::Ref{Int32}, nz::Ref{Int32}, d::Ptr{Float32}, a::Ptr{Float32},
                              ini::Ptr{Int32}, inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32},
                              ik::Ptr{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float32},
                              iflag::Ref{Int32}, c::Ref{Float32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, keep::Ptr{Int32})::Cvoid
end

function ma61cr(::Type{Float64}, ::Type{Int32}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset.ma61cd_(n::Ref{Int32}, nz::Ref{Int32}, d::Ptr{Float64}, a::Ptr{Float64},
                               ini::Ptr{Int32}, inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32},
                               ik::Ptr{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float64},
                               iflag::Ref{Int32}, c::Ref{Float64}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, keep::Ptr{Int32})::Cvoid
end

function ma61cr(::Type{Float128}, ::Type{Int32}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset.ma61cq_(n::Ref{Int32}, nz::Ref{Int32}, d::Ptr{Float128}, a::Ptr{Float128},
                               ini::Ptr{Int32}, inj::Ptr{Int32}, iai::Ref{Int32}, iaj::Ref{Int32},
                               ik::Ptr{Int32}, ip::Ptr{Int32}, iw::Ptr{Int32}, w::Ptr{Float128},
                               iflag::Ref{Int32}, c::Ref{Float128}, icntl::Ptr{Int32},
                               cntl::Ptr{Float128}, keep::Ptr{Int32})::Cvoid
end

function ma61cr(::Type{Float32}, ::Type{Int64}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61c_64_(n::Ref{Int64}, nz::Ref{Int64}, d::Ptr{Float32}, a::Ptr{Float32},
                                    ini::Ptr{Int64}, inj::Ptr{Int64}, iai::Ref{Int64},
                                    iaj::Ref{Int64}, ik::Ptr{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32}, iflag::Ref{Int64}, c::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function ma61cr(::Type{Float64}, ::Type{Int64}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61cd_64_(n::Ref{Int64}, nz::Ref{Int64}, d::Ptr{Float64},
                                     a::Ptr{Float64}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     iai::Ref{Int64}, iaj::Ref{Int64}, ik::Ptr{Int64},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     iflag::Ref{Int64}, c::Ref{Float64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function ma61cr(::Type{Float128}, ::Type{Int64}, n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w,
                iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61cq_64_(n::Ref{Int64}, nz::Ref{Int64}, d::Ptr{Float128},
                                     a::Ptr{Float128}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     iai::Ref{Int64}, iaj::Ref{Int64}, ik::Ptr{Int64},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float128},
                                     iflag::Ref{Int64}, c::Ref{Float128}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float128}, keep::Ptr{Int64})::Cvoid
end

function ma61dr(::Type{Float32}, ::Type{Int32}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset.ma61d_(a::Ptr{Float32}, irn::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                              ik::Ptr{Int32}, ip::Ptr{Int32}, row::Ref{Cint}, ncp::Ref{Int32},
                              nucl::Ref{Int32}, nual::Ref{Int32})::Cvoid
end

function ma61dr(::Type{Float64}, ::Type{Int32}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset.ma61dd_(a::Ptr{Float64}, irn::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ik::Ptr{Int32}, ip::Ptr{Int32}, row::Ref{Cint}, ncp::Ref{Int32},
                               nucl::Ref{Int32}, nual::Ref{Int32})::Cvoid
end

function ma61dr(::Type{Float128}, ::Type{Int32}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset.ma61dq_(a::Ptr{Float128}, irn::Ptr{Int32}, ia::Ref{Int32}, n::Ref{Int32},
                               ik::Ptr{Int32}, ip::Ptr{Int32}, row::Ref{Cint}, ncp::Ref{Int32},
                               nucl::Ref{Int32}, nual::Ref{Int32})::Cvoid
end

function ma61dr(::Type{Float32}, ::Type{Int64}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset_64.ma61d_64_(a::Ptr{Float32}, irn::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ik::Ptr{Int64}, ip::Ptr{Int64}, row::Ref{Cint}, ncp::Ref{Int64},
                                    nucl::Ref{Int64}, nual::Ref{Int64})::Cvoid
end

function ma61dr(::Type{Float64}, ::Type{Int64}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset_64.ma61dd_64_(a::Ptr{Float64}, irn::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ik::Ptr{Int64}, ip::Ptr{Int64}, row::Ref{Cint},
                                     ncp::Ref{Int64}, nucl::Ref{Int64}, nual::Ref{Int64})::Cvoid
end

function ma61dr(::Type{Float128}, ::Type{Int64}, a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset_64.ma61dq_64_(a::Ptr{Float128}, irn::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ik::Ptr{Int64}, ip::Ptr{Int64}, row::Ref{Cint},
                                     ncp::Ref{Int64}, nucl::Ref{Int64}, nual::Ref{Int64})::Cvoid
end

function ma61er(::Type{Float32}, ::Type{Int32}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset.ma61e_(in1::Ptr{Int32}, in2::Ptr{Int32}, nz::Ref{Int32}, ip::Ptr{Int32},
                              n::Ref{Int32}, a::Ptr{Float32})::Cvoid
end

function ma61er(::Type{Float64}, ::Type{Int32}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset.ma61ed_(in1::Ptr{Int32}, in2::Ptr{Int32}, nz::Ref{Int32}, ip::Ptr{Int32},
                               n::Ref{Int32}, a::Ptr{Float64})::Cvoid
end

function ma61er(::Type{Float128}, ::Type{Int32}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset.ma61eq_(in1::Ptr{Int32}, in2::Ptr{Int32}, nz::Ref{Int32}, ip::Ptr{Int32},
                               n::Ref{Int32}, a::Ptr{Float128})::Cvoid
end

function ma61er(::Type{Float32}, ::Type{Int64}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset_64.ma61e_64_(in1::Ptr{Int64}, in2::Ptr{Int64}, nz::Ref{Int64},
                                    ip::Ptr{Int64}, n::Ref{Int64}, a::Ptr{Float32})::Cvoid
end

function ma61er(::Type{Float64}, ::Type{Int64}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset_64.ma61ed_64_(in1::Ptr{Int64}, in2::Ptr{Int64}, nz::Ref{Int64},
                                     ip::Ptr{Int64}, n::Ref{Int64}, a::Ptr{Float64})::Cvoid
end

function ma61er(::Type{Float128}, ::Type{Int64}, in1, in2, nz, ip, n, a)
  @ccall libhsl_subset_64.ma61eq_64_(in1::Ptr{Int64}, in2::Ptr{Int64}, nz::Ref{Int64},
                                     ip::Ptr{Int64}, n::Ref{Int64}, a::Ptr{Float128})::Cvoid
end

function ma61gr(::Type{Float32}, ::Type{Int32}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset.ma61g_(n::Ref{Int32}, a::Ptr{Float32}, inj::Ptr{Int32}, iaj::Ref{Int32},
                              d::Ptr{Float32}, ik::Ptr{Int32}, b::Ptr{Float32},
                              lrow::Ref{Int32})::Cvoid
end

function ma61gr(::Type{Float64}, ::Type{Int32}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset.ma61gd_(n::Ref{Int32}, a::Ptr{Float64}, inj::Ptr{Int32}, iaj::Ref{Int32},
                               d::Ptr{Float64}, ik::Ptr{Int32}, b::Ptr{Float64},
                               lrow::Ref{Int32})::Cvoid
end

function ma61gr(::Type{Float128}, ::Type{Int32}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset.ma61gq_(n::Ref{Int32}, a::Ptr{Float128}, inj::Ptr{Int32}, iaj::Ref{Int32},
                               d::Ptr{Float128}, ik::Ptr{Int32}, b::Ptr{Float128},
                               lrow::Ref{Int32})::Cvoid
end

function ma61gr(::Type{Float32}, ::Type{Int64}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset_64.ma61g_64_(n::Ref{Int64}, a::Ptr{Float32}, inj::Ptr{Int64},
                                    iaj::Ref{Int64}, d::Ptr{Float32}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, lrow::Ref{Int64})::Cvoid
end

function ma61gr(::Type{Float64}, ::Type{Int64}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset_64.ma61gd_64_(n::Ref{Int64}, a::Ptr{Float64}, inj::Ptr{Int64},
                                     iaj::Ref{Int64}, d::Ptr{Float64}, ik::Ptr{Int64},
                                     b::Ptr{Float64}, lrow::Ref{Int64})::Cvoid
end

function ma61gr(::Type{Float128}, ::Type{Int64}, n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset_64.ma61gq_64_(n::Ref{Int64}, a::Ptr{Float128}, inj::Ptr{Int64},
                                     iaj::Ref{Int64}, d::Ptr{Float128}, ik::Ptr{Int64},
                                     b::Ptr{Float128}, lrow::Ref{Int64})::Cvoid
end

function ma61br(::Type{Float32}, ::Type{Int32}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset.ma61b_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, ini::Ptr{Int32},
                              inj::Ptr{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32}, b::Ptr{Float32},
                              w::Ptr{Float32}, w1::Ptr{Float32}, kmax::Ptr{Int32},
                              eps::Ptr{Float32}, icntl::Ptr{Int32}, info::Ptr{Int32},
                              keep::Ptr{Int32})::Cvoid
end

function ma61br(::Type{Float64}, ::Type{Int32}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset.ma61bd_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32}, b::Ptr{Float64},
                               w::Ptr{Float64}, w1::Ptr{Float64}, kmax::Ptr{Int32},
                               eps::Ptr{Float64}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function ma61br(::Type{Float128}, ::Type{Int32}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset.ma61bq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iaj::Ref{Int32}, ik::Ptr{Int32}, b::Ptr{Float128},
                               w::Ptr{Float128}, w1::Ptr{Float128}, kmax::Ptr{Int32},
                               eps::Ptr{Float128}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function ma61br(::Type{Float32}, ::Type{Int64}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset_64.ma61b_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iaj::Ref{Int64}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, w::Ptr{Float32}, w1::Ptr{Float32},
                                    kmax::Ptr{Int64}, eps::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61br(::Type{Float64}, ::Type{Int64}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset_64.ma61bd_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaj::Ref{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float64}, w::Ptr{Float64},
                                     w1::Ptr{Float64}, kmax::Ptr{Int64}, eps::Ptr{Float64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61br(::Type{Float128}, ::Type{Int64}, n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps,
                icntl, info, keep)
  @ccall libhsl_subset_64.ma61bq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaj::Ref{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float128}, w::Ptr{Float128},
                                     w1::Ptr{Float128}, kmax::Ptr{Int64}, eps::Ptr{Float128},
                                     icntl::Ptr{Int64}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61fr(::Type{Float32}, ::Type{Int32}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset.ma61f_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float32}, ini::Ptr{Int32},
                              inj::Ptr{Int32}, iaf::Ref{Int32}, af::Ptr{Float32}, df::Ptr{Float32},
                              injf::Ptr{Int32}, ik::Ptr{Int32}, b::Ptr{Float32}, r::Ptr{Float32},
                              e::Ptr{Float32}, f::Ptr{Float32}, g::Ptr{Float32}, kmax::Ref{Int32},
                              eps::Ref{Float32}, lrow::Ref{Int32})::Cvoid
end

function ma61fr(::Type{Float64}, ::Type{Int32}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset.ma61fd_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float64}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iaf::Ref{Int32}, af::Ptr{Float64}, df::Ptr{Float64},
                               injf::Ptr{Int32}, ik::Ptr{Int32}, b::Ptr{Float64}, r::Ptr{Float64},
                               e::Ptr{Float64}, f::Ptr{Float64}, g::Ptr{Float64}, kmax::Ref{Int32},
                               eps::Ref{Float64}, lrow::Ref{Int32})::Cvoid
end

function ma61fr(::Type{Float128}, ::Type{Int32}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset.ma61fq_(n::Ref{Int32}, nz::Ref{Int32}, a::Ptr{Float128}, ini::Ptr{Int32},
                               inj::Ptr{Int32}, iaf::Ref{Int32}, af::Ptr{Float128},
                               df::Ptr{Float128}, injf::Ptr{Int32}, ik::Ptr{Int32},
                               b::Ptr{Float128}, r::Ptr{Float128}, e::Ptr{Float128},
                               f::Ptr{Float128}, g::Ptr{Float128}, kmax::Ref{Int32},
                               eps::Ref{Float128}, lrow::Ref{Int32})::Cvoid
end

function ma61fr(::Type{Float32}, ::Type{Int64}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset_64.ma61f_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iaf::Ref{Int64}, af::Ptr{Float32},
                                    df::Ptr{Float32}, injf::Ptr{Int64}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, r::Ptr{Float32}, e::Ptr{Float32},
                                    f::Ptr{Float32}, g::Ptr{Float32}, kmax::Ref{Int64},
                                    eps::Ref{Float32}, lrow::Ref{Int64})::Cvoid
end

function ma61fr(::Type{Float64}, ::Type{Int64}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset_64.ma61fd_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaf::Ref{Int64},
                                     af::Ptr{Float64}, df::Ptr{Float64}, injf::Ptr{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float64}, r::Ptr{Float64},
                                     e::Ptr{Float64}, f::Ptr{Float64}, g::Ptr{Float64},
                                     kmax::Ref{Int64}, eps::Ref{Float64}, lrow::Ref{Int64})::Cvoid
end

function ma61fr(::Type{Float128}, ::Type{Int64}, n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e,
                f, g, kmax, eps, lrow)
  @ccall libhsl_subset_64.ma61fq_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float128},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaf::Ref{Int64},
                                     af::Ptr{Float128}, df::Ptr{Float128}, injf::Ptr{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float128}, r::Ptr{Float128},
                                     e::Ptr{Float128}, f::Ptr{Float128}, g::Ptr{Float128},
                                     kmax::Ref{Int64}, eps::Ref{Float128}, lrow::Ref{Int64})::Cvoid
end

function ma61hr(::Type{Float32}, ::Type{Int32}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset.ma61h_(a::Ptr{Float32}, ini::Ptr{Int32}, inj::Ptr{Int32}, nz::Ref{Int32},
                              n::Ref{Int32}, b::Ptr{Float32}, z::Ptr{Float32})::Cvoid
end

function ma61hr(::Type{Float64}, ::Type{Int32}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset.ma61hd_(a::Ptr{Float64}, ini::Ptr{Int32}, inj::Ptr{Int32}, nz::Ref{Int32},
                               n::Ref{Int32}, b::Ptr{Float64}, z::Ptr{Float64})::Cvoid
end

function ma61hr(::Type{Float128}, ::Type{Int32}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset.ma61hq_(a::Ptr{Float128}, ini::Ptr{Int32}, inj::Ptr{Int32}, nz::Ref{Int32},
                               n::Ref{Int32}, b::Ptr{Float128}, z::Ptr{Float128})::Cvoid
end

function ma61hr(::Type{Float32}, ::Type{Int64}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset_64.ma61h_64_(a::Ptr{Float32}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                    nz::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    z::Ptr{Float32})::Cvoid
end

function ma61hr(::Type{Float64}, ::Type{Int64}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset_64.ma61hd_64_(a::Ptr{Float64}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     nz::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     z::Ptr{Float64})::Cvoid
end

function ma61hr(::Type{Float128}, ::Type{Int64}, a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset_64.ma61hq_64_(a::Ptr{Float128}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     nz::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     z::Ptr{Float128})::Cvoid
end
