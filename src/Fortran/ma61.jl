function ma61id(icntl, cntl, keep)
  @ccall libhsl.ma61id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ma61id_64(icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function ma61ad(n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl, cntl, info, keep)
  @ccall libhsl.ma61ad_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, ini::Ptr{Cint},
                        inj::Ptr{Cint}, iai::Ref{Cint}, iaj::Ref{Cint}, ik::Ptr{Cint},
                        iw::Ptr{Cint}, w::Ptr{Float64}, c::Ref{Float64}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma61ad_64(n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl, cntl, info, keep)
  @ccall libhsl_subset_64.ma61ad_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iai::Ref{Int64},
                                     iaj::Ref{Int64}, ik::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64}, c::Ref{Float64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61cd(n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w, iflag, c, icntl, cntl, keep)
  @ccall libhsl.ma61cd_(n::Ref{Cint}, nz::Ref{Cint}, d::Ptr{Float64}, a::Ptr{Float64},
                        ini::Ptr{Cint}, inj::Ptr{Cint}, iai::Ref{Cint}, iaj::Ref{Cint},
                        ik::Ptr{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64},
                        iflag::Ref{Cint}, c::Ref{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                        keep::Ptr{Cint})::Cvoid
end

function ma61cd_64(n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w, iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61cd_64_(n::Ref{Int64}, nz::Ref{Int64}, d::Ptr{Float64},
                                     a::Ptr{Float64}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     iai::Ref{Int64}, iaj::Ref{Int64}, ik::Ptr{Int64},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     iflag::Ref{Int64}, c::Ref{Float64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function ma61dd(a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl.ma61dd_(a::Ptr{Float64}, irn::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ik::Ptr{Cint},
                        ip::Ptr{Cint}, row::Ref{Cint}, ncp::Ref{Cint}, nucl::Ref{Cint},
                        nual::Ref{Cint})::Cvoid
end

function ma61dd_64(a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset_64.ma61dd_64_(a::Ptr{Float64}, irn::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ik::Ptr{Int64}, ip::Ptr{Int64}, row::Ref{Int64},
                                     ncp::Ref{Int64}, nucl::Ref{Int64}, nual::Ref{Int64})::Cvoid
end

function ma61ed(in1, in2, nz, ip, n, a)
  @ccall libhsl.ma61ed_(in1::Ptr{Cint}, in2::Ptr{Cint}, nz::Ref{Cint}, ip::Ptr{Cint}, n::Ref{Cint},
                        a::Ptr{Float64})::Cvoid
end

function ma61ed_64(in1, in2, nz, ip, n, a)
  @ccall libhsl_subset_64.ma61ed_64_(in1::Ptr{Int64}, in2::Ptr{Int64}, nz::Ref{Int64},
                                     ip::Ptr{Int64}, n::Ref{Int64}, a::Ptr{Float64})::Cvoid
end

function ma61gd(n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl.ma61gd_(n::Ref{Cint}, a::Ptr{Float64}, inj::Ptr{Cint}, iaj::Ref{Cint},
                        d::Ptr{Float64}, ik::Ptr{Cint}, b::Ptr{Float64}, lrow::Ref{Cint})::Cvoid
end

function ma61gd_64(n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset_64.ma61gd_64_(n::Ref{Int64}, a::Ptr{Float64}, inj::Ptr{Int64},
                                     iaj::Ref{Int64}, d::Ptr{Float64}, ik::Ptr{Int64},
                                     b::Ptr{Float64}, lrow::Ref{Int64})::Cvoid
end

function ma61bd(n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps, icntl, info, keep)
  @ccall libhsl.ma61bd_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, ini::Ptr{Cint},
                        inj::Ptr{Cint}, iaj::Ref{Cint}, ik::Ptr{Cint}, b::Ptr{Float64},
                        w::Ptr{Float64}, w1::Ptr{Float64}, kmax::Ptr{Cint}, eps::Ptr{Float64},
                        icntl::Ptr{Cint}, info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma61bd_64(n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps, icntl, info, keep)
  @ccall libhsl_subset_64.ma61bd_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaj::Ref{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float64}, w::Ptr{Float64},
                                     w1::Ptr{Float64}, kmax::Ptr{Int64}, eps::Ptr{Float64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61fd(n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e, f, g, kmax, eps, lrow)
  @ccall libhsl.ma61fd_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, ini::Ptr{Cint},
                        inj::Ptr{Cint}, iaf::Ref{Cint}, af::Ptr{Float64}, df::Ptr{Float64},
                        injf::Ptr{Cint}, ik::Ptr{Cint}, b::Ptr{Float64}, r::Ptr{Float64},
                        e::Ptr{Float64}, f::Ptr{Float64}, g::Ptr{Float64}, kmax::Ref{Cint},
                        eps::Ref{Float64}, lrow::Ref{Cint})::Cvoid
end

function ma61fd_64(n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e, f, g, kmax, eps, lrow)
  @ccall libhsl_subset_64.ma61fd_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float64},
                                     ini::Ptr{Int64}, inj::Ptr{Int64}, iaf::Ref{Int64},
                                     af::Ptr{Float64}, df::Ptr{Float64}, injf::Ptr{Int64},
                                     ik::Ptr{Int64}, b::Ptr{Float64}, r::Ptr{Float64},
                                     e::Ptr{Float64}, f::Ptr{Float64}, g::Ptr{Float64},
                                     kmax::Ref{Int64}, eps::Ref{Float64}, lrow::Ref{Int64})::Cvoid
end

function ma61hd(a, ini, inj, nz, n, b, z)
  @ccall libhsl.ma61hd_(a::Ptr{Float64}, ini::Ptr{Cint}, inj::Ptr{Cint}, nz::Ref{Cint},
                        n::Ref{Cint}, b::Ptr{Float64}, z::Ptr{Float64})::Cvoid
end

function ma61hd_64(a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset_64.ma61hd_64_(a::Ptr{Float64}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                     nz::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     z::Ptr{Float64})::Cvoid
end

function ma61i(icntl, cntl, keep)
  @ccall libhsl.ma61i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function ma61i_64(icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function ma61a(n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl, cntl, info, keep)
  @ccall libhsl.ma61a_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, ini::Ptr{Cint}, inj::Ptr{Cint},
                       iai::Ref{Cint}, iaj::Ref{Cint}, ik::Ptr{Cint}, iw::Ptr{Cint},
                       w::Ptr{Float32}, c::Ref{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma61a_64(n, nz, a, ini, inj, iai, iaj, ik, iw, w, c, icntl, cntl, info, keep)
  @ccall libhsl_subset_64.ma61a_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iai::Ref{Int64}, iaj::Ref{Int64},
                                    ik::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    c::Ref{Float32}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61c(n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w, iflag, c, icntl, cntl, keep)
  @ccall libhsl.ma61c_(n::Ref{Cint}, nz::Ref{Cint}, d::Ptr{Float32}, a::Ptr{Float32},
                       ini::Ptr{Cint}, inj::Ptr{Cint}, iai::Ref{Cint}, iaj::Ref{Cint},
                       ik::Ptr{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32},
                       iflag::Ref{Cint}, c::Ref{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       keep::Ptr{Cint})::Cvoid
end

function ma61c_64(n, nz, d, a, ini, inj, iai, iaj, ik, ip, iw, w, iflag, c, icntl, cntl, keep)
  @ccall libhsl_subset_64.ma61c_64_(n::Ref{Int64}, nz::Ref{Int64}, d::Ptr{Float32}, a::Ptr{Float32},
                                    ini::Ptr{Int64}, inj::Ptr{Int64}, iai::Ref{Int64},
                                    iaj::Ref{Int64}, ik::Ptr{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32}, iflag::Ref{Int64}, c::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function ma61d(a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl.ma61d_(a::Ptr{Float32}, irn::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ik::Ptr{Cint},
                       ip::Ptr{Cint}, row::Ref{Cint}, ncp::Ref{Cint}, nucl::Ref{Cint},
                       nual::Ref{Cint})::Cvoid
end

function ma61d_64(a, irn, ia, n, ik, ip, row, ncp, nucl, nual)
  @ccall libhsl_subset_64.ma61d_64_(a::Ptr{Float32}, irn::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ik::Ptr{Int64}, ip::Ptr{Int64}, row::Ref{Int64},
                                    ncp::Ref{Int64}, nucl::Ref{Int64}, nual::Ref{Int64})::Cvoid
end

function ma61e(in1, in2, nz, ip, n, a)
  @ccall libhsl.ma61e_(in1::Ptr{Cint}, in2::Ptr{Cint}, nz::Ref{Cint}, ip::Ptr{Cint}, n::Ref{Cint},
                       a::Ptr{Float32})::Cvoid
end

function ma61e_64(in1, in2, nz, ip, n, a)
  @ccall libhsl_subset_64.ma61e_64_(in1::Ptr{Int64}, in2::Ptr{Int64}, nz::Ref{Int64},
                                    ip::Ptr{Int64}, n::Ref{Int64}, a::Ptr{Float32})::Cvoid
end

function ma61g(n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl.ma61g_(n::Ref{Cint}, a::Ptr{Float32}, inj::Ptr{Cint}, iaj::Ref{Cint},
                       d::Ptr{Float32}, ik::Ptr{Cint}, b::Ptr{Float32}, lrow::Ref{Cint})::Cvoid
end

function ma61g_64(n, a, inj, iaj, d, ik, b, lrow)
  @ccall libhsl_subset_64.ma61g_64_(n::Ref{Int64}, a::Ptr{Float32}, inj::Ptr{Int64},
                                    iaj::Ref{Int64}, d::Ptr{Float32}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, lrow::Ref{Int64})::Cvoid
end

function ma61b(n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps, icntl, info, keep)
  @ccall libhsl.ma61b_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, ini::Ptr{Cint}, inj::Ptr{Cint},
                       iaj::Ref{Cint}, ik::Ptr{Cint}, b::Ptr{Float32}, w::Ptr{Float32},
                       w1::Ptr{Float32}, kmax::Ptr{Cint}, eps::Ptr{Float32}, icntl::Ptr{Cint},
                       info::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function ma61b_64(n, nz, a, ini, inj, iaj, ik, b, w, w1, kmax, eps, icntl, info, keep)
  @ccall libhsl_subset_64.ma61b_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iaj::Ref{Int64}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, w::Ptr{Float32}, w1::Ptr{Float32},
                                    kmax::Ptr{Int64}, eps::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function ma61f(n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e, f, g, kmax, eps, lrow)
  @ccall libhsl.ma61f_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, ini::Ptr{Cint}, inj::Ptr{Cint},
                       iaf::Ref{Cint}, af::Ptr{Float32}, df::Ptr{Float32}, injf::Ptr{Cint},
                       ik::Ptr{Cint}, b::Ptr{Float32}, r::Ptr{Float32}, e::Ptr{Float32},
                       f::Ptr{Float32}, g::Ptr{Float32}, kmax::Ref{Cint}, eps::Ref{Float32},
                       lrow::Ref{Cint})::Cvoid
end

function ma61f_64(n, nz, a, ini, inj, iaf, af, df, injf, ik, b, r, e, f, g, kmax, eps, lrow)
  @ccall libhsl_subset_64.ma61f_64_(n::Ref{Int64}, nz::Ref{Int64}, a::Ptr{Float32}, ini::Ptr{Int64},
                                    inj::Ptr{Int64}, iaf::Ref{Int64}, af::Ptr{Float32},
                                    df::Ptr{Float32}, injf::Ptr{Int64}, ik::Ptr{Int64},
                                    b::Ptr{Float32}, r::Ptr{Float32}, e::Ptr{Float32},
                                    f::Ptr{Float32}, g::Ptr{Float32}, kmax::Ref{Int64},
                                    eps::Ref{Float32}, lrow::Ref{Int64})::Cvoid
end

function ma61h(a, ini, inj, nz, n, b, z)
  @ccall libhsl.ma61h_(a::Ptr{Float32}, ini::Ptr{Cint}, inj::Ptr{Cint}, nz::Ref{Cint}, n::Ref{Cint},
                       b::Ptr{Float32}, z::Ptr{Float32})::Cvoid
end

function ma61h_64(a, ini, inj, nz, n, b, z)
  @ccall libhsl_subset_64.ma61h_64_(a::Ptr{Float32}, ini::Ptr{Int64}, inj::Ptr{Int64},
                                    nz::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    z::Ptr{Float32})::Cvoid
end
