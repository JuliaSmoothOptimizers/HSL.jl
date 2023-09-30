function td22id(icntl, cntl, keep, rkeep)
  @ccall libhsl.td22id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint},
                        rkeep::Ptr{Float64})::Cvoid
end

function td22ad(m, n, irn, ip, h, x, f, hmax, a, ig, w, iflag, icntl, cntl, info, keep, rkeep)
  @ccall libhsl.td22ad_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, h::Ptr{Float64},
                        x::Ptr{Float64}, f::Ptr{Float64}, hmax::Ptr{Float64}, a::Ptr{Float64},
                        ig::Ptr{Cint}, w::Ptr{Float64}, iflag::Ref{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float64}, info::Ptr{Cint}, keep::Ptr{Cint},
                        rkeep::Ptr{Float64})::Cvoid
end

function td22bd(m, n, irn, ip, h, x, f, w, ia, iflag, icntl, info, keep, rkeep)
  @ccall libhsl.td22bd_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, h::Ptr{Float64},
                        x::Ptr{Float64}, f::Ptr{Float64}, w::Ptr{Float64}, ia::Ref{Cint},
                        iflag::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, keep::Ptr{Cint},
                        rkeep::Ptr{Float64})::Cvoid
end

function td22cd(n, irn, ip, ia, mbd, icntl, info)
  @ccall libhsl.td22cd_(n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ia::Ref{Cint}, mbd::Ref{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function td22i(icntl, cntl, keep, rkeep)
  @ccall libhsl.td22i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, keep::Ptr{Cint},
                       rkeep::Ptr{Float32})::Cvoid
end

function td22a(m, n, irn, ip, h, x, f, hmax, a, ig, w, iflag, icntl, cntl, info, keep, rkeep)
  @ccall libhsl.td22a_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, h::Ptr{Float32},
                       x::Ptr{Float32}, f::Ptr{Float32}, hmax::Ptr{Float32}, a::Ptr{Float32},
                       ig::Ptr{Cint}, w::Ptr{Float32}, iflag::Ref{Cint}, icntl::Ptr{Cint},
                       cntl::Ptr{Float32}, info::Ptr{Cint}, keep::Ptr{Cint},
                       rkeep::Ptr{Float32})::Cvoid
end

function td22b(m, n, irn, ip, h, x, f, w, ia, iflag, icntl, info, keep, rkeep)
  @ccall libhsl.td22b_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, h::Ptr{Float32},
                       x::Ptr{Float32}, f::Ptr{Float32}, w::Ptr{Float32}, ia::Ref{Cint},
                       iflag::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, keep::Ptr{Cint},
                       rkeep::Ptr{Float32})::Cvoid
end

function td22c(n, irn, ip, ia, mbd, icntl, info)
  @ccall libhsl.td22c_(n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ia::Ref{Cint}, mbd::Ref{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
