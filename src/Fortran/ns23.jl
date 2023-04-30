function ns23id(icntl, cntl, keep, rkeep, lkeep)
    @ccall libhsl.ns23id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, keep::Ptr{Cint},
                          rkeep::Ptr{Float64}, lkeep::Ptr{Cint})::Cvoid
end

function ns23ad(m, n, sac, stpmin, maxfun, iprint, irn, ip, a, irna, ipa, hmax, liw, iw, lw,
                w, x, f, deriv, iflag, icntl, cntl, info, rinfo, keep, rkeep, lkeep)
    @ccall libhsl.ns23ad_(m::Ref{Cint}, n::Ref{Cint}, sac::Ref{Float64},
                          stpmin::Ref{Float64}, maxfun::Ref{Cint}, iprint::Ref{Cint},
                          irn::Ptr{Cint}, ip::Ptr{Cint}, a::Ptr{Float64}, irna::Ptr{Cint},
                          ipa::Ptr{Cint}, hmax::Ref{Float64}, liw::Ref{Cint}, iw::Ptr{Cint},
                          lw::Ref{Cint}, w::Ptr{Float64}, x::Ptr{Float64}, f::Ptr{Float64},
                          deriv::Ptr{Float64}, iflag::Ref{Cint}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64},
                          keep::Ptr{Cint}, rkeep::Ptr{Float64}, lkeep::Ptr{Cint})::Cvoid
end

function ns23cd(m, n, irn, ip, irna, ipa, liw, iw, iflag, keep, rkeep)
    @ccall libhsl.ns23cd_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          irna::Ptr{Cint}, ipa::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                          iflag::Ref{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ns23dd(m, n, irn, ip, irna, ipa, liw, iw, lw, w, deriv, a, iflag, keep, rkeep)
    @ccall libhsl.ns23dd_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          irna::Ptr{Cint}, ipa::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                          lw::Ref{Cint}, w::Ptr{Float64}, deriv::Ptr{Float64},
                          a::Ptr{Float64}, iflag::Ref{Cint}, keep::Ptr{Cint},
                          rkeep::Ptr{Float64})::Cvoid
end

function ns23ed(m, n, irn, ip, irna, ipa, liw, iw, lw, w, deriv, a, r, v, s, iprint, pred,
                dd, dv, dg, icntl, keep, rkeep)
    @ccall libhsl.ns23ed_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          irna::Ptr{Cint}, ipa::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                          lw::Ref{Cint}, w::Ptr{Float64}, deriv::Ptr{Float64},
                          a::Ptr{Float64}, r::Ptr{Float64}, v::Ptr{Float64},
                          s::Ptr{Float64}, iprint::Ref{Cint}, pred::Ref{Float64},
                          dd::Ref{Float64}, dv::Ref{Float64}, dg::Ref{Float64},
                          icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ns23fd(m, n, irn, ip, a, irna, ipa, hmax, liw, iw, lw, w, icol, v, x, f, deriv,
                iflag, icntl, info, rinfo, keep, rkeep, lkeep)
    @ccall libhsl.ns23fd_(m::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          a::Ptr{Float64}, irna::Ptr{Cint}, ipa::Ptr{Cint},
                          hmax::Ref{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint},
                          w::Ptr{Float64}, icol::Ref{Cint}, v::Ptr{Float64},
                          x::Ptr{Float64}, f::Ptr{Float64}, deriv::Ptr{Float64},
                          iflag::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint},
                          rinfo::Ptr{Float64}, keep::Ptr{Cint}, rkeep::Ptr{Float64},
                          lkeep::Ptr{Cint})::Cvoid
end

function ns23gd(n, liw, iw, lw, w, v, keep)
    @ccall libhsl.ns23gd_(n::Ref{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint},
                          w::Ptr{Float64}, v::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ns23hd(m, n, a, x, ax, trans, irn, ip)
    @ccall libhsl.ns23hd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, x::Ptr{Float64},
                          ax::Ptr{Float64}, trans::Ref{Cint}, irn::Ptr{Cint},
                          ip::Ptr{Cint})::Cvoid
end
