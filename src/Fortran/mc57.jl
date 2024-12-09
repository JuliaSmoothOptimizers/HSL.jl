function mc57ad(lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn, irn, ip, la, a, iw, lp, info)
  @ccall libhsl.mc57ad_(lcntl::Ptr{Cint}, nmax::Ref{Cint}, nelt::Ref{Cint}, eltvar::Ptr{Cint},
                        eltptr::Ptr{Cint}, aelt::Ptr{Float64}, n::Ref{Cint}, lirn::Ref{Cint},
                        irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                        iw::Ptr{Cint}, lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc57ad_64(lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn, irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset_64.mc57ad_64_(lcntl::Ptr{Int64}, nmax::Ref{Int64}, nelt::Ref{Int64},
                                     eltvar::Ptr{Int64}, eltptr::Ptr{Int64}, aelt::Ptr{Float64},
                                     n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     iw::Ptr{Int64}, lp::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc57bd(n, yesa, la, a, nz, irn, ip)
  @ccall libhsl.mc57bd_(n::Ref{Cint}, yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                        nz::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint})::Cvoid
end

function mc57bd_64(n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset_64.mc57bd_64_(n::Ref{Int64}, yesa::Ref{Int64}, la::Ref{Int64},
                                     a::Ptr{Float64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64})::Cvoid
end

function mc57a(lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn, irn, ip, la, a, iw, lp, info)
  @ccall libhsl.mc57a_(lcntl::Ptr{Cint}, nmax::Ref{Cint}, nelt::Ref{Cint}, eltvar::Ptr{Cint},
                       eltptr::Ptr{Cint}, aelt::Ptr{Float32}, n::Ref{Cint}, lirn::Ref{Cint},
                       irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                       lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc57a_64(lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn, irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset_64.mc57a_64_(lcntl::Ptr{Int64}, nmax::Ref{Int64}, nelt::Ref{Int64},
                                    eltvar::Ptr{Int64}, eltptr::Ptr{Int64}, aelt::Ptr{Float32},
                                    n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32}, iw::Ptr{Int64},
                                    lp::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc57b(n, yesa, la, a, nz, irn, ip)
  @ccall libhsl.mc57b_(n::Ref{Cint}, yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32}, nz::Ref{Cint},
                       irn::Ptr{Cint}, ip::Ptr{Cint})::Cvoid
end

function mc57b_64(n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset_64.mc57b_64_(n::Ref{Int64}, yesa::Ref{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, nz::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64})::Cvoid
end
