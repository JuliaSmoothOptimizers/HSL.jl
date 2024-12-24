function mc37ar(::Type{Float32}, ::Type{Int32}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt,
                laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset.mc37a_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              a::Ptr{Float32}, ip::Ptr{Int32}, lielt::Ref{Int32},
                              numelt::Ref{Int32}, ptrelt::Ptr{Int32}, ielt::Ptr{Int32},
                              laelt::Ref{Int32}, aelt::Ptr{Float32}, iw::Ptr{Int32},
                              icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc37ar(::Type{Float64}, ::Type{Int32}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt,
                laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset.mc37ad_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               a::Ptr{Float64}, ip::Ptr{Int32}, lielt::Ref{Int32},
                               numelt::Ref{Int32}, ptrelt::Ptr{Int32}, ielt::Ptr{Int32},
                               laelt::Ref{Int32}, aelt::Ptr{Float64}, iw::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc37ar(::Type{Float128}, ::Type{Int32}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt,
                ielt, laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset.mc37aq_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               a::Ptr{Float128}, ip::Ptr{Int32}, lielt::Ref{Int32},
                               numelt::Ref{Int32}, ptrelt::Ptr{Int32}, ielt::Ptr{Int32},
                               laelt::Ref{Int32}, aelt::Ptr{Float128}, iw::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc37ar(::Type{Float32}, ::Type{Int64}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt,
                laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset_64.mc37a_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    a::Ptr{Float32}, ip::Ptr{Int64}, lielt::Ref{Int64},
                                    numelt::Ref{Int64}, ptrelt::Ptr{Int64}, ielt::Ptr{Int64},
                                    laelt::Ref{Int64}, aelt::Ptr{Float32}, iw::Ptr{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc37ar(::Type{Float64}, ::Type{Int64}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt,
                laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset_64.mc37ad_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, a::Ptr{Float64}, ip::Ptr{Int64},
                                     lielt::Ref{Int64}, numelt::Ref{Int64}, ptrelt::Ptr{Int64},
                                     ielt::Ptr{Int64}, laelt::Ref{Int64}, aelt::Ptr{Float64},
                                     iw::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc37ar(::Type{Float128}, ::Type{Int64}, n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt,
                ielt, laelt, aelt, iw, icntl, info)
  @ccall libhsl_subset_64.mc37aq_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, a::Ptr{Float128}, ip::Ptr{Int64},
                                     lielt::Ref{Int64}, numelt::Ref{Int64}, ptrelt::Ptr{Int64},
                                     ielt::Ptr{Int64}, laelt::Ref{Int64}, aelt::Ptr{Float128},
                                     iw::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc37br(::Type{Float32}, ::Type{Int32}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt,
                aelt, laelt)
  @ccall libhsl_subset.mc37b_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32}, irn::Ptr{Int32},
                              jcn::Ptr{Int32}, ip::Ptr{Int32}, numelt::Ref{Int32},
                              ptrelt::Ptr{Int32}, ielt::Ptr{Int32}, lielt::Ref{Int32},
                              aelt::Ptr{Float32}, laelt::Ref{Int32})::Cvoid
end

function mc37br(::Type{Float64}, ::Type{Int32}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt,
                aelt, laelt)
  @ccall libhsl_subset.mc37bd_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, ip::Ptr{Int32}, numelt::Ref{Int32},
                               ptrelt::Ptr{Int32}, ielt::Ptr{Int32}, lielt::Ref{Int32},
                               aelt::Ptr{Float64}, laelt::Ref{Int32})::Cvoid
end

function mc37br(::Type{Float128}, ::Type{Int32}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt,
                lielt, aelt, laelt)
  @ccall libhsl_subset.mc37bq_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, ip::Ptr{Int32}, numelt::Ref{Int32},
                               ptrelt::Ptr{Int32}, ielt::Ptr{Int32}, lielt::Ref{Int32},
                               aelt::Ptr{Float128}, laelt::Ref{Int32})::Cvoid
end

function mc37br(::Type{Float32}, ::Type{Int64}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt,
                aelt, laelt)
  @ccall libhsl_subset_64.mc37b_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, ip::Ptr{Int64}, numelt::Ref{Int64},
                                    ptrelt::Ptr{Int64}, ielt::Ptr{Int64}, lielt::Ref{Int64},
                                    aelt::Ptr{Float32}, laelt::Ref{Int64})::Cvoid
end

function mc37br(::Type{Float64}, ::Type{Int64}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt,
                aelt, laelt)
  @ccall libhsl_subset_64.mc37bd_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, ip::Ptr{Int64},
                                     numelt::Ref{Int64}, ptrelt::Ptr{Int64}, ielt::Ptr{Int64},
                                     lielt::Ref{Int64}, aelt::Ptr{Float64},
                                     laelt::Ref{Int64})::Cvoid
end

function mc37br(::Type{Float128}, ::Type{Int64}, n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt,
                lielt, aelt, laelt)
  @ccall libhsl_subset_64.mc37bq_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float128},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, ip::Ptr{Int64},
                                     numelt::Ref{Int64}, ptrelt::Ptr{Int64}, ielt::Ptr{Int64},
                                     lielt::Ref{Int64}, aelt::Ptr{Float128},
                                     laelt::Ref{Int64})::Cvoid
end
