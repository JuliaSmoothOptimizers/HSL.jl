function ma30ad(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl.ma30ad_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint}, lenc::Ptr{Cint}, ifirst::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint}, iptr::Ptr{Cint}, ipc::Ptr{Cint}, u::Ref{Float64}, iflag::Ref{Cint})::Cvoid
end

function ma30bd(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag)
  @ccall libhsl.ma30bd_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, w::Ptr{Float64}, iw::Ptr{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma30dd(a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl.ma30dd_(a::Ptr{Float64}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint}, iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function ma30a(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr, nextr, lastc, nextc, iptr, ipc, u, iflag)
  @ccall libhsl.ma30a_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint}, lenc::Ptr{Cint}, ifirst::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint}, iptr::Ptr{Cint}, ipc::Ptr{Cint}, u::Ref{Float32}, iflag::Ref{Cint})::Cvoid
end

function ma30b(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag)
  @ccall libhsl.ma30b_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, w::Ptr{Float32}, iw::Ptr{Cint}, iflag::Ref{Cint})::Cvoid
end

function ma30d(a, icn, iptr, n, iactiv, itop, reals)
  @ccall libhsl.ma30d_(a::Ptr{Float32}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint}, iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint})::Cvoid
end
