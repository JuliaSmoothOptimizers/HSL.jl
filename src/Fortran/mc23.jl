function mc23ad(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl.mc23ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end

function mc23a(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1)
  @ccall libhsl.mc23a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint})::Cvoid
end
