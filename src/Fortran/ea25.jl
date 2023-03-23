function ea25id(keep, rkeep)
  @ccall libhsl.ea25id_(keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ea25ad(n, el, er, acc, leig, lx, lalfa, lp, itape, iflag, u, v, eig, jeig, neig, x, del, nu, alfa, beta, keep, rkeep)
  @ccall libhsl.ea25ad_(n::Ref{Cint}, el::Ref{Float64}, er::Ref{Float64}, acc::Ref{Float64}, leig::Ref{Cint}, lx::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, itape::Ref{Cint}, iflag::Ref{Cint}, u::Ptr{Float64}, v::Ptr{Float64}, eig::Ptr{Float64}, jeig::Ptr{Cint}, neig::Ref{Cint}, x::Ptr{Float64}, del::Ptr{Float64}, nu::Ptr{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ea25cd(j, lalfa, alfa, beta, e, enorm, err, bnd, match)
  @ccall libhsl.ea25cd_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, e::Ref{Float64}, enorm::Ref{Float64}, err::Ref{Float64}, bnd::Ref{Float64}, match::Ref{Cint})::Cvoid
end

function ea25dd(n, alfa, beta, x, del, nu, dr, nur)
  @ccall libhsl.ea25dd_(n::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, x::Ref{Float64}, del::Ref{Float64}, nu::Ref{Cint}, dr::Ref{Float64}, nur::Ref{Cint})::Cvoid
end

function ea25ed(n, lalfa, lp, itape, eig, jeig, neig, alfa, beta, ly, lz, jflag, y, w, z, keep)
  @ccall libhsl.ea25ed_(n::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, itape::Ref{Cint}, eig::Ptr{Float64}, jeig::Ptr{Cint}, neig::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, ly::Ref{Cint}, lz::Ref{Cint}, jflag::Ref{Cint}, y::Ptr{Float64}, w::Ptr{Float64}, z::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ea25fd(n, itape, nlan, io, v, last)
  @ccall libhsl.ea25fd_(n::Ref{Cint}, itape::Ref{Cint}, nlan::Ref{Cint}, io::Ref{Cint}, v::Ptr{Float64}, last::Ref{Cint})::Cvoid
end

function ea25gd(j, lalfa, alfa, beta, e, match, z)
  @ccall libhsl.ea25gd_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, e::Ref{Float64}, match::Ref{Cint}, z::Ptr{Float64})::Cvoid
end

function ea25i(keep, rkeep)
  @ccall libhsl.ea25i_(keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ea25a(n, el, er, acc, leig, lx, lalfa, lp, itape, iflag, u, v, eig, jeig, neig, x, del, nu, alfa, beta, keep, rkeep)
  @ccall libhsl.ea25a_(n::Ref{Cint}, el::Ref{Float32}, er::Ref{Float32}, acc::Ref{Float32}, leig::Ref{Cint}, lx::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, itape::Ref{Cint}, iflag::Ref{Cint}, u::Ptr{Float32}, v::Ptr{Float32}, eig::Ptr{Float32}, jeig::Ptr{Cint}, neig::Ref{Cint}, x::Ptr{Float32}, del::Ptr{Float32}, nu::Ptr{Cint}, alfa::Ptr{Float32}, beta::Ptr{Float32}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ea25c(j, lalfa, alfa, beta, e, enorm, err, bnd, match)
  @ccall libhsl.ea25c_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float32}, beta::Ptr{Float32}, e::Ref{Float32}, enorm::Ref{Float32}, err::Ref{Float32}, bnd::Ref{Float32}, match::Ref{Cint})::Cvoid
end

function ea25d(n, alfa, beta, x, del, nu, dr, nur)
  @ccall libhsl.ea25d_(n::Ref{Cint}, alfa::Ptr{Float32}, beta::Ptr{Float32}, x::Ref{Float32}, del::Ref{Float32}, nu::Ref{Cint}, dr::Ref{Float32}, nur::Ref{Cint})::Cvoid
end

function ea25e(n, lalfa, lp, itape, eig, jeig, neig, alfa, beta, ly, lz, jflag, y, w, z, keep)
  @ccall libhsl.ea25e_(n::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, itape::Ref{Cint}, eig::Ptr{Float32}, jeig::Ptr{Cint}, neig::Ref{Cint}, alfa::Ptr{Float32}, beta::Ptr{Float32}, ly::Ref{Cint}, lz::Ref{Cint}, jflag::Ref{Cint}, y::Ptr{Float32}, w::Ptr{Float32}, z::Ptr{Float32}, keep::Ptr{Cint})::Cvoid
end

function ea25f(n, itape, nlan, io, v, last)
  @ccall libhsl.ea25f_(n::Ref{Cint}, itape::Ref{Cint}, nlan::Ref{Cint}, io::Ref{Cint}, v::Ptr{Float32}, last::Ref{Cint})::Cvoid
end

function ea25g(j, lalfa, alfa, beta, e, match, z)
  @ccall libhsl.ea25g_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float32}, beta::Ptr{Float32}, e::Ref{Float32}, match::Ref{Cint}, z::Ptr{Float32})::Cvoid
end
