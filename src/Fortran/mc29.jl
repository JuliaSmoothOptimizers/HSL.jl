function mc29ad(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl.mc29ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                        icn::Ptr{Cint}, r::Ptr{Float64}, c::Ptr{Float64}, w::Ptr{Float64},
                        lp::Ref{Cint}, ifail::Ref{Cint})::Cvoid
end

function mc29ad_64(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset_64.mc29ad_64_(m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float64},
                                     c::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Int64},
                                     ifail::Ref{Int64})::Cvoid
end

function mc29a(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl.mc29a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                       icn::Ptr{Cint}, r::Ptr{Float32}, c::Ptr{Float32}, w::Ptr{Float32},
                       lp::Ref{Cint}, ifail::Ref{Cint})::Cvoid
end

function mc29a_64(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset_64.mc29a_64_(m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float32},
                                    c::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Int64},
                                    ifail::Ref{Int64})::Cvoid
end
