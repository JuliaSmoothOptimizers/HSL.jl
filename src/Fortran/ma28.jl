function ma28ad(n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w, iflag)
    @ccall libhsl.ma28ad_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                          irn::Ptr{Cint}, lirn::Ref{Cint}, icn::Ptr{Cint}, u::Ref{Float64},
                          ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64},
                          iflag::Ref{Cint})::Cvoid
end

function ma28bd(n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w, iflag)
    @ccall libhsl.ma28bd_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                          ivect::Ptr{Cint}, jvect::Ptr{Cint}, icn::Ptr{Cint},
                          ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64},
                          iflag::Ref{Cint})::Cvoid
end

function ma28dd(n, a, licn, ivect, jvect, nz, icn, lenr, lenrl, lenoff, ip, iq, iw1, iw, w1,
                iflag)
    @ccall libhsl.ma28dd_(n::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, ivect::Ptr{Cint},
                          jvect::Ptr{Cint}, nz::Ref{Cint}, icn::Ptr{Cint}, lenr::Ptr{Cint},
                          lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                          iw1::Ptr{Cint}, iw::Ptr{Cint}, w1::Ref{Float64},
                          iflag::Ref{Cint})::Cvoid
end

function ma28a(n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w, iflag)
    @ccall libhsl.ma28a_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                         irn::Ptr{Cint}, lirn::Ref{Cint}, icn::Ptr{Cint}, u::Ref{Float32},
                         ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32},
                         iflag::Ref{Cint})::Cvoid
end

function ma28b(n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w, iflag)
    @ccall libhsl.ma28b_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                         ivect::Ptr{Cint}, jvect::Ptr{Cint}, icn::Ptr{Cint},
                         ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32},
                         iflag::Ref{Cint})::Cvoid
end

function ma28d(n, a, licn, ivect, jvect, nz, icn, lenr, lenrl, lenoff, ip, iq, iw1, iw, w1,
               iflag)
    @ccall libhsl.ma28d_(n::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, ivect::Ptr{Cint},
                         jvect::Ptr{Cint}, nz::Ref{Cint}, icn::Ptr{Cint}, lenr::Ptr{Cint},
                         lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                         iw1::Ptr{Cint}, iw::Ptr{Cint}, w1::Ref{Float32},
                         iflag::Ref{Cint})::Cvoid
end
