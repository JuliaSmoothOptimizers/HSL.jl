function mi24id(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl.mi24id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint}, rsave::Ptr{Float64},
                        lsave::Ptr{Cint})::Cvoid
end

function mi24id_64(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64}, lsave::Ptr{Int64})::Cvoid
end

function mi24ad(iact, n, m, w, ldw, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave,
                lsave)
  @ccall libhsl.mi24ad_(iact::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint}, w::Ptr{Float64},
                        ldw::Ref{Cint}, locy::Ref{Cint}, locz::Ref{Cint}, h::Ptr{Float64},
                        ldh::Ref{Cint}, resid::Ref{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                        info::Ptr{Cint}, isave::Ptr{Cint}, rsave::Ptr{Float64},
                        lsave::Ptr{Cint})::Cvoid
end

function mi24ad_64(iact, n, m, w, ldw, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave,
                   lsave)
  @ccall libhsl_subset_64.mi24ad_64_(iact::Ref{Int64}, n::Ref{Int64}, m::Ref{Int64},
                                     w::Ptr{Float64}, ldw::Ref{Int64}, locy::Ref{Int64},
                                     locz::Ref{Int64}, h::Ptr{Float64}, ldh::Ref{Int64},
                                     resid::Ref{Float64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, isave::Ptr{Int64}, rsave::Ptr{Float64},
                                     lsave::Ptr{Int64})::Cvoid
end

function mi24i(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl.mi24i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint}, rsave::Ptr{Float32},
                       lsave::Ptr{Cint})::Cvoid
end

function mi24i_64(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl_subset_64.mi24i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, isave::Ptr{Int64},
                                    rsave::Ptr{Float32}, lsave::Ptr{Int64})::Cvoid
end

function mi24a(iact, n, m, w, ldw, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave,
               lsave)
  @ccall libhsl.mi24a_(iact::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint},
                       locy::Ref{Cint}, locz::Ref{Cint}, h::Ptr{Float32}, ldh::Ref{Cint},
                       resid::Ref{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       isave::Ptr{Cint}, rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi24a_64(iact, n, m, w, ldw, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave,
                  lsave)
  @ccall libhsl_subset_64.mi24a_64_(iact::Ref{Int64}, n::Ref{Int64}, m::Ref{Int64}, w::Ptr{Float32},
                                    ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                    h::Ptr{Float32}, ldh::Ref{Int64}, resid::Ref{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    isave::Ptr{Int64}, rsave::Ptr{Float32},
                                    lsave::Ptr{Int64})::Cvoid
end
