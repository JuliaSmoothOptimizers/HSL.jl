function ma28ad(n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w, iflag)
  @ccall libhsl.ma28ad_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        irn::Ptr{Cint}, lirn::Ref{Cint}, icn::Ptr{Cint}, u::Ref{Float64},
                        ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, iflag::Ref{Cint})::Cvoid
end

function ma28bd(n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w, iflag)
  @ccall libhsl.ma28bd_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        ivect::Ptr{Cint}, jvect::Ptr{Cint}, icn::Ptr{Cint}, ikeep::Ptr{Cint},
                        iw::Ptr{Cint}, w::Ptr{Float64}, iflag::Ref{Cint})::Cvoid
end

function ma28cd(n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl.ma28cd_(n::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, icn::Ptr{Cint},
                        ikeep::Ptr{Cint}, rhs::Ptr{Float64}, w::Ptr{Float64},
                        mtype::Ref{Cint})::Cvoid
end

function ma28dd(n, a, licn, ivect, jvect, nz, icn, lenr, lenrl, lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl.ma28dd_(n::Ref{Cint}, a::Ptr{Float64}, licn::Ref{Cint}, ivect::Ptr{Cint},
                        jvect::Ptr{Cint}, nz::Ref{Cint}, icn::Ptr{Cint}, lenr::Ptr{Cint},
                        lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                        iw1::Ptr{Cint}, iw::Ptr{Cint}, w1::Ref{Float64}, iflag::Ref{Cint})::Cvoid
end

function ma28id(n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep, rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl.ma28id_(n::Ref{Cint}, nz::Ref{Cint}, aorg::Ptr{Float64}, irnorg::Ptr{Cint},
                        icnorg::Ptr{Cint}, licn::Ref{Cint}, a::Ptr{Float64}, icn::Ptr{Cint},
                        ikeep::Ptr{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64}, r::Ptr{Float64},
                        w::Ptr{Float64}, mtype::Ref{Cint}, prec::Ref{Float64},
                        iflag::Ref{Cint})::Cvoid
end

function ma28a(n, nz, a, licn, irn, lirn, icn, u, ikeep, iw, w, iflag)
  @ccall libhsl.ma28a_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       irn::Ptr{Cint}, lirn::Ref{Cint}, icn::Ptr{Cint}, u::Ref{Float32},
                       ikeep::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, iflag::Ref{Cint})::Cvoid
end

function ma28b(n, nz, a, licn, ivect, jvect, icn, ikeep, iw, w, iflag)
  @ccall libhsl.ma28b_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       ivect::Ptr{Cint}, jvect::Ptr{Cint}, icn::Ptr{Cint}, ikeep::Ptr{Cint},
                       iw::Ptr{Cint}, w::Ptr{Float32}, iflag::Ref{Cint})::Cvoid
end

function ma28c(n, a, licn, icn, ikeep, rhs, w, mtype)
  @ccall libhsl.ma28c_(n::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, icn::Ptr{Cint},
                       ikeep::Ptr{Cint}, rhs::Ptr{Float32}, w::Ptr{Float32},
                       mtype::Ref{Cint})::Cvoid
end

function ma28d(n, a, licn, ivect, jvect, nz, icn, lenr, lenrl, lenoff, ip, iq, iw1, iw, w1, iflag)
  @ccall libhsl.ma28d_(n::Ref{Cint}, a::Ptr{Float32}, licn::Ref{Cint}, ivect::Ptr{Cint},
                       jvect::Ptr{Cint}, nz::Ref{Cint}, icn::Ptr{Cint}, lenr::Ptr{Cint},
                       lenrl::Ptr{Cint}, lenoff::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint},
                       iw1::Ptr{Cint}, iw::Ptr{Cint}, w1::Ref{Float32}, iflag::Ref{Cint})::Cvoid
end

function ma28i(n, nz, aorg, irnorg, icnorg, licn, a, icn, ikeep, rhs, x, r, w, mtype, prec, iflag)
  @ccall libhsl.ma28i_(n::Ref{Cint}, nz::Ref{Cint}, aorg::Ptr{Float32}, irnorg::Ptr{Cint},
                       icnorg::Ptr{Cint}, licn::Ref{Cint}, a::Ptr{Float32}, icn::Ptr{Cint},
                       ikeep::Ptr{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, r::Ptr{Float32},
                       w::Ptr{Float32}, mtype::Ref{Cint}, prec::Ref{Float32},
                       iflag::Ref{Cint})::Cvoid
end
