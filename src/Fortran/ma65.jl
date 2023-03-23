function ma65ad(n, kl, ku, rowend, colend, a, thresh, ipiv, info)
  @ccall libhsl.ma65ad_(n::Ref{Cint}, kl::Ref{Cint}, ku::Ref{Cint}, rowend::Ptr{Cint}, colend::Ptr{Cint}, a::Ptr{Float64}, thresh::Ref{Float64}, ipiv::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma65bd(n, kl, ku, rowend, colend, a, ipiv, trans, x)
  @ccall libhsl.ma65bd_(n::Ref{Cint}, kl::Ref{Cint}, ku::Ref{Cint}, rowend::Ptr{Cint}, colend::Ptr{Cint}, a::Ptr{Float64}, ipiv::Ptr{Cint}, trans::Ref{Cint}, x::Ptr{Float64})::Cvoid
end

function ma65a(n, kl, ku, rowend, colend, a, thresh, ipiv, info)
  @ccall libhsl.ma65a_(n::Ref{Cint}, kl::Ref{Cint}, ku::Ref{Cint}, rowend::Ptr{Cint}, colend::Ptr{Cint}, a::Ptr{Float32}, thresh::Ref{Float32}, ipiv::Ptr{Cint}, info::Ref{Cint})::Cvoid
end

function ma65b(n, kl, ku, rowend, colend, a, ipiv, trans, x)
  @ccall libhsl.ma65b_(n::Ref{Cint}, kl::Ref{Cint}, ku::Ref{Cint}, rowend::Ptr{Cint}, colend::Ptr{Cint}, a::Ptr{Float32}, ipiv::Ptr{Cint}, trans::Ref{Cint}, x::Ptr{Float32})::Cvoid
end
