function ma33id(icntl, cntl)
    @ccall libhsl.ma33id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma33ad(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst,
                lastr, nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
    @ccall libhsl.ma33ad_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                          lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint},
                          ip::Ptr{Cint}, iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint},
                          lenc::Ptr{Cint}, ifirst::Ptr{Cint}, lastr::Ptr{Cint},
                          nextr::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint},
                          iptr::Ptr{Cint}, ipc::Ptr{Cint}, u::Ref{Float64},
                          iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                          info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma33bd(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl,
                rinfo)
    @ccall libhsl.ma33bd_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                          lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint},
                          ip::Ptr{Cint}, iq::Ptr{Cint}, w::Ptr{Float64}, iw::Ptr{Cint},
                          iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64},
                          rinfo::Ptr{Float64})::Cvoid
end

function ma33dd(a, icn, iptr, n, iactiv, itop, reals, info)
    @ccall libhsl.ma33dd_(a::Ptr{Float64}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint},
                          iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint},
                          info::Ptr{Cint})::Cvoid
end

function ma33i(icntl, cntl)
    @ccall libhsl.ma33i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma33a(nn, icn, a, licn, lenr, lenrl, idisp, ip, iq, irn, lirn, lenc, ifirst, lastr,
               nextr, lastc, nextc, iptr, ipc, u, iflag, icntl, cntl, info, rinfo)
    @ccall libhsl.ma33a_(nn::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                         lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                         iq::Ptr{Cint}, irn::Ptr{Cint}, lirn::Ref{Cint}, lenc::Ptr{Cint},
                         ifirst::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint},
                         lastc::Ptr{Cint}, nextc::Ptr{Cint}, iptr::Ptr{Cint},
                         ipc::Ptr{Cint}, u::Ref{Float32}, iflag::Ref{Cint},
                         icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                         rinfo::Ptr{Float32})::Cvoid
end

function ma33b(n, icn, a, licn, lenr, lenrl, idisp, ip, iq, w, iw, iflag, icntl, cntl,
               rinfo)
    @ccall libhsl.ma33b_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                         lenr::Ptr{Cint}, lenrl::Ptr{Cint}, idisp::Ptr{Cint}, ip::Ptr{Cint},
                         iq::Ptr{Cint}, w::Ptr{Float32}, iw::Ptr{Cint}, iflag::Ref{Cint},
                         icntl::Ptr{Cint}, cntl::Ptr{Float32}, rinfo::Ptr{Float32})::Cvoid
end

function ma33d(a, icn, iptr, n, iactiv, itop, reals, info)
    @ccall libhsl.ma33d_(a::Ptr{Float32}, icn::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint},
                         iactiv::Ref{Cint}, itop::Ref{Cint}, reals::Ref{Cint},
                         info::Ptr{Cint})::Cvoid
end
