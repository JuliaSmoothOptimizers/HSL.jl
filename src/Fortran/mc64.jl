function mc64id(icntl)
  @ccall libhsl.mc64id_(icntl::Ptr{Cint})::Cvoid
end

function mc64id_64(icntl)
  @ccall libhsl_subset_64.mc64id_64_(icntl::Ptr{Int64})::Cvoid
end

function mc64ad(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl.mc64ad_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64}, num::Ref{Cint}, cperm::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, ldw::Ref{Cint}, dw::Ptr{Float64}, icntl::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function mc64ad_64(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl_subset_64.mc64ad_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, num::Ref{Int64},
                                     cperm::Ptr{Int64}, liw::Ref{Int64}, iw::Ptr{Int64},
                                     ldw::Ref{Int64}, dw::Ptr{Float64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc64bd(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl.mc64bd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, pr::Ptr{Cint},
                        q::Ptr{Cint}, l::Ptr{Cint}, d::Ptr{Float64})::Cvoid
end

function mc64bd_64(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset_64.mc64bd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, pr::Ptr{Int64}, q::Ptr{Int64},
                                     l::Ptr{Int64}, d::Ptr{Float64})::Cvoid
end

function mc64dd(i, n, q, d, l, iway)
  @ccall libhsl.mc64dd_(i::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float64}, l::Ptr{Cint},
                        iway::Ref{Cint})::Cvoid
end

function mc64dd_64(i, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64dd_64_(i::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float64},
                                     l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64ed(qlen, n, q, d, l, iway)
  @ccall libhsl.mc64ed_(qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float64}, l::Ptr{Cint},
                        iway::Ref{Cint})::Cvoid
end

function mc64ed_64(qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64ed_64_(qlen::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64},
                                     d::Ptr{Float64}, l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64fd(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl.mc64fd_(pos0::Ref{Cint}, qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint},
                        d::Ptr{Float64}, l::Ptr{Cint}, iway::Ref{Cint})::Cvoid
end

function mc64fd_64(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64fd_64_(pos0::Ref{Int64}, qlen::Ref{Int64}, n::Ref{Int64},
                                     q::Ptr{Int64}, d::Ptr{Float64}, l::Ptr{Int64},
                                     iway::Ref{Int64})::Cvoid
end

function mc64rd(n, ne, ip, irn, a)
  @ccall libhsl.mc64rd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64})::Cvoid
end

function mc64rd_64(n, ne, ip, irn, a)
  @ccall libhsl_subset_64.mc64rd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64})::Cvoid
end

function mc64sd(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl.mc64sd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, numx::Ref{Cint}, w::Ptr{Cint}, len::Ptr{Cint},
                        lenl::Ptr{Cint}, lenh::Ptr{Cint}, fc::Ptr{Cint}, iw::Ptr{Cint},
                        iw4::Ptr{Cint})::Cvoid
end

function mc64sd_64(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl_subset_64.mc64sd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, numx::Ref{Int64},
                                     w::Ptr{Int64}, len::Ptr{Int64}, lenl::Ptr{Int64},
                                     lenh::Ptr{Int64}, fc::Ptr{Int64}, iw::Ptr{Int64},
                                     iw4::Ptr{Int64})::Cvoid
end

