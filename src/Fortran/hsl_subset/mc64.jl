function mc64ir(::Type{Float32}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc64i_(icntl::Ptr{Int32})::Cvoid
end

function mc64ir(::Type{Float64}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc64id_(icntl::Ptr{Int32})::Cvoid
end

function mc64ir(::Type{Float128}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc64iq_(icntl::Ptr{Int32})::Cvoid
end

function mc64ir(::Type{Float32}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc64i_64_(icntl::Ptr{Int64})::Cvoid
end

function mc64ir(::Type{Float64}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc64id_64_(icntl::Ptr{Int64})::Cvoid
end

function mc64ir(::Type{Float128}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc64iq_64_(icntl::Ptr{Int64})::Cvoid
end

function mc64ar(::Type{Float32}, ::Type{Int32}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset.mc64a_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, num::Ref{Int32}, cperm::Ptr{Int32},
                              liw::Ref{Int32}, iw::Ptr{Int32}, ldw::Ref{Int32}, dw::Ptr{Float32},
                              icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc64ar(::Type{Float64}, ::Type{Int32}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset.mc64ad_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, num::Ref{Int32}, cperm::Ptr{Int32},
                               liw::Ref{Int32}, iw::Ptr{Int32}, ldw::Ref{Int32}, dw::Ptr{Float64},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc64ar(::Type{Float128}, ::Type{Int32}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset.mc64aq_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, num::Ref{Int32},
                               cperm::Ptr{Int32}, liw::Ref{Int32}, iw::Ptr{Int32}, ldw::Ref{Int32},
                               dw::Ptr{Float128}, icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc64ar(::Type{Float32}, ::Type{Int64}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset_64.mc64a_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, num::Ref{Int64},
                                    cperm::Ptr{Int64}, liw::Ref{Int64}, iw::Ptr{Int64},
                                    ldw::Ref{Int64}, dw::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function mc64ar(::Type{Float64}, ::Type{Int64}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset_64.mc64ad_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, num::Ref{Int64},
                                     cperm::Ptr{Int64}, liw::Ref{Int64}, iw::Ptr{Int64},
                                     ldw::Ref{Int64}, dw::Ptr{Float64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc64ar(::Type{Float128}, ::Type{Int64}, job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw,
                dw, icntl, info)
  @ccall libhsl_subset_64.mc64aq_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, num::Ref{Int64},
                                     cperm::Ptr{Int64}, liw::Ref{Int64}, iw::Ptr{Int64},
                                     ldw::Ref{Int64}, dw::Ptr{Float128}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc64br(::Type{Float32}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset.mc64b_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, iperm::Ptr{Int32}, num::Ref{Int32},
                              jperm::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32}, l::Ptr{Int32},
                              d::Ptr{Float32})::Cvoid
end

function mc64br(::Type{Float64}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset.mc64bd_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, iperm::Ptr{Int32}, num::Ref{Int32},
                               jperm::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32}, l::Ptr{Int32},
                               d::Ptr{Float64})::Cvoid
end

function mc64br(::Type{Float128}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset.mc64bq_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, iperm::Ptr{Int32}, num::Ref{Int32},
                               jperm::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32}, l::Ptr{Int32},
                               d::Ptr{Float128})::Cvoid
end

function mc64br(::Type{Float32}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset_64.mc64b_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    jperm::Ptr{Int64}, pr::Ptr{Int64}, q::Ptr{Int64}, l::Ptr{Int64},
                                    d::Ptr{Float32})::Cvoid
end

function mc64br(::Type{Float64}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset_64.mc64bd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, pr::Ptr{Int64}, q::Ptr{Int64},
                                     l::Ptr{Int64}, d::Ptr{Float64})::Cvoid
end

function mc64br(::Type{Float128}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset_64.mc64bq_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float128}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, pr::Ptr{Int64}, q::Ptr{Int64},
                                     l::Ptr{Int64}, d::Ptr{Float128})::Cvoid
end

function mc64dr(::Type{Float32}, ::Type{Int32}, i, n, q, d, l, iway)
  @ccall libhsl_subset.mc64d_(i::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float32},
                              l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64dr(::Type{Float64}, ::Type{Int32}, i, n, q, d, l, iway)
  @ccall libhsl_subset.mc64dd_(i::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float64},
                               l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64dr(::Type{Float128}, ::Type{Int32}, i, n, q, d, l, iway)
  @ccall libhsl_subset.mc64dq_(i::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float128},
                               l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64dr(::Type{Float32}, ::Type{Int64}, i, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64d_64_(i::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float32},
                                    l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64dr(::Type{Float64}, ::Type{Int64}, i, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64dd_64_(i::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float64},
                                     l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64dr(::Type{Float128}, ::Type{Int64}, i, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64dq_64_(i::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float128},
                                     l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64er(::Type{Float32}, ::Type{Int32}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64e_(qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float32},
                              l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64er(::Type{Float64}, ::Type{Int32}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64ed_(qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float64},
                               l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64er(::Type{Float128}, ::Type{Int32}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64eq_(qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32}, d::Ptr{Float128},
                               l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64er(::Type{Float32}, ::Type{Int64}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64e_64_(qlen::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float32},
                                    l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64er(::Type{Float64}, ::Type{Int64}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64ed_64_(qlen::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64},
                                     d::Ptr{Float64}, l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64er(::Type{Float128}, ::Type{Int64}, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64eq_64_(qlen::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64},
                                     d::Ptr{Float128}, l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64fr(::Type{Float32}, ::Type{Int32}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64f_(pos0::Ref{Int32}, qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32},
                              d::Ptr{Float32}, l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64fr(::Type{Float64}, ::Type{Int32}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64fd_(pos0::Ref{Int32}, qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32},
                               d::Ptr{Float64}, l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64fr(::Type{Float128}, ::Type{Int32}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset.mc64fq_(pos0::Ref{Int32}, qlen::Ref{Int32}, n::Ref{Int32}, q::Ptr{Int32},
                               d::Ptr{Float128}, l::Ptr{Int32}, iway::Ref{Int32})::Cvoid
end

function mc64fr(::Type{Float32}, ::Type{Int64}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64f_64_(pos0::Ref{Int64}, qlen::Ref{Int64}, n::Ref{Int64},
                                    q::Ptr{Int64}, d::Ptr{Float32}, l::Ptr{Int64},
                                    iway::Ref{Int64})::Cvoid
end

function mc64fr(::Type{Float64}, ::Type{Int64}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64fd_64_(pos0::Ref{Int64}, qlen::Ref{Int64}, n::Ref{Int64},
                                     q::Ptr{Int64}, d::Ptr{Float64}, l::Ptr{Int64},
                                     iway::Ref{Int64})::Cvoid
end

function mc64fr(::Type{Float128}, ::Type{Int64}, pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64fq_64_(pos0::Ref{Int64}, qlen::Ref{Int64}, n::Ref{Int64},
                                     q::Ptr{Int64}, d::Ptr{Float128}, l::Ptr{Int64},
                                     iway::Ref{Int64})::Cvoid
end

function mc64rr(::Type{Float32}, ::Type{Int32}, n, ne, ip, irn, a)
  @ccall libhsl_subset.mc64r_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32})::Cvoid
end

function mc64rr(::Type{Float64}, ::Type{Int32}, n, ne, ip, irn, a)
  @ccall libhsl_subset.mc64rd_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64})::Cvoid
end

function mc64rr(::Type{Float128}, ::Type{Int32}, n, ne, ip, irn, a)
  @ccall libhsl_subset.mc64rq_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128})::Cvoid
end

function mc64rr(::Type{Float32}, ::Type{Int64}, n, ne, ip, irn, a)
  @ccall libhsl_subset_64.mc64r_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32})::Cvoid
end

function mc64rr(::Type{Float64}, ::Type{Int64}, n, ne, ip, irn, a)
  @ccall libhsl_subset_64.mc64rd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64})::Cvoid
end

function mc64rr(::Type{Float128}, ::Type{Int64}, n, ne, ip, irn, a)
  @ccall libhsl_subset_64.mc64rq_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float128})::Cvoid
end

function mc64sr(::Type{Float32}, ::Type{Int32}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset.mc64s_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, iperm::Ptr{Int32}, numx::Ref{Int32}, w::Ptr{Int32},
                              len::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, fc::Ptr{Int32},
                              iw::Ptr{Int32}, iw4::Ptr{Int32})::Cvoid
end

function mc64sr(::Type{Float64}, ::Type{Int32}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset.mc64sd_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, iperm::Ptr{Int32}, numx::Ref{Int32}, w::Ptr{Int32},
                               len::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, fc::Ptr{Int32},
                               iw::Ptr{Int32}, iw4::Ptr{Int32})::Cvoid
end

function mc64sr(::Type{Float128}, ::Type{Int32}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset.mc64sq_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, iperm::Ptr{Int32}, numx::Ref{Int32}, w::Ptr{Int32},
                               len::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, fc::Ptr{Int32},
                               iw::Ptr{Int32}, iw4::Ptr{Int32})::Cvoid
end

function mc64sr(::Type{Float32}, ::Type{Int64}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset_64.mc64s_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, numx::Ref{Int64},
                                    w::Ptr{Int64}, len::Ptr{Int64}, lenl::Ptr{Int64},
                                    lenh::Ptr{Int64}, fc::Ptr{Int64}, iw::Ptr{Int64},
                                    iw4::Ptr{Int64})::Cvoid
end

function mc64sr(::Type{Float64}, ::Type{Int64}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset_64.mc64sd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, numx::Ref{Int64},
                                     w::Ptr{Int64}, len::Ptr{Int64}, lenl::Ptr{Int64},
                                     lenh::Ptr{Int64}, fc::Ptr{Int64}, iw::Ptr{Int64},
                                     iw4::Ptr{Int64})::Cvoid
end

function mc64sr(::Type{Float128}, ::Type{Int64}, n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh,
                fc, iw, iw4)
  @ccall libhsl_subset_64.mc64sq_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float128}, iperm::Ptr{Int64}, numx::Ref{Int64},
                                     w::Ptr{Int64}, len::Ptr{Int64}, lenl::Ptr{Int64},
                                     lenh::Ptr{Int64}, fc::Ptr{Int64}, iw::Ptr{Int64},
                                     iw4::Ptr{Int64})::Cvoid
end

function mc64qr(::Type{Float32}, ::Type{Int32}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset.mc64q_(ip::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, w::Ptr{Int32},
                              wlen::Ref{Int32}, a::Ptr{Float32}, nval::Ref{Int32},
                              val::Ref{Float32})::Cvoid
end

function mc64qr(::Type{Float64}, ::Type{Int32}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset.mc64qd_(ip::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, w::Ptr{Int32},
                               wlen::Ref{Int32}, a::Ptr{Float64}, nval::Ref{Int32},
                               val::Ref{Float64})::Cvoid
end

function mc64qr(::Type{Float128}, ::Type{Int32}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset.mc64qq_(ip::Ptr{Int32}, lenl::Ptr{Int32}, lenh::Ptr{Int32}, w::Ptr{Int32},
                               wlen::Ref{Int32}, a::Ptr{Float128}, nval::Ref{Int32},
                               val::Ref{Float128})::Cvoid
end

function mc64qr(::Type{Float32}, ::Type{Int64}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset_64.mc64q_64_(ip::Ptr{Int64}, lenl::Ptr{Int64}, lenh::Ptr{Int64},
                                    w::Ptr{Int64}, wlen::Ref{Int64}, a::Ptr{Float32},
                                    nval::Ref{Int64}, val::Ref{Float32})::Cvoid
end

function mc64qr(::Type{Float64}, ::Type{Int64}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset_64.mc64qd_64_(ip::Ptr{Int64}, lenl::Ptr{Int64}, lenh::Ptr{Int64},
                                     w::Ptr{Int64}, wlen::Ref{Int64}, a::Ptr{Float64},
                                     nval::Ref{Int64}, val::Ref{Float64})::Cvoid
end

function mc64qr(::Type{Float128}, ::Type{Int64}, ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset_64.mc64qq_64_(ip::Ptr{Int64}, lenl::Ptr{Int64}, lenh::Ptr{Int64},
                                     w::Ptr{Int64}, wlen::Ref{Int64}, a::Ptr{Float128},
                                     nval::Ref{Int64}, val::Ref{Float128})::Cvoid
end

function mc64ur(::Type{Float32}, ::Type{Int32}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset.mc64u_(id::Ref{Int32}, mod::Ref{Int32}, n::Ref{Int32}, irn::Ptr{Int32},
                              lirn::Ref{Int32}, ip::Ptr{Int32}, lenc::Ptr{Int32}, fc::Ptr{Int32},
                              iperm::Ptr{Int32}, num::Ref{Int32}, numx::Ref{Int32}, pr::Ptr{Int32},
                              arp::Ptr{Int32}, cv::Ptr{Int32}, out::Ptr{Int32})::Cvoid
end

function mc64ur(::Type{Float64}, ::Type{Int32}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset.mc64ud_(id::Ref{Int32}, mod::Ref{Int32}, n::Ref{Int32}, irn::Ptr{Int32},
                               lirn::Ref{Int32}, ip::Ptr{Int32}, lenc::Ptr{Int32}, fc::Ptr{Int32},
                               iperm::Ptr{Int32}, num::Ref{Int32}, numx::Ref{Int32}, pr::Ptr{Int32},
                               arp::Ptr{Int32}, cv::Ptr{Int32}, out::Ptr{Int32})::Cvoid
end

function mc64ur(::Type{Float128}, ::Type{Int32}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset.mc64uq_(id::Ref{Int32}, mod::Ref{Int32}, n::Ref{Int32}, irn::Ptr{Int32},
                               lirn::Ref{Int32}, ip::Ptr{Int32}, lenc::Ptr{Int32}, fc::Ptr{Int32},
                               iperm::Ptr{Int32}, num::Ref{Int32}, numx::Ref{Int32}, pr::Ptr{Int32},
                               arp::Ptr{Int32}, cv::Ptr{Int32}, out::Ptr{Int32})::Cvoid
end

function mc64ur(::Type{Float32}, ::Type{Int64}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc64u_64_(id::Ref{Int64}, mod::Ref{Int64}, n::Ref{Int64}, irn::Ptr{Int64},
                                    lirn::Ref{Int64}, ip::Ptr{Int64}, lenc::Ptr{Int64},
                                    fc::Ptr{Int64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    numx::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                    cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc64ur(::Type{Float64}, ::Type{Int64}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc64ud_64_(id::Ref{Int64}, mod::Ref{Int64}, n::Ref{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, ip::Ptr{Int64},
                                     lenc::Ptr{Int64}, fc::Ptr{Int64}, iperm::Ptr{Int64},
                                     num::Ref{Int64}, numx::Ref{Int64}, pr::Ptr{Int64},
                                     arp::Ptr{Int64}, cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc64ur(::Type{Float128}, ::Type{Int64}, id, mod, n, irn, lirn, ip, lenc, fc, iperm, num,
                numx, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc64uq_64_(id::Ref{Int64}, mod::Ref{Int64}, n::Ref{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, ip::Ptr{Int64},
                                     lenc::Ptr{Int64}, fc::Ptr{Int64}, iperm::Ptr{Int64},
                                     num::Ref{Int64}, numx::Ref{Int64}, pr::Ptr{Int64},
                                     arp::Ptr{Int64}, cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc64wr(::Type{Float32}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l,
                u, d)
  @ccall libhsl_subset.mc64w_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, iperm::Ptr{Int32}, num::Ref{Int32},
                              jperm::Ptr{Int32}, out::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32},
                              l::Ptr{Int32}, u::Ptr{Float32}, d::Ptr{Float32})::Cvoid
end

function mc64wr(::Type{Float64}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l,
                u, d)
  @ccall libhsl_subset.mc64wd_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, iperm::Ptr{Int32}, num::Ref{Int32},
                               jperm::Ptr{Int32}, out::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32},
                               l::Ptr{Int32}, u::Ptr{Float64}, d::Ptr{Float64})::Cvoid
end

function mc64wr(::Type{Float128}, ::Type{Int32}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q,
                l, u, d)
  @ccall libhsl_subset.mc64wq_(n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, iperm::Ptr{Int32}, num::Ref{Int32},
                               jperm::Ptr{Int32}, out::Ptr{Int32}, pr::Ptr{Int32}, q::Ptr{Int32},
                               l::Ptr{Int32}, u::Ptr{Float128}, d::Ptr{Float128})::Cvoid
end

function mc64wr(::Type{Float32}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l,
                u, d)
  @ccall libhsl_subset_64.mc64w_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    jperm::Ptr{Int64}, out::Ptr{Int64}, pr::Ptr{Int64},
                                    q::Ptr{Int64}, l::Ptr{Int64}, u::Ptr{Float32},
                                    d::Ptr{Float32})::Cvoid
end

function mc64wr(::Type{Float64}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l,
                u, d)
  @ccall libhsl_subset_64.mc64wd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, out::Ptr{Int64}, pr::Ptr{Int64},
                                     q::Ptr{Int64}, l::Ptr{Int64}, u::Ptr{Float64},
                                     d::Ptr{Float64})::Cvoid
end

function mc64wr(::Type{Float128}, ::Type{Int64}, n, ne, ip, irn, a, iperm, num, jperm, out, pr, q,
                l, u, d)
  @ccall libhsl_subset_64.mc64wq_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float128}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, out::Ptr{Int64}, pr::Ptr{Int64},
                                     q::Ptr{Int64}, l::Ptr{Int64}, u::Ptr{Float128},
                                     d::Ptr{Float128})::Cvoid
end
