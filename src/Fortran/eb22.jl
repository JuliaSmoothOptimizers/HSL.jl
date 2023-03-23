function eb22id(icntl, keep, rkeep)
  @ccall libhsl.eb22id_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function eb22ad(ind, n, numeig, numcol, nlow, nup, eps, x, u, w, ln, tw, ltw, iw, er, ei, ipos, iflag, icntl, info, rinfo, keep, rkeep)
  @ccall libhsl.eb22ad_(ind::Ref{Cint}, n::Ref{Cint}, numeig::Ref{Cint}, numcol::Ref{Cint}, nlow::Ref{Cint}, nup::Ref{Cint}, eps::Ptr{Float64}, x::Ptr{Float64}, u::Ptr{Float64}, w::Ptr{Float64}, ln::Ref{Cint}, tw::Ptr{Float64}, ltw::Ref{Cint}, iw::Ptr{Cint}, er::Ptr{Float64}, ei::Ptr{Float64}, ipos::Ref{Cint}, iflag::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function eb22bd(n, numcol, er, ei, y, x, u, w, ln, tw, res, ipos, info, keep, rkeep)
  @ccall libhsl.eb22bd_(n::Ref{Cint}, numcol::Ref{Cint}, er::Ptr{Float64}, ei::Ptr{Float64}, y::Ptr{Float64}, x::Ptr{Float64}, u::Ptr{Float64}, w::Ptr{Float64}, ln::Ref{Cint}, tw::Ptr{Float64}, res::Ptr{Float64}, ipos::Ref{Cint}, info::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function eb22jd(n, m, z, zout)
  @ccall libhsl.eb22jd_(n::Ref{Cint}, m::Ref{Cint}, z::Ptr{Float64}, zout::Ptr{Float64})::Cvoid
end

function eb22kd(z1, z2, z3, cs)
  @ccall libhsl.eb22kd_(z1::Ptr{Float64}, z2::Ptr{Float64}, z3::Ptr{Float64}, cs::Ref{Float64})::Cvoid
end

function eb22ld(ch, m, d, a2, c2)
  @ccall libhsl.eb22ld_(ch::Ptr{Float64}, m::Ref{Cint}, d::Ref{Float64}, a2::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22md(im, nev, er, ei, vec, ratio, wrt1, d, c2)
  @ccall libhsl.eb22md_(im::Ref{Cint}, nev::Ref{Cint}, er::Ptr{Float64}, ei::Ptr{Float64}, vec::Ptr{Float64}, ratio::Ref{Float64}, wrt1::Ref{Float64}, d::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22nd(m, ch, j, k, iflag, d, a2, c2)
  @ccall libhsl.eb22nd_(m::Ref{Cint}, ch::Ptr{Float64}, j::Ref{Cint}, k::Ref{Cint}, iflag::Ref{Cint}, d::Ref{Float64}, a2::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22od(m, ch, j, k, l, iflag, rc, d, a2, c2)
  @ccall libhsl.eb22od_(m::Ref{Cint}, ch::Ptr{Float64}, j::Ref{Cint}, k::Ref{Cint}, l::Ref{Cint}, iflag::Ref{Cint}, rc::Ref{Float64}, d::Ref{Float64}, a2::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22pd(a, b, s, t, iflag, d, a2, c2)
  @ccall libhsl.eb22pd_(a::Ref{Float64}, b::Ref{Float64}, s::Ref{Float64}, t::Ref{Float64}, iflag::Ref{Cint}, d::Ref{Float64}, a2::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22qd(a, b, t, d, a2, c2)
  @ccall libhsl.eb22qd_(a::Ref{Float64}, b::Ref{Float64}, t::Ref{Float64}, d::Ref{Float64}, a2::Ref{Float64}, c2::Ref{Float64})::Cvoid
end

function eb22sd(a, v, n, l, b1, b2, eps, fail, na, nv, rmach)
  @ccall libhsl.eb22sd_(a::Ptr{Float64}, v::Ptr{Float64}, n::Ref{Cint}, l::Ref{Cint}, b1::Ref{Cint}, b2::Ref{Cint}, eps::Ref{Float64}, fail::Ref{Cint}, na::Ref{Cint}, nv::Ref{Cint}, rmach::Ref{Float64})::Cvoid
end

function eb22td(a, v, p, q, r, nl, nu, n, na, nv)
  @ccall libhsl.eb22td_(a::Ptr{Float64}, v::Ptr{Float64}, p::Ref{Float64}, q::Ref{Float64}, r::Ref{Float64}, nl::Ref{Cint}, nu::Ref{Cint}, n::Ref{Cint}, na::Ref{Cint}, nv::Ref{Cint})::Cvoid
end

function eb22ud(a, v, n, l, e1, e2, na, nv, rmach)
  @ccall libhsl.eb22ud_(a::Ptr{Float64}, v::Ptr{Float64}, n::Ref{Cint}, l::Ref{Cint}, e1::Ref{Float64}, e2::Ref{Float64}, na::Ref{Cint}, nv::Ref{Cint}, rmach::Ref{Float64})::Cvoid
end

function eb22vd(n, t1, t2, t3, x, y, z)
  @ccall libhsl.eb22vd_(n::Ref{Cint}, t1::Ref{Float64}, t2::Ref{Float64}, t3::Ref{Float64}, x::Ptr{Float64}, y::Ptr{Float64}, z::Ptr{Float64})::Cvoid
end

function eb22wd(a, adim, n, p, r, work, wantrs, nvecs)
  @ccall libhsl.eb22wd_(a::Ptr{Float64}, adim::Ref{Cint}, n::Ref{Cint}, p::Ref{Cint}, r::Ref{Cint}, work::Ptr{Float64}, wantrs::Ptr{UInt8}, nvecs::Ref{Cint})::Cvoid
end

function eb22xd(a, b, c, d, e, f)
  @ccall libhsl.eb22xd_(a::Ref{Float64}, b::Ref{Float64}, c::Ref{Float64}, d::Ref{Float64}, e::Ref{Float64}, f::Ref{Float64})::Cvoid
end

function eb22yd(n, numcol, ln, y, ay, res, er, ei, nvecs)
  @ccall libhsl.eb22yd_(n::Ref{Cint}, numcol::Ref{Cint}, ln::Ref{Cint}, y::Ptr{Float64}, ay::Ptr{Float64}, res::Ptr{Float64}, er::Ptr{Float64}, ei::Ptr{Float64}, nvecs::Ref{Cint})::Cvoid
end

function eb22zd(n, nlow, a, ort, z)
  @ccall libhsl.eb22zd_(n::Ref{Cint}, nlow::Ref{Cint}, a::Ptr{Float64}, ort::Ptr{Float64}, z::Ptr{Float64})::Cvoid
end

function eb22ed(a, bx1, bx2, nb, nr, na, n, root, e)
  @ccall libhsl.eb22ed_(a::Ptr{Float64}, bx1::Ref{Float64}, bx2::Ref{Float64}, nb::Ref{Cint}, nr::Ref{Cint}, na::Ref{Cint}, n::Ref{Cint}, root::Ptr{Float64}, e::Ptr{Float64})::Cvoid
end

function eb22i(icntl, keep, rkeep)
  @ccall libhsl.eb22i_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function eb22a(ind, n, numeig, numcol, nlow, nup, eps, x, u, w, ln, tw, ltw, iw, er, ei, ipos, iflag, icntl, info, rinfo, keep, rkeep)
  @ccall libhsl.eb22a_(ind::Ref{Cint}, n::Ref{Cint}, numeig::Ref{Cint}, numcol::Ref{Cint}, nlow::Ref{Cint}, nup::Ref{Cint}, eps::Ptr{Float32}, x::Ptr{Float32}, u::Ptr{Float32}, w::Ptr{Float32}, ln::Ref{Cint}, tw::Ptr{Float32}, ltw::Ref{Cint}, iw::Ptr{Cint}, er::Ptr{Float32}, ei::Ptr{Float32}, ipos::Ref{Cint}, iflag::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function eb22b(n, numcol, er, ei, y, x, u, w, ln, tw, res, ipos, info, keep, rkeep)
  @ccall libhsl.eb22b_(n::Ref{Cint}, numcol::Ref{Cint}, er::Ptr{Float32}, ei::Ptr{Float32}, y::Ptr{Float32}, x::Ptr{Float32}, u::Ptr{Float32}, w::Ptr{Float32}, ln::Ref{Cint}, tw::Ptr{Float32}, res::Ptr{Float32}, ipos::Ref{Cint}, info::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function eb22j(n, m, z, zout)
  @ccall libhsl.eb22j_(n::Ref{Cint}, m::Ref{Cint}, z::Ptr{Float32}, zout::Ptr{Float32})::Cvoid
end

function eb22k(z1, z2, z3, cs)
  @ccall libhsl.eb22k_(z1::Ptr{Float32}, z2::Ptr{Float32}, z3::Ptr{Float32}, cs::Ref{Float32})::Cvoid
end

function eb22l(ch, m, d, a2, c2)
  @ccall libhsl.eb22l_(ch::Ptr{Float32}, m::Ref{Cint}, d::Ref{Float32}, a2::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22m(im, nev, er, ei, vec, ratio, wrt1, d, c2)
  @ccall libhsl.eb22m_(im::Ref{Cint}, nev::Ref{Cint}, er::Ptr{Float32}, ei::Ptr{Float32}, vec::Ptr{Float32}, ratio::Ref{Float32}, wrt1::Ref{Float32}, d::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22n(m, ch, j, k, iflag, d, a2, c2)
  @ccall libhsl.eb22n_(m::Ref{Cint}, ch::Ptr{Float32}, j::Ref{Cint}, k::Ref{Cint}, iflag::Ref{Cint}, d::Ref{Float32}, a2::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22o(m, ch, j, k, l, iflag, rc, d, a2, c2)
  @ccall libhsl.eb22o_(m::Ref{Cint}, ch::Ptr{Float32}, j::Ref{Cint}, k::Ref{Cint}, l::Ref{Cint}, iflag::Ref{Cint}, rc::Ref{Float32}, d::Ref{Float32}, a2::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22p(a, b, s, t, iflag, d, a2, c2)
  @ccall libhsl.eb22p_(a::Ref{Float32}, b::Ref{Float32}, s::Ref{Float32}, t::Ref{Float32}, iflag::Ref{Cint}, d::Ref{Float32}, a2::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22q(a, b, t, d, a2, c2)
  @ccall libhsl.eb22q_(a::Ref{Float32}, b::Ref{Float32}, t::Ref{Float32}, d::Ref{Float32}, a2::Ref{Float32}, c2::Ref{Float32})::Cvoid
end

function eb22s(a, v, n, l, b1, b2, eps, fail, na, nv, rmach)
  @ccall libhsl.eb22s_(a::Ptr{Float32}, v::Ptr{Float32}, n::Ref{Cint}, l::Ref{Cint}, b1::Ref{Cint}, b2::Ref{Cint}, eps::Ref{Float32}, fail::Ref{Cint}, na::Ref{Cint}, nv::Ref{Cint}, rmach::Ref{Float32})::Cvoid
end

function eb22t(a, v, p, q, r, nl, nu, n, na, nv)
  @ccall libhsl.eb22t_(a::Ptr{Float32}, v::Ptr{Float32}, p::Ref{Float32}, q::Ref{Float32}, r::Ref{Float32}, nl::Ref{Cint}, nu::Ref{Cint}, n::Ref{Cint}, na::Ref{Cint}, nv::Ref{Cint})::Cvoid
end

function eb22u(a, v, n, l, e1, e2, na, nv, rmach)
  @ccall libhsl.eb22u_(a::Ptr{Float32}, v::Ptr{Float32}, n::Ref{Cint}, l::Ref{Cint}, e1::Ref{Float32}, e2::Ref{Float32}, na::Ref{Cint}, nv::Ref{Cint}, rmach::Ref{Float32})::Cvoid
end

function eb22v(n, t1, t2, t3, x, y, z)
  @ccall libhsl.eb22v_(n::Ref{Cint}, t1::Ref{Float32}, t2::Ref{Float32}, t3::Ref{Float32}, x::Ptr{Float32}, y::Ptr{Float32}, z::Ptr{Float32})::Cvoid
end

function eb22w(a, adim, n, p, r, work, wantrs, nvecs)
  @ccall libhsl.eb22w_(a::Ptr{Float32}, adim::Ref{Cint}, n::Ref{Cint}, p::Ref{Cint}, r::Ref{Cint}, work::Ptr{Float32}, wantrs::Ptr{UInt8}, nvecs::Ref{Cint})::Cvoid
end

function eb22x(a, b, c, d, e, f)
  @ccall libhsl.eb22x_(a::Ref{Float32}, b::Ref{Float32}, c::Ref{Float32}, d::Ref{Float32}, e::Ref{Float32}, f::Ref{Float32})::Cvoid
end

function eb22y(n, numcol, ln, y, ay, res, er, ei, nvecs)
  @ccall libhsl.eb22y_(n::Ref{Cint}, numcol::Ref{Cint}, ln::Ref{Cint}, y::Ptr{Float32}, ay::Ptr{Float32}, res::Ptr{Float32}, er::Ptr{Float32}, ei::Ptr{Float32}, nvecs::Ref{Cint})::Cvoid
end

function eb22z(n, nlow, a, ort, z)
  @ccall libhsl.eb22z_(n::Ref{Cint}, nlow::Ref{Cint}, a::Ptr{Float32}, ort::Ptr{Float32}, z::Ptr{Float32})::Cvoid
end

function eb22e(a, bx1, bx2, nb, nr, na, n, root, e)
  @ccall libhsl.eb22e_(a::Ptr{Float32}, bx1::Ref{Float32}, bx2::Ref{Float32}, nb::Ref{Cint}, nr::Ref{Cint}, na::Ref{Cint}, n::Ref{Cint}, root::Ptr{Float32}, e::Ptr{Float32})::Cvoid
end
