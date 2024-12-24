function mc34ar(::Type{Float32}, ::Type{Int32}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset.mc34a_(n::Ref{Int32}, irn::Ptr{Int32}, jcolst::Ptr{Int32}, yesa::Ref{Cint},
                              a::Ptr{Float32}, iw::Ptr{Int32})::Cvoid
end

function mc34ar(::Type{Float64}, ::Type{Int32}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset.mc34ad_(n::Ref{Int32}, irn::Ptr{Int32}, jcolst::Ptr{Int32}, yesa::Ref{Cint},
                               a::Ptr{Float64}, iw::Ptr{Int32})::Cvoid
end

function mc34ar(::Type{Float128}, ::Type{Int32}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset.mc34aq_(n::Ref{Int32}, irn::Ptr{Int32}, jcolst::Ptr{Int32}, yesa::Ref{Cint},
                               a::Ptr{Float128}, iw::Ptr{Int32})::Cvoid
end

function mc34ar(::Type{Float32}, ::Type{Int64}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset_64.mc34a_64_(n::Ref{Int64}, irn::Ptr{Int64}, jcolst::Ptr{Int64},
                                    yesa::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Int64})::Cvoid
end

function mc34ar(::Type{Float64}, ::Type{Int64}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset_64.mc34ad_64_(n::Ref{Int64}, irn::Ptr{Int64}, jcolst::Ptr{Int64},
                                     yesa::Ref{Cint}, a::Ptr{Float64}, iw::Ptr{Int64})::Cvoid
end

function mc34ar(::Type{Float128}, ::Type{Int64}, n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset_64.mc34aq_64_(n::Ref{Int64}, irn::Ptr{Int64}, jcolst::Ptr{Int64},
                                     yesa::Ref{Cint}, a::Ptr{Float128}, iw::Ptr{Int64})::Cvoid
end
