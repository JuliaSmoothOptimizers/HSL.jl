function mc30ar(::Type{Float32}, ::Type{Int32}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset.mc30a_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32}, irn::Ptr{Int32},
                              icn::Ptr{Int32}, s::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Int32},
                              ifail::Ref{Int32})::Cvoid
end

function mc30ar(::Type{Float64}, ::Type{Int32}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset.mc30ad_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64}, irn::Ptr{Int32},
                               icn::Ptr{Int32}, s::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Int32},
                               ifail::Ref{Int32})::Cvoid
end

function mc30ar(::Type{Float128}, ::Type{Int32}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset.mc30aq_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128}, irn::Ptr{Int32},
                               icn::Ptr{Int32}, s::Ptr{Float128}, w::Ptr{Float128}, lp::Ref{Int32},
                               ifail::Ref{Int32})::Cvoid
end

function mc30ar(::Type{Float32}, ::Type{Int64}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset_64.mc30a_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32}, irn::Ptr{Int64},
                                    icn::Ptr{Int64}, s::Ptr{Float32}, w::Ptr{Float32},
                                    lp::Ref{Int64}, ifail::Ref{Int64})::Cvoid
end

function mc30ar(::Type{Float64}, ::Type{Int64}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset_64.mc30ad_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, s::Ptr{Float64},
                                     w::Ptr{Float64}, lp::Ref{Int64}, ifail::Ref{Int64})::Cvoid
end

function mc30ar(::Type{Float128}, ::Type{Int64}, n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset_64.mc30aq_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float128},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, s::Ptr{Float128},
                                     w::Ptr{Float128}, lp::Ref{Int64}, ifail::Ref{Int64})::Cvoid
end
