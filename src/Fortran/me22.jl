function me22ad(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.me22ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function me22a(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.me22a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end
