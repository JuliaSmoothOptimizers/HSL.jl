function mc57ar(::Type{Float32}, ::Type{Int32}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset.mc57a_(lcntl::Ptr{Cint}, nmax::Ref{Int32}, nelt::Ref{Int32},
                              eltvar::Ptr{Int32}, eltptr::Ptr{Int32}, aelt::Ptr{Float32},
                              n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              la::Ref{Int32}, a::Ptr{Float32}, iw::Ptr{Int32}, lp::Ref{Int32},
                              info::Ptr{Int32})::Cvoid
end

function mc57ar(::Type{Float64}, ::Type{Int32}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset.mc57ad_(lcntl::Ptr{Cint}, nmax::Ref{Int32}, nelt::Ref{Int32},
                               eltvar::Ptr{Int32}, eltptr::Ptr{Int32}, aelt::Ptr{Float64},
                               n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               la::Ref{Int32}, a::Ptr{Float64}, iw::Ptr{Int32}, lp::Ref{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc57ar(::Type{Float128}, ::Type{Int32}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset.mc57aq_(lcntl::Ptr{Cint}, nmax::Ref{Int32}, nelt::Ref{Int32},
                               eltvar::Ptr{Int32}, eltptr::Ptr{Int32}, aelt::Ptr{Float128},
                               n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               la::Ref{Int32}, a::Ptr{Float128}, iw::Ptr{Int32}, lp::Ref{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc57ar(::Type{Float32}, ::Type{Int64}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset_64.mc57a_64_(lcntl::Ptr{Cint}, nmax::Ref{Int64}, nelt::Ref{Int64},
                                    eltvar::Ptr{Int64}, eltptr::Ptr{Int64}, aelt::Ptr{Float32},
                                    n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32}, iw::Ptr{Int64},
                                    lp::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc57ar(::Type{Float64}, ::Type{Int64}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset_64.mc57ad_64_(lcntl::Ptr{Cint}, nmax::Ref{Int64}, nelt::Ref{Int64},
                                     eltvar::Ptr{Int64}, eltptr::Ptr{Int64}, aelt::Ptr{Float64},
                                     n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     iw::Ptr{Int64}, lp::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc57ar(::Type{Float128}, ::Type{Int64}, lcntl, nmax, nelt, eltvar, eltptr, aelt, n, lirn,
                irn, ip, la, a, iw, lp, info)
  @ccall libhsl_subset_64.mc57aq_64_(lcntl::Ptr{Cint}, nmax::Ref{Int64}, nelt::Ref{Int64},
                                     eltvar::Ptr{Int64}, eltptr::Ptr{Int64}, aelt::Ptr{Float128},
                                     n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float128},
                                     iw::Ptr{Int64}, lp::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc57br(::Type{Float32}, ::Type{Int32}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset.mc57b_(n::Ref{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float32},
                              nz::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32})::Cvoid
end

function mc57br(::Type{Float64}, ::Type{Int32}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset.mc57bd_(n::Ref{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float64},
                               nz::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32})::Cvoid
end

function mc57br(::Type{Float128}, ::Type{Int32}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset.mc57bq_(n::Ref{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float128},
                               nz::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32})::Cvoid
end

function mc57br(::Type{Float32}, ::Type{Int64}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset_64.mc57b_64_(n::Ref{Int64}, yesa::Ref{Cint}, la::Ref{Int64}, a::Ptr{Float32},
                                    nz::Ref{Int64}, irn::Ptr{Int64}, ip::Ptr{Int64})::Cvoid
end

function mc57br(::Type{Float64}, ::Type{Int64}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset_64.mc57bd_64_(n::Ref{Int64}, yesa::Ref{Cint}, la::Ref{Int64},
                                     a::Ptr{Float64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64})::Cvoid
end

function mc57br(::Type{Float128}, ::Type{Int64}, n, yesa, la, a, nz, irn, ip)
  @ccall libhsl_subset_64.mc57bq_64_(n::Ref{Int64}, yesa::Ref{Cint}, la::Ref{Int64},
                                     a::Ptr{Float128}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64})::Cvoid
end
