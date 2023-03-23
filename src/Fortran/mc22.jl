function mc22ac(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.mc22ac_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{ComplexF32}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc22ad(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.mc22ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc22a(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.mc22a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc22az(n, icn, a, nz, lenrow, ip, iq, iw, iw1)
  @ccall libhsl.mc22az_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{ComplexF64}, nz::Ref{Cint}, lenrow::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end
