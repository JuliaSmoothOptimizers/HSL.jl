function mi24ir(::Type{Float32}, ::Type{Int32}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset.mi24i_(icntl::Ptr{Int32}, cntl::Ptr{Float32}, isave::Ptr{Int32},
                              rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi24ir(::Type{Float64}, ::Type{Int32}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset.mi24id_(icntl::Ptr{Int32}, cntl::Ptr{Float64}, isave::Ptr{Int32},
                               rsave::Ptr{Float64}, lsave::Ptr{Cint})::Cvoid
end

function mi24ir(::Type{Float128}, ::Type{Int32}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset.mi24iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128}, isave::Ptr{Int32},
                               rsave::Ptr{Float128}, lsave::Ptr{Cint})::Cvoid
end

function mi24ir(::Type{Float32}, ::Type{Int64}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, isave::Ptr{Int64},
                                    rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi24ir(::Type{Float64}, ::Type{Int64}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64}, lsave::Ptr{Cint})::Cvoid
end

function mi24ir(::Type{Float128}, ::Type{Int64}, icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128}, isave::Ptr{Int64},
                                     rsave::Ptr{Float128}, lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float32}, ::Type{Int32}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset.mi24a_(iact::Ref{Int32}, n::Ref{Int32}, m::Ref{Int32}, w::Ptr{Float32},
                              ldw::Ref{Int32}, locy::Ref{Int32}, locz::Ref{Int32}, h::Ptr{Float32},
                              ldh::Ref{Int32}, resid::Ref{Float32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, isave::Ptr{Int32},
                              rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float64}, ::Type{Int32}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset.mi24ad_(iact::Ref{Int32}, n::Ref{Int32}, m::Ref{Int32}, w::Ptr{Float64},
                               ldw::Ref{Int32}, locy::Ref{Int32}, locz::Ref{Int32}, h::Ptr{Float64},
                               ldh::Ref{Int32}, resid::Ref{Float64}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, info::Ptr{Int32}, isave::Ptr{Int32},
                               rsave::Ptr{Float64}, lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float128}, ::Type{Int32}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset.mi24aq_(iact::Ref{Int32}, n::Ref{Int32}, m::Ref{Int32}, w::Ptr{Float128},
                               ldw::Ref{Int32}, locy::Ref{Int32}, locz::Ref{Int32},
                               h::Ptr{Float128}, ldh::Ref{Int32}, resid::Ref{Float128},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               isave::Ptr{Int32}, rsave::Ptr{Float128}, lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float32}, ::Type{Int64}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24a_64_(iact::Ref{Int64}, n::Ref{Int64}, m::Ref{Int64}, w::Ptr{Float32},
                                    ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                    h::Ptr{Float32}, ldh::Ref{Int64}, resid::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    isave::Ptr{Int64}, rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float64}, ::Type{Int64}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24ad_64_(iact::Ref{Int64}, n::Ref{Int64}, m::Ref{Int64},
                                     w::Ptr{Float64}, ldw::Ref{Int64}, locy::Ref{Int64},
                                     locz::Ref{Int64}, h::Ptr{Float64}, ldh::Ref{Int64},
                                     resid::Ref{Float64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, isave::Ptr{Int64}, rsave::Ptr{Float64},
                                     lsave::Ptr{Cint})::Cvoid
end

function mi24ar(::Type{Float128}, ::Type{Int64}, iact, n, m, w, ldw, locy, locz, h, ldh, resid,
                icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24aq_64_(iact::Ref{Int64}, n::Ref{Int64}, m::Ref{Int64},
                                     w::Ptr{Float128}, ldw::Ref{Int64}, locy::Ref{Int64},
                                     locz::Ref{Int64}, h::Ptr{Float128}, ldh::Ref{Int64},
                                     resid::Ref{Float128}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, isave::Ptr{Int64}, rsave::Ptr{Float128},
                                     lsave::Ptr{Cint})::Cvoid
end
