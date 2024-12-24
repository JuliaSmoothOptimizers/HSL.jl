function ma75id(icntl, cntl)
  @ccall libhsl.ma75id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma75ad(m, n, itype, nzain, nza, yeswgt, wgt, a, ind, iptr, ata, lata, iata, liata, iw,
                icntl, cntl, info)
  @ccall libhsl.ma75ad_(m::Ref{Cint}, n::Ref{Cint}, itype::Ref{Cint}, nzain::Ref{Cint},
                        nza::Ref{Cint}, yeswgt::Ref{Cint}, wgt::Ptr{Float64}, a::Ptr{Float64},
                        ind::Ptr{Cint}, iptr::Ptr{Cint}, ata::Ptr{Float64}, lata::Ref{Cint},
                        iata::Ptr{Cint}, liata::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma75bd(m, n, nza, yeswgt, wgt, a, ind, iptr, ata, lata, iata, liata, res, rhs, x, w, iw)
  @ccall libhsl.ma75bd_(m::Ref{Cint}, n::Ref{Cint}, nza::Ref{Cint}, yeswgt::Ref{Cint},
                        wgt::Ptr{Float64}, a::Ptr{Float64}, ind::Ptr{Cint}, iptr::Ptr{Cint},
                        ata::Ptr{Float64}, lata::Ref{Cint}, iata::Ptr{Cint}, liata::Ref{Cint},
                        res::Ref{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64},
                        iw::Ptr{Cint})::Cvoid
end

function ma75cd(n, ata, lata, iata, liata, jcol, v, w, iw, icntl, info)
  @ccall libhsl.ma75cd_(n::Ref{Cint}, ata::Ptr{Float64}, lata::Ref{Cint}, iata::Ptr{Cint},
                        liata::Ref{Cint}, jcol::Ref{Cint}, v::Ptr{Float64}, w::Ptr{Float64},
                        iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma75dd(n, ata, lata, iata, liata, var, w, iw)
  @ccall libhsl.ma75dd_(n::Ref{Cint}, ata::Ptr{Float64}, lata::Ref{Cint}, iata::Ptr{Cint},
                        liata::Ref{Cint}, var::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Cint})::Cvoid
end

function ma75gd(n, z, lz, iz, jcn, ijcn, iperm, u, w, iflag)
  @ccall libhsl.ma75gd_(n::Ref{Cint}, z::Ptr{Float64}, lz::Ref{Cint}, iz::Ptr{Cint}, jcn::Ptr{Cint},
                        ijcn::Ptr{Cint}, iperm::Ptr{Cint}, u::Ptr{Float64}, w::Ptr{Float64},
                        iflag::Ptr{Cint})::Cvoid
end

function ma75i(icntl, cntl)
  @ccall libhsl.ma75i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma75a(m, n, itype, nzain, nza, yeswgt, wgt, a, ind, iptr, ata, lata, iata, liata, iw,
               icntl, cntl, info)
  @ccall libhsl.ma75a_(m::Ref{Cint}, n::Ref{Cint}, itype::Ref{Cint}, nzain::Ref{Cint},
                       nza::Ref{Cint}, yeswgt::Ref{Cint}, wgt::Ptr{Float32}, a::Ptr{Float32},
                       ind::Ptr{Cint}, iptr::Ptr{Cint}, ata::Ptr{Float32}, lata::Ref{Cint},
                       iata::Ptr{Cint}, liata::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma75b(m, n, nza, yeswgt, wgt, a, ind, iptr, ata, lata, iata, liata, res, rhs, x, w, iw)
  @ccall libhsl.ma75b_(m::Ref{Cint}, n::Ref{Cint}, nza::Ref{Cint}, yeswgt::Ref{Cint},
                       wgt::Ptr{Float32}, a::Ptr{Float32}, ind::Ptr{Cint}, iptr::Ptr{Cint},
                       ata::Ptr{Float32}, lata::Ref{Cint}, iata::Ptr{Cint}, liata::Ref{Cint},
                       res::Ref{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32},
                       iw::Ptr{Cint})::Cvoid
end

function ma75c(n, ata, lata, iata, liata, jcol, v, w, iw, icntl, info)
  @ccall libhsl.ma75c_(n::Ref{Cint}, ata::Ptr{Float32}, lata::Ref{Cint}, iata::Ptr{Cint},
                       liata::Ref{Cint}, jcol::Ref{Cint}, v::Ptr{Float32}, w::Ptr{Float32},
                       iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma75d(n, ata, lata, iata, liata, var, w, iw)
  @ccall libhsl.ma75d_(n::Ref{Cint}, ata::Ptr{Float32}, lata::Ref{Cint}, iata::Ptr{Cint},
                       liata::Ref{Cint}, var::Ptr{Float32}, w::Ptr{Float32}, iw::Ptr{Cint})::Cvoid
end

function ma75g(n, z, lz, iz, jcn, ijcn, iperm, u, w, iflag)
  @ccall libhsl.ma75g_(n::Ref{Cint}, z::Ptr{Float32}, lz::Ref{Cint}, iz::Ptr{Cint}, jcn::Ptr{Cint},
                       ijcn::Ptr{Cint}, iperm::Ptr{Cint}, u::Ptr{Float32}, w::Ptr{Float32},
                       iflag::Ptr{Cint})::Cvoid
end
