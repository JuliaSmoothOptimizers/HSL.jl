function mi26id(icntl, cntl, isave, rsave)
  @ccall libhsl.mi26id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint},
                        rsave::Ptr{Float64})::Cvoid
end

function mi26id_64(icntl, cntl, isave, rsave)
  @ccall libhsl_subset_64.mi26id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64})::Cvoid
end

function mi26ad(iact, n, w, ldw, locy, locz, resid, icntl, cntl, info, isave, rsave)
  @ccall libhsl.mi26ad_(iact::Ref{Cint}, n::Ref{Cint}, w::Ptr{Float64}, ldw::Ref{Cint},
                        locy::Ref{Cint}, locz::Ref{Cint}, resid::Ref{Float64}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint}, isave::Ptr{Cint},
                        rsave::Ptr{Float64})::Cvoid
end

function mi26ad_64(iact, n, w, ldw, locy, locz, resid, icntl, cntl, info, isave, rsave)
  @ccall libhsl_subset_64.mi26ad_64_(iact::Ref{Int64}, n::Ref{Int64}, w::Ptr{Float64},
                                     ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                     resid::Ref{Float64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, isave::Ptr{Int64},
                                     rsave::Ptr{Float64})::Cvoid
end

function mi26i(icntl, cntl, isave, rsave)
  @ccall libhsl.mi26i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint},
                       rsave::Ptr{Float32})::Cvoid
end

function mi26i_64(icntl, cntl, isave, rsave)
  @ccall libhsl_subset_64.mi26i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32}, isave::Ptr{Int64},
                                    rsave::Ptr{Float32})::Cvoid
end

function mi26a(iact, n, w, ldw, locy, locz, resid, icntl, cntl, info, isave, rsave)
  @ccall libhsl.mi26a_(iact::Ref{Cint}, n::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint},
                       locy::Ref{Cint}, locz::Ref{Cint}, resid::Ref{Float32}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint}, isave::Ptr{Cint},
                       rsave::Ptr{Float32})::Cvoid
end

function mi26a_64(iact, n, w, ldw, locy, locz, resid, icntl, cntl, info, isave, rsave)
  @ccall libhsl_subset_64.mi26a_64_(iact::Ref{Int64}, n::Ref{Int64}, w::Ptr{Float32},
                                    ldw::Ref{Int64}, locy::Ref{Int64}, locz::Ref{Int64},
                                    resid::Ref{Float32}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, isave::Ptr{Int64}, rsave::Ptr{Float32})::Cvoid
end
