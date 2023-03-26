function la15id(icntl, cntl, keep)
    @ccall libhsl.la15id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function la15ad(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
    @ccall libhsl.la15ad_(a::Ptr{Float64}, ind::Ptr{Cint}, nzero::Ref{Cint}, ia::Ref{Cint},
                          n::Ref{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64},
                          g::Ref{Float64}, u::Ref{Float64}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function la15bd(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
    @ccall libhsl.la15bd_(a::Ptr{Float64}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint},
                          ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, g::Ref{Float64},
                          b::Ptr{Float64}, trans::Ref{Cint}, icntl::Ptr{Cint},
                          keep::Ptr{Cint})::Cvoid
end

function la15cd(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
    @ccall libhsl.la15cd_(a::Ptr{Float64}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint},
                          ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, g::Ref{Float64},
                          u::Ref{Float64}, mm::Ref{Cint}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function la15ed(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
    @ccall libhsl.la15ed_(a::Ptr{Float64}, irn::Ptr{Cint}, ip::Ptr{Cint}, n::Ref{Cint},
                          iw::Ptr{Cint}, ia::Ref{Cint}, reals::Ref{Cint}, ncp::Ref{Cint},
                          lrow::Ref{Cint}, lcol::Ref{Cint})::Cvoid
end

function la15i(icntl, cntl, keep)
    @ccall libhsl.la15i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function la15a(a, ind, nzero, ia, n, ip, iw, w, g, u, icntl, cntl, keep)
    @ccall libhsl.la15a_(a::Ptr{Float32}, ind::Ptr{Cint}, nzero::Ref{Cint}, ia::Ref{Cint},
                         n::Ref{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32},
                         g::Ref{Float32}, u::Ref{Float32}, icntl::Ptr{Cint},
                         cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function la15b(a, ind, ia, n, ip, iw, w, g, b, trans, icntl, keep)
    @ccall libhsl.la15b_(a::Ptr{Float32}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint},
                         ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, g::Ref{Float32},
                         b::Ptr{Float32}, trans::Ref{Cint}, icntl::Ptr{Cint},
                         keep::Ptr{Cint})::Cvoid
end

function la15c(a, ind, ia, n, ip, iw, w, g, u, mm, icntl, cntl, keep)
    @ccall libhsl.la15c_(a::Ptr{Float32}, ind::Ptr{Cint}, ia::Ref{Cint}, n::Ref{Cint},
                         ip::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, g::Ref{Float32},
                         u::Ref{Float32}, mm::Ref{Cint}, icntl::Ptr{Cint},
                         cntl::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function la15e(a, irn, ip, n, iw, ia, reals, ncp, lrow, lcol)
    @ccall libhsl.la15e_(a::Ptr{Float32}, irn::Ptr{Cint}, ip::Ptr{Cint}, n::Ref{Cint},
                         iw::Ptr{Cint}, ia::Ref{Cint}, reals::Ref{Cint}, ncp::Ref{Cint},
                         lrow::Ref{Cint}, lcol::Ref{Cint})::Cvoid
end
