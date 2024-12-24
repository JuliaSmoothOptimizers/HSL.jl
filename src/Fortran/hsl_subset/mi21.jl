function mi21ir(::Type{Float32}, ::Type{Int32}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset.mi21i_(icntl::Ptr{Int32}, cntl::Ptr{Float32}, isave::Ptr{Int32},
                              rsave::Ptr{Float32})::Cvoid
end

function mi21ir(::Type{Float64}, ::Type{Int32}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset.mi21id_(icntl::Ptr{Int32}, cntl::Ptr{Float64}, isave::Ptr{Int32},
                               rsave::Ptr{Float64})::Cvoid
end

function mi21ir(::Type{Float128}, ::Type{Int32}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset.mi21iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128}, isave::Ptr{Int32},
                               rsave::Ptr{Float128})::Cvoid
end

function mi21ir(::Type{Float32}, ::Type{Int64}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset_64.mi21i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, isave::Ptr{Int64},
                                    rsave::Ptr{Float32})::Cvoid
end

function mi21ir(::Type{Float64}, ::Type{Int64}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset_64.mi21id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64})::Cvoid
end

function mi21ir(::Type{Float128}, ::Type{Int64}, icntl, cntl, isave, rsave)
  @ccall libhsl_subset_64.mi21iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128}, isave::Ptr{Int64},
                                     rsave::Ptr{Float128})::Cvoid
end

function mi21ar(::Type{Float32}, ::Type{Int32}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset.mi21a_(iact::Ref{Int32}, n::Ref{Int32}, w::Ptr{Float32}, ldw::Ref{Int32},
                              locy::Ref{Int32}, locz::Ref{Int32}, resid::Ref{Float32},
                              icntl::Ptr{Int32}, cntl::Ptr{Float32}, info::Ptr{Int32},
                              isave::Ptr{Int32}, rsave::Ptr{Float32})::Cvoid
end

function mi21ar(::Type{Float64}, ::Type{Int32}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset.mi21ad_(iact::Ref{Int32}, n::Ref{Int32}, w::Ptr{Float64}, ldw::Ref{Int32},
                               locy::Ref{Int32}, locz::Ref{Int32}, resid::Ref{Float64},
                               icntl::Ptr{Int32}, cntl::Ptr{Float64}, info::Ptr{Int32},
                               isave::Ptr{Int32}, rsave::Ptr{Float64})::Cvoid
end

function mi21ar(::Type{Float128}, ::Type{Int32}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset.mi21aq_(iact::Ref{Int32}, n::Ref{Int32}, w::Ptr{Float128}, ldw::Ref{Int32},
                               locy::Ref{Int32}, locz::Ref{Int32}, resid::Ref{Float128},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               isave::Ptr{Int32}, rsave::Ptr{Float128})::Cvoid
end

function mi21ar(::Type{Float32}, ::Type{Int64}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset_64.mi21a_64_(iact::Ref{Int64}, n::Ref{Int64}, w::Ptr{Float32},
                                    ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                    resid::Ref{Float32}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, isave::Ptr{Int64}, rsave::Ptr{Float32})::Cvoid
end

function mi21ar(::Type{Float64}, ::Type{Int64}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset_64.mi21ad_64_(iact::Ref{Int64}, n::Ref{Int64}, w::Ptr{Float64},
                                     ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                     resid::Ref{Float64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64})::Cvoid
end

function mi21ar(::Type{Float128}, ::Type{Int64}, iact, n, w, ldw, locy, locz, resid, icntl, cntl,
                info, isave, rsave)
  @ccall libhsl_subset_64.mi21aq_64_(iact::Ref{Int64}, n::Ref{Int64}, w::Ptr{Float128},
                                     ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                     resid::Ref{Float128}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float128})::Cvoid
end
