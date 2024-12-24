function mc24ar(::Type{Float32}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset.mc24a_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float32}, licn::Ref{Int32},
                              lenr::Ptr{Int32}, lenrl::Ptr{Int32}, w::Ptr{Float32})::Cvoid
end

function mc24ar(::Type{Float64}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset.mc24ad_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float64}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, w::Ptr{Float64})::Cvoid
end

function mc24ar(::Type{Float128}, ::Type{Int32}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset.mc24aq_(n::Ref{Int32}, icn::Ptr{Int32}, a::Ptr{Float128}, licn::Ref{Int32},
                               lenr::Ptr{Int32}, lenrl::Ptr{Int32}, w::Ptr{Float128})::Cvoid
end

function mc24ar(::Type{Float32}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset_64.mc24a_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    w::Ptr{Float32})::Cvoid
end

function mc24ar(::Type{Float64}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset_64.mc24ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     w::Ptr{Float64})::Cvoid
end

function mc24ar(::Type{Float128}, ::Type{Int64}, n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset_64.mc24aq_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float128},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     w::Ptr{Float128})::Cvoid
end
