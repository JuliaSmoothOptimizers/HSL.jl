function mc71ar(::Type{Float32}, ::Type{Int32}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset.mc71a_(n::Ref{Int32}, kase::Ref{Int32}, x::Ptr{Float32}, est::Ref{Float32},
                              w::Ptr{Float32}, iw::Ptr{Int32}, keep::Ptr{Int32})::Cvoid
end

function mc71ar(::Type{Float64}, ::Type{Int32}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset.mc71ad_(n::Ref{Int32}, kase::Ref{Int32}, x::Ptr{Float64}, est::Ref{Float64},
                               w::Ptr{Float64}, iw::Ptr{Int32}, keep::Ptr{Int32})::Cvoid
end

function mc71ar(::Type{Float128}, ::Type{Int32}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset.mc71aq_(n::Ref{Int32}, kase::Ref{Int32}, x::Ptr{Float128},
                               est::Ref{Float128}, w::Ptr{Float128}, iw::Ptr{Int32},
                               keep::Ptr{Int32})::Cvoid
end

function mc71ar(::Type{Float32}, ::Type{Int64}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset_64.mc71a_64_(n::Ref{Int64}, kase::Ref{Int64}, x::Ptr{Float32},
                                    est::Ref{Float32}, w::Ptr{Float32}, iw::Ptr{Int64},
                                    keep::Ptr{Int64})::Cvoid
end

function mc71ar(::Type{Float64}, ::Type{Int64}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset_64.mc71ad_64_(n::Ref{Int64}, kase::Ref{Int64}, x::Ptr{Float64},
                                     est::Ref{Float64}, w::Ptr{Float64}, iw::Ptr{Int64},
                                     keep::Ptr{Int64})::Cvoid
end

function mc71ar(::Type{Float128}, ::Type{Int64}, n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset_64.mc71aq_64_(n::Ref{Int64}, kase::Ref{Int64}, x::Ptr{Float128},
                                     est::Ref{Float128}, w::Ptr{Float128}, iw::Ptr{Int64},
                                     keep::Ptr{Int64})::Cvoid
end
