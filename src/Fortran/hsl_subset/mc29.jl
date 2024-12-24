function mc29ar(::Type{Float32}, ::Type{Int32}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset.mc29a_(m::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32},
                              irn::Ptr{Int32}, icn::Ptr{Int32}, r::Ptr{Float32}, c::Ptr{Float32},
                              w::Ptr{Float32}, lp::Ref{Int32}, ifail::Ref{Int32})::Cvoid
end

function mc29ar(::Type{Float64}, ::Type{Int32}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset.mc29ad_(m::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64},
                               irn::Ptr{Int32}, icn::Ptr{Int32}, r::Ptr{Float64}, c::Ptr{Float64},
                               w::Ptr{Float64}, lp::Ref{Int32}, ifail::Ref{Int32})::Cvoid
end

function mc29ar(::Type{Float128}, ::Type{Int32}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset.mc29aq_(m::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128},
                               irn::Ptr{Int32}, icn::Ptr{Int32}, r::Ptr{Float128}, c::Ptr{Float128},
                               w::Ptr{Float128}, lp::Ref{Int32}, ifail::Ref{Int32})::Cvoid
end

function mc29ar(::Type{Float32}, ::Type{Int64}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset_64.mc29a_64_(m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float32},
                                    c::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Int64},
                                    ifail::Ref{Int64})::Cvoid
end

function mc29ar(::Type{Float64}, ::Type{Int64}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset_64.mc29ad_64_(m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float64},
                                     c::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Int64},
                                     ifail::Ref{Int64})::Cvoid
end

function mc29ar(::Type{Float128}, ::Type{Int64}, m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl_subset_64.mc29aq_64_(m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float128},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float128},
                                     c::Ptr{Float128}, w::Ptr{Float128}, lp::Ref{Int64},
                                     ifail::Ref{Int64})::Cvoid
end
