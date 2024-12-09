function la15id(icntl, cntl, keep)
  @ccall libhsl.la15id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function la15id_64(icntl, cntl, keep)
  @ccall libhsl_subset_64.la15id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15ad(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
  @ccall libhsl.la15ad_(a::Ptr{Float64}, ind::Ptr{Cint}, nzero::Ref{Cint}, ia::Ref{Cint},
                        n::Ref{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64},
                        g::Ref{Float64}, u::Ref{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                        keep::Ptr{Cint})::Cvoid
end

function la15ad_64(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15ad_64_(a::Ptr{Float64}, ind::Ptr{Int64}, nzero::Ref{Int64},
                                     ia::Ref{Int64}, n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64}, g::Ref{Float64}, u::Ref{Float64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15bd(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl.la15bd_(a::Ptr{Float64}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ip::Ptr{Cint},
                        iw::Ptr{Cint}, w::Ptr{Float64}, g::Ref{Float64}, b::Ptr{Float64},
                        trans::Ref{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function la15bd_64(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset_64.la15bd_64_(a::Ptr{Float64}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     g::Ref{Float64}, b::Ptr{Float64}, trans::Ref{Int64},
                                     icntl::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function la15cd(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
  @ccall libhsl.la15cd_(a::Ptr{Float64}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ip::Ptr{Cint},
                        iw::Ptr{Cint}, w::Ptr{Float64}, g::Ref{Float64}, u::Ref{Float64},
                        mm::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function la15cd_64(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15cd_64_(a::Ptr{Float64}, ind::Ptr{Int64}, ia::Ref{Int64},
                                     n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     g::Ref{Float64}, u::Ref{Float64}, mm::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, keep::Ptr{Int64})::Cvoid
end

function la15ed(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl.la15ed_(a::Ptr{Float64}, irn::Ptr{Cint}, ip::Ptr{Cint}, n::Ref{Cint}, iw::Ptr{Cint},
                        ia::Ref{Cint}, reals::Ref{Cint}, ncp::Ref{Cint}, lrow::Ref{Cint},
                        lcol::Ref{Cint})::Cvoid
end

function la15ed_64(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset_64.la15ed_64_(a::Ptr{Float64}, irn::Ptr{Int64}, ip::Ptr{Int64},
                                     n::Ref{Int64}, iw::Ptr{Int64}, ia::Ref{Int64},
                                     reals::Ref{Int64}, ncp::Ref{Int64}, lrow::Ref{Int64},
                                     lcol::Ref{Int64})::Cvoid
end

function la15i(icntl, cntl, keep)
  @ccall libhsl.la15i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function la15i_64(icntl, cntl, keep)
  @ccall libhsl_subset_64.la15i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15a(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
  @ccall libhsl.la15a_(a::Ptr{Float32}, ind::Ptr{Cint}, nzero::Ref{Cint}, ia::Ref{Cint},
                       n::Ref{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, g::Ref{Float32},
                       u::Ref{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32},
                       keep::Ptr{Cint})::Cvoid
end

function la15a_64(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15a_64_(a::Ptr{Float32}, ind::Ptr{Int64}, nzero::Ref{Int64},
                                    ia::Ref{Int64}, n::Ref{Int64}, ip::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32}, g::Ref{Float32}, u::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15b(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl.la15b_(a::Ptr{Float32}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ip::Ptr{Cint},
                       iw::Ptr{Cint}, w::Ptr{Float32}, g::Ref{Float32}, b::Ptr{Float32},
                       trans::Ref{Cint}, icntl::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function la15b_64(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
  @ccall libhsl_subset_64.la15b_64_(a::Ptr{Float32}, ind::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    g::Ref{Float32}, b::Ptr{Float32}, trans::Ref{Int64},
                                    icntl::Ptr{Int64}, keep::Ptr{Int64})::Cvoid
end

function la15c(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
  @ccall libhsl.la15c_(a::Ptr{Float32}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint}, ip::Ptr{Cint},
                       iw::Ptr{Cint}, w::Ptr{Float32}, g::Ref{Float32}, u::Ref{Float32},
                       mm::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function la15c_64(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
  @ccall libhsl_subset_64.la15c_64_(a::Ptr{Float32}, ind::Ptr{Int64}, ia::Ref{Int64}, n::Ref{Int64},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    g::Ref{Float32}, u::Ref{Float32}, mm::Ref{Int64},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, keep::Ptr{Int64})::Cvoid
end

function la15e(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl.la15e_(a::Ptr{Float32}, irn::Ptr{Cint}, ip::Ptr{Cint}, n::Ref{Cint}, iw::Ptr{Cint},
                       ia::Ref{Cint}, reals::Ref{Cint}, ncp::Ref{Cint}, lrow::Ref{Cint},
                       lcol::Ref{Cint})::Cvoid
end

function la15e_64(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
  @ccall libhsl_subset_64.la15e_64_(a::Ptr{Float32}, irn::Ptr{Int64}, ip::Ptr{Int64}, n::Ref{Int64},
                                    iw::Ptr{Int64}, ia::Ref{Int64}, reals::Ref{Int64},
                                    ncp::Ref{Int64}, lrow::Ref{Int64}, lcol::Ref{Int64})::Cvoid
end
