function mc71ad(n, kase, x, est, w, iw, keep)
  @ccall libhsl.mc71ad_(n::Ref{Cint}, kase::Ref{Cint}, x::Ptr{Float64}, est::Ref{Float64},
                        w::Ptr{Float64}, iw::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function mc71ad_64(n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset_64.mc71ad_64_(n::Ref{Int64}, kase::Ref{Int64}, x::Ptr{Float64},
                                     est::Ref{Float64}, w::Ptr{Float64}, iw::Ptr{Int64},
                                     keep::Ptr{Int64})::Cvoid
end

function mc71a(n, kase, x, est, w, iw, keep)
  @ccall libhsl.mc71a_(n::Ref{Cint}, kase::Ref{Cint}, x::Ptr{Float32}, est::Ref{Float32},
                       w::Ptr{Float32}, iw::Ptr{Cint}, keep::Ptr{Cint})::Cvoid
end

function mc71a_64(n, kase, x, est, w, iw, keep)
  @ccall libhsl_subset_64.mc71a_64_(n::Ref{Int64}, kase::Ref{Int64}, x::Ptr{Float32},
                                    est::Ref{Float32}, w::Ptr{Float32}, iw::Ptr{Int64},
                                    keep::Ptr{Int64})::Cvoid
end
