function mi11id(icntl, cntl)
  @ccall libhsl.mi11id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function mi11ad(n, nz, index, a, ip, jcn, factor, ifptr, iw, icntl, cntl, info)
  @ccall libhsl.mi11ad_(n::Ref{Cint}, nz::Ref{Cint}, index::Ptr{Cint}, a::Ptr{Float64},
                        ip::Ptr{Cint}, jcn::Ptr{Cint}, factor::Ptr{Float64}, ifptr::Ptr{Cint},
                        iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function mi11bd(trans, n, nz, jcn, factor, ifptr, iw, y, z, w)
  @ccall libhsl.mi11bd_(trans::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint},
                        factor::Ptr{Float64}, ifptr::Ptr{Cint}, iw::Ptr{Cint}, y::Ptr{Float64},
                        z::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function mi11cd(n, nz, jcn, factor, ifptr, iperm, irow, iw, icntl, cntl, info)
  @ccall libhsl.mi11cd_(n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, factor::Ptr{Float64},
                        ifptr::Ptr{Cint}, iperm::Ptr{Cint}, irow::Ptr{Cint}, iw::Ptr{Cint},
                        icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function mi11i(icntl, cntl)
  @ccall libhsl.mi11i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function mi11a(n, nz, index, a, ip, jcn, factor, ifptr, iw, icntl, cntl, info)
  @ccall libhsl.mi11a_(n::Ref{Cint}, nz::Ref{Cint}, index::Ptr{Cint}, a::Ptr{Float32},
                       ip::Ptr{Cint}, jcn::Ptr{Cint}, factor::Ptr{Float32}, ifptr::Ptr{Cint},
                       iw::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function mi11b(trans, n, nz, jcn, factor, ifptr, iw, y, z, w)
  @ccall libhsl.mi11b_(trans::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint},
                       factor::Ptr{Float32}, ifptr::Ptr{Cint}, iw::Ptr{Cint}, y::Ptr{Float32},
                       z::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function mi11c(n, nz, jcn, factor, ifptr, iperm, irow, iw, icntl, cntl, info)
  @ccall libhsl.mi11c_(n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, factor::Ptr{Float32},
                       ifptr::Ptr{Cint}, iperm::Ptr{Cint}, irow::Ptr{Cint}, iw::Ptr{Cint},
                       icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end
