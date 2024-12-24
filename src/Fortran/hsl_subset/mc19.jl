function mc19ar(::Type{Float32}, ::Type{Int32}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset.mc19a_(n::Ref{Int32}, na::Ref{Int32}, a::Ptr{Float32}, irn::Ptr{Int32},
                              icn::Ptr{Int32}, r::Ptr{Float32}, c::Ptr{Float32},
                              w::Ptr{Float32})::Cvoid
end

function mc19ar(::Type{Float64}, ::Type{Int32}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset.mc19ad_(n::Ref{Int32}, na::Ref{Int32}, a::Ptr{Float64}, irn::Ptr{Int32},
                               icn::Ptr{Int32}, r::Ptr{Float32}, c::Ptr{Float32},
                               w::Ptr{Float32})::Cvoid
end

function mc19ar(::Type{Float128}, ::Type{Int32}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset.mc19aq_(n::Ref{Int32}, na::Ref{Int32}, a::Ptr{Float128}, irn::Ptr{Int32},
                               icn::Ptr{Int32}, r::Ptr{Float32}, c::Ptr{Float32},
                               w::Ptr{Float32})::Cvoid
end

function mc19ar(::Type{Float32}, ::Type{Int64}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset_64.mc19a_64_(n::Ref{Int64}, na::Ref{Int64}, a::Ptr{Float32}, irn::Ptr{Int64},
                                    icn::Ptr{Int64}, r::Ptr{Float32}, c::Ptr{Float32},
                                    w::Ptr{Float32})::Cvoid
end

function mc19ar(::Type{Float64}, ::Type{Int64}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset_64.mc19ad_64_(n::Ref{Int64}, na::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float32},
                                     c::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function mc19ar(::Type{Float128}, ::Type{Int64}, n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset_64.mc19aq_64_(n::Ref{Int64}, na::Ref{Int64}, a::Ptr{Float128},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float32},
                                     c::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end
