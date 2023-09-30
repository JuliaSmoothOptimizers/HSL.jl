function mc64id(icntl)
  @ccall libhsl.mc64id_(icntl::Ptr{Cint})::Cvoid
end

function mc64ad(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl.mc64ad_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64}, num::Ref{Cint}, cperm::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, ldw::Ref{Cint}, dw::Ptr{Float64}, icntl::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function mc64bd(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl.mc64bd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, pr::Ptr{Cint},
                        q::Ptr{Cint}, l::Ptr{Cint}, d::Ptr{Float64})::Cvoid
end

function mc64dd(i, n, q, d, l, iway)
  @ccall libhsl.mc64dd_(i::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float64}, l::Ptr{Cint},
                        iway::Ref{Cint})::Cvoid
end

function mc64ed(qlen, n, q, d, l, iway)
  @ccall libhsl.mc64ed_(qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float64}, l::Ptr{Cint},
                        iway::Ref{Cint})::Cvoid
end

function mc64fd(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl.mc64fd_(pos0::Ref{Cint}, qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint},
                        d::Ptr{Float64}, l::Ptr{Cint}, iway::Ref{Cint})::Cvoid
end

function mc64rd(n, ne, ip, irn, a)
  @ccall libhsl.mc64rd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64})::Cvoid
end

function mc64sd(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl.mc64sd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, numx::Ref{Cint}, w::Ptr{Cint}, len::Ptr{Cint},
                        lenl::Ptr{Cint}, lenh::Ptr{Cint}, fc::Ptr{Cint}, iw::Ptr{Cint},
                        iw4::Ptr{Cint})::Cvoid
end

function mc64qd(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl.mc64qd_(ip::Ptr{Cint}, lenl::Ptr{Cint}, lenh::Ptr{Cint}, w::Ptr{Cint},
                        wlen::Ref{Cint}, a::Ptr{Float64}, nval::Ref{Cint}, val::Ref{Float64})::Cvoid
end

function mc64ud(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl.mc64ud_(id::Ref{Cint}, mod::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                        lirn::Ref{Cint}, ip::Ptr{Cint}, lenc::Ptr{Cint}, fc::Ptr{Cint},
                        iperm::Ptr{Cint}, num::Ref{Cint}, numx::Ref{Cint}, pr::Ptr{Cint},
                        arp::Ptr{Cint}, cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc64wd(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl.mc64wd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64},
                        iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, out::Ptr{Cint},
                        pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint}, u::Ptr{Float64},
                        d::Ptr{Float64})::Cvoid
end

function mc64i(icntl)
  @ccall libhsl.mc64i_(icntl::Ptr{Cint})::Cvoid
end

function mc64a(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
  @ccall libhsl.mc64a_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32}, num::Ref{Cint}, cperm::Ptr{Cint}, liw::Ref{Cint},
                       iw::Ptr{Cint}, ldw::Ref{Cint}, dw::Ptr{Float32}, icntl::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function mc64b(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
  @ccall libhsl.mc64b_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, pr::Ptr{Cint},
                       q::Ptr{Cint}, l::Ptr{Cint}, d::Ptr{Float32})::Cvoid
end

function mc64d(i, n, q, d, l, iway)
  @ccall libhsl.mc64d_(i::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float32}, l::Ptr{Cint},
                       iway::Ref{Cint})::Cvoid
end

function mc64e(qlen, n, q, d, l, iway)
  @ccall libhsl.mc64e_(qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint}, d::Ptr{Float32}, l::Ptr{Cint},
                       iway::Ref{Cint})::Cvoid
end

function mc64f(pos0, qlen, n, q, d, l, iway)
  @ccall libhsl.mc64f_(pos0::Ref{Cint}, qlen::Ref{Cint}, n::Ref{Cint}, q::Ptr{Cint},
                       d::Ptr{Float32}, l::Ptr{Cint}, iway::Ref{Cint})::Cvoid
end

function mc64r(n, ne, ip, irn, a)
  @ccall libhsl.mc64r_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32})::Cvoid
end

function mc64s(n, ne, ip, irn, a, iperm, numx, w, len, lenl, lenh, fc, iw, iw4)
  @ccall libhsl.mc64s_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, numx::Ref{Cint}, w::Ptr{Cint}, len::Ptr{Cint},
                       lenl::Ptr{Cint}, lenh::Ptr{Cint}, fc::Ptr{Cint}, iw::Ptr{Cint},
                       iw4::Ptr{Cint})::Cvoid
end

function mc64q(ip, lenl, lenh, w, wlen, a, nval, val)
  @ccall libhsl.mc64q_(ip::Ptr{Cint}, lenl::Ptr{Cint}, lenh::Ptr{Cint}, w::Ptr{Cint},
                       wlen::Ref{Cint}, a::Ptr{Float32}, nval::Ref{Cint}, val::Ref{Float32})::Cvoid
end

function mc64u(id, mod, n, irn, lirn, ip, lenc, fc, iperm, num, numx, pr, arp, cv, out)
  @ccall libhsl.mc64u_(id::Ref{Cint}, mod::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint},
                       ip::Ptr{Cint}, lenc::Ptr{Cint}, fc::Ptr{Cint}, iperm::Ptr{Cint},
                       num::Ref{Cint}, numx::Ref{Cint}, pr::Ptr{Cint}, arp::Ptr{Cint},
                       cv::Ptr{Cint}, out::Ptr{Cint})::Cvoid
end

function mc64w(n, ne, ip, irn, a, iperm, num, jperm, out, pr, q, l, u, d)
  @ccall libhsl.mc64w_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32},
                       iperm::Ptr{Cint}, num::Ref{Cint}, jperm::Ptr{Cint}, out::Ptr{Cint},
                       pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint}, u::Ptr{Float32},
                       d::Ptr{Float32})::Cvoid
end