function mc64qd(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl.mc64qd_(ip::Ptr{Cint}, lenl::Ptr{Cint}, lenh::Ptr{Cint}, w::Ptr{Cint},
                        wlen::Ref{Cint}, a::Ptr{Float64}, nval::Ref{Cint}, val::Ref{Float64})::Cvoid
end

function mc64qd_64(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset_64.mc64qd_64_(ip::Ptr{Int64}, lenl::Ptr{Int64}, lenh::Ptr{Int64},
                                     w::Ptr{Int64}, wlen::Ref{Int64}, a::Ptr{Float64},
                                     nval::Ref{Int64}, val::Ref{Float64})::Cvoid
end

function mc64ud(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl.mc64ud_(id::Ref{Cint}, mod::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                        lirn::Ref{Cint}, ip::Ptr{Cint}, lenc::Ptr{Cint}, fc::Ptr{Cint},
                        iperm::Ptr{Cint}, num::Ref{Cint}, numx::Ref{Cint}, pr::Ptr{Cint},
                        arp::Ptr{Cint}, cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc64ud_64(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc64ud_64_(id::Ref{Int64}, mod::Ref{Int64}, n::Ref{Int64},
                                     irn::Ptr{Int64}, lirn::Ref{Int64}, ip::Ptr{Int64},
                                     lenc::Ptr{Int64}, fc::Ptr{Int64}, iperm::Ptr{Int64},
                                     num::Ref{Int64}, numx::Ref{Int64}, pr::Ptr{Int64},
                                     arp::Ptr{Int64}, cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc64wd(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl.mc64wd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, out::Ptr{Cint},
                        pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint}, u::Ptr{Float64},
                        d::Ptr{Float64})::Cvoid
end

function mc64wd_64(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl_subset_64.mc64wd_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                     a::Ptr{Float64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                     jperm::Ptr{Int64}, out::Ptr{Int64}, pr::Ptr{Int64},
                                     q::Ptr{Int64}, l::Ptr{Int64}, u::Ptr{Float64},
                                     d::Ptr{Float64})::Cvoid
end

function mc64i(icntl)
  @ccall libhsl.mc64i_(icntl::Ptr{Cint})::Cvoid
end

function mc64i_64(icntl)
  @ccall libhsl_subset_64.mc64i_64_(icntl::Ptr{Int64})::Cvoid
end

function mc64a(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl.mc64a_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32}, num::Ref{Cint}, cperm::Ptr{Cint}, liw::Ref{Cint},
                       iw::Ptr{Cint}, ldw::Ref{Cint}, dw::Ptr{Float32}, icntl::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function mc64a_64(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl_subset_64.mc64a_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, num::Ref{Int64},
                                    cperm::Ptr{Int64}, liw::Ref{Int64}, iw::Ptr{Int64},
                                    ldw::Ref{Int64}, dw::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function mc64b(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl.mc64b_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, pr::Ptr{Cint},
                       q::Ptr{Cint}, l::Ptr{Cint}, d::Ptr{Float32})::Cvoid
end

function mc64b_64(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl_subset_64.mc64b_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    jperm::Ptr{Int64}, pr::Ptr{Int64}, q::Ptr{Int64}, l::Ptr{Int64},
                                    d::Ptr{Float32})::Cvoid
end

function mc64d(i, n, q, d, l, iway)
  @ccall libhsl.mc64d_(i::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float32}, l::Ptr{Cint},
                       iway::Ref{Cint})::Cvoid
end

function mc64d_64(i, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64d_64_(i::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float32},
                                    l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64e(qlen, n, q, d, l, iway)
  @ccall libhsl.mc64e_(qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float32}, l::Ptr{Cint},
                       iway::Ref{Cint})::Cvoid
end

function mc64e_64(qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64e_64_(qlen::Ref{Int64}, n::Ref{Int64}, q::Ptr{Int64}, d::Ptr{Float32},
                                    l::Ptr{Int64}, iway::Ref{Int64})::Cvoid
end

function mc64f(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl.mc64f_(pos0::Ref{Cint}, qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint},
                       d::Ptr{Float32}, l::Ptr{Cint}, iway::Ref{Cint})::Cvoid
end

function mc64f_64(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl_subset_64.mc64f_64_(pos0::Ref{Int64}, qlen::Ref{Int64}, n::Ref{Int64},
                                    q::Ptr{Int64}, d::Ptr{Float32}, l::Ptr{Int64},
                                    iway::Ref{Int64})::Cvoid
end

function mc64r(n, ne, ip, irn, a)
  @ccall libhsl.mc64r_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32})::Cvoid
end

function mc64r_64(n, ne, ip, irn, a)
  @ccall libhsl_subset_64.mc64r_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32})::Cvoid
end

function mc64s(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl.mc64s_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, numx::Ref{Cint}, w::Ptr{Cint}, len::Ptr{Cint},
                       lenl::Ptr{Cint}, lenh::Ptr{Cint}, fc::Ptr{Cint}, iw::Ptr{Cint},
                       iw4::Ptr{Cint})::Cvoid
end

function mc64s_64(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl_subset_64.mc64s_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, numx::Ref{Int64},
                                    w::Ptr{Int64}, len::Ptr{Int64}, lenl::Ptr{Int64},
                                    lenh::Ptr{Int64}, fc::Ptr{Int64}, iw::Ptr{Int64},
                                    iw4::Ptr{Int64})::Cvoid
end

function mc64q(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl.mc64q_(ip::Ptr{Cint}, lenl::Ptr{Cint}, lenh::Ptr{Cint}, w::Ptr{Cint},
                       wlen::Ref{Cint}, a::Ptr{Float32}, nval::Ref{Cint}, val::Ref{Float32})::Cvoid
end

function mc64q_64(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl_subset_64.mc64q_64_(ip::Ptr{Int64}, lenl::Ptr{Int64}, lenh::Ptr{Int64},
                                    w::Ptr{Int64}, wlen::Ref{Int64}, a::Ptr{Float32},
                                    nval::Ref{Int64}, val::Ref{Float32})::Cvoid
end

function mc64u(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl.mc64u_(id::Ref{Cint}, mod::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint},
                       ip::Ptr{Cint}, lenc::Ptr{Cint}, fc::Ptr{Cint}, iperm::Ptr{Cint},
                       num::Ref{Cint}, numx::Ref{Cint}, pr::Ptr{Cint}, arp::Ptr{Cint},
                       cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc64u_64(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl_subset_64.mc64u_64_(id::Ref{Int64}, mod::Ref{Int64}, n::Ref{Int64}, irn::Ptr{Int64},
                                    lirn::Ref{Int64}, ip::Ptr{Int64}, lenc::Ptr{Int64},
                                    fc::Ptr{Int64}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    numx::Ref{Int64}, pr::Ptr{Int64}, arp::Ptr{Int64},
                                    cv::Ptr{Int64}, out::Ptr{Int64})::Cvoid
end

function mc64w(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl.mc64w_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, out::Ptr{Cint},
                       pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint}, u::Ptr{Float32},
                       d::Ptr{Float32})::Cvoid
end

function mc64w_64(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl_subset_64.mc64w_64_(n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64}, irn::Ptr{Int64},
                                    a::Ptr{Float32}, iperm::Ptr{Int64}, num::Ref{Int64},
                                    jperm::Ptr{Int64}, out::Ptr{Int64}, pr::Ptr{Int64},
                                    q::Ptr{Int64}, l::Ptr{Int64}, u::Ptr{Float32},
                                    d::Ptr{Float32})::Cvoid
end
