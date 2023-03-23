function mc25ic(icntl)
  @ccall libhsl.mc25ic_(icntl::Ptr{Cint})::Cvoid
end

function mc25ac(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1, icntl, info)
  @ccall libhsl.mc25ac_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{ComplexF32}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc25id(icntl)
  @ccall libhsl.mc25id_(icntl::Ptr{Cint})::Cvoid
end

function mc25ad(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1, icntl, info)
  @ccall libhsl.mc25ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc25i(icntl)
  @ccall libhsl.mc25i_(icntl::Ptr{Cint})::Cvoid
end

function mc25a(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1, icntl, info)
  @ccall libhsl.mc25a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc25iz(icntl)
  @ccall libhsl.mc25iz_(icntl::Ptr{Cint})::Cvoid
end

function mc25az(n, icn, a, licn, lenr, idisp, ip, iq, lenoff, iw, iw1, icntl, info)
  @ccall libhsl.mc25az_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{ComplexF64}, licn::Ref{Cint}, lenr::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, lenoff::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
