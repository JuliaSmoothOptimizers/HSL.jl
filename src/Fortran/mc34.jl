function mc34ad(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl.mc34ad_(n::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint}, yesa::Ref{Cint},
                        a::Ptr{Float64}, iw::Ptr{Cint})::Cvoid
end

function mc34ad_64(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset_64.mc34ad_64_(n::Ref{Int64}, irn::Ptr{Int64}, jcolst::Ptr{Int64},
                                     yesa::Ref{Int64}, a::Ptr{Float64}, iw::Ptr{Int64})::Cvoid
end

function mc34a(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl.mc34a_(n::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint}, yesa::Ref{Cint},
                       a::Ptr{Float32}, iw::Ptr{Cint})::Cvoid
end

function mc34a_64(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl_subset_64.mc34a_64_(n::Ref{Int64}, irn::Ptr{Int64}, jcolst::Ptr{Int64},
                                    yesa::Ref{Int64}, a::Ptr{Float32}, iw::Ptr{Int64})::Cvoid
end
