function eb13id(icntl, cntl)
  @ccall libhsl.eb13id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function eb13ad(ind, n, numeig, nblock, nsteps, er, ei, ln, x, u, w, ikeep, rkeep, icntl, cntl,
                info, rinfo)
  @ccall libhsl.eb13ad_(ind::Ref{Cint}, n::Ref{Cint}, numeig::Ref{Cint}, nblock::Ref{Cint},
                        nsteps::Ref{Cint}, er::Ptr{Float64}, ei::Ptr{Float64}, ln::Ref{Cint},
                        x::Ptr{Float64}, u::Ptr{Float64}, w::Ptr{Float64}, ikeep::Ptr{Cint},
                        rkeep::Ptr{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function eb13bd(n, nblock, nsteps, er, ei, ln, x, u, w, nev, y, res, ikeep, rkeep)
  @ccall libhsl.eb13bd_(n::Ref{Cint}, nblock::Ref{Cint}, nsteps::Ref{Cint}, er::Ptr{Float64},
                        ei::Ptr{Float64}, ln::Ref{Cint}, x::Ptr{Float64}, u::Ptr{Float64},
                        w::Ptr{Float64}, nev::Ref{Cint}, y::Ptr{Float64}, res::Ptr{Float64},
                        ikeep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function eb13ed(n, w, ldw, v, ldv, m)
  @ccall libhsl.eb13ed_(n::Ref{Cint}, w::Ptr{Float64}, ldw::Ref{Cint}, v::Ptr{Float64},
                        ldv::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function eb13gd(nev, er, ei, vec, ratio, wrt1, d, c2, a2)
  @ccall libhsl.eb13gd_(nev::Ref{Cint}, er::Ptr{Float64}, ei::Ptr{Float64}, vec::Ptr{Float64},
                        ratio::Ref{Float64}, wrt1::Ref{Float64}, d::Ref{Float64}, c2::Ref{Float64},
                        a2::Ref{Float64})::Cvoid
end

function eb13hd(n, t1, t2, t3, x, lx, y, ly, z, lz, m)
  @ccall libhsl.eb13hd_(n::Ref{Cint}, t1::Ref{Float64}, t2::Ref{Float64}, t3::Ref{Float64},
                        x::Ptr{Float64}, lx::Ref{Cint}, y::Ptr{Float64}, ly::Ref{Cint},
                        z::Ptr{Float64}, lz::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function eb13jd(a, adim, n, p, r, work)
  @ccall libhsl.eb13jd_(a::Ptr{Float64}, adim::Ref{Cint}, n::Ref{Cint}, p::Ref{Cint}, r::Ref{Cint},
                        work::Ptr{Float64})::Cvoid
end

function eb13ld(n, low, a, ort, z)
  @ccall libhsl.eb13ld_(n::Ref{Cint}, low::Ref{Cint}, a::Ptr{Float64}, ort::Ptr{Float64},
                        z::Ptr{Float64})::Cvoid
end

function eb13md(a, v, n, l, b1, b2, eps, fail, na, nv, rmach)
  @ccall libhsl.eb13md_(a::Ptr{Float64}, v::Ptr{Float64}, n::Ref{Cint}, l::Ref{Cint}, b1::Ref{Cint},
                        b2::Ref{Cint}, eps::Ref{Float64}, fail::Ref{Cint}, na::Ref{Cint},
                        nv::Ref{Cint}, rmach::Ref{Float64})::Cvoid
end

function eb13nd(a, v, p, q, r, nl, nu, n, na, nv)
  @ccall libhsl.eb13nd_(a::Ptr{Float64}, v::Ptr{Float64}, p::Ref{Float64}, q::Ref{Float64},
                        r::Ref{Float64}, nl::Ref{Cint}, nu::Ref{Cint}, n::Ref{Cint}, na::Ref{Cint},
                        nv::Ref{Cint})::Cvoid
end

function eb13od(a, v, n, l, e1, e2, na, nv, rmach)
  @ccall libhsl.eb13od_(a::Ptr{Float64}, v::Ptr{Float64}, n::Ref{Cint}, l::Ref{Cint},
                        e1::Ref{Float64}, e2::Ref{Float64}, na::Ref{Cint}, nv::Ref{Cint},
                        rmach::Ref{Float64})::Cvoid
end

function eb13pd(a, b, c, d, e, f)
  @ccall libhsl.eb13pd_(a::Ref{Float64}, b::Ref{Float64}, c::Ref{Float64}, d::Ref{Float64},
                        e::Ref{Float64}, f::Ref{Float64})::Cvoid
end

function eb13qd(n, numeig, ln, y, ay, res, er, ei, jnfo, anorm)
  @ccall libhsl.eb13qd_(n::Ref{Cint}, numeig::Ref{Cint}, ln::Ref{Cint}, y::Ptr{Float64},
                        ay::Ptr{Float64}, res::Ptr{Float64}, er::Ptr{Float64}, ei::Ptr{Float64},
                        jnfo::Ref{Cint}, anorm::Ref{Float64})::Cvoid
end

function eb13rd(n, numcol, numeig, er, ei, y, x, w, ln, tw)
  @ccall libhsl.eb13rd_(n::Ref{Cint}, numcol::Ref{Cint}, numeig::Ref{Cint}, er::Ptr{Float64},
                        ei::Ptr{Float64}, y::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64},
                        ln::Ref{Cint}, tw::Ptr{Float64})::Cvoid
end

function eb13i(icntl, cntl)
  @ccall libhsl.eb13i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function eb13a(ind, n, numeig, nblock, nsteps, er, ei, ln, x, u, w, ikeep, rkeep, icntl, cntl, info,
               rinfo)
  @ccall libhsl.eb13a_(ind::Ref{Cint}, n::Ref{Cint}, numeig::Ref{Cint}, nblock::Ref{Cint},
                       nsteps::Ref{Cint}, er::Ptr{Float32}, ei::Ptr{Float32}, ln::Ref{Cint},
                       x::Ptr{Float32}, u::Ptr{Float32}, w::Ptr{Float32}, ikeep::Ptr{Cint},
                       rkeep::Ptr{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function eb13b(n, nblock, nsteps, er, ei, ln, x, u, w, nev, y, res, ikeep, rkeep)
  @ccall libhsl.eb13b_(n::Ref{Cint}, nblock::Ref{Cint}, nsteps::Ref{Cint}, er::Ptr{Float32},
                       ei::Ptr{Float32}, ln::Ref{Cint}, x::Ptr{Float32}, u::Ptr{Float32},
                       w::Ptr{Float32}, nev::Ref{Cint}, y::Ptr{Float32}, res::Ptr{Float32},
                       ikeep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function eb13e(n, w, ldw, v, ldv, m)
  @ccall libhsl.eb13e_(n::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint}, v::Ptr{Float32},
                       ldv::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function eb13g(nev, er, ei, vec, ratio, wrt1, d, c2, a2)
  @ccall libhsl.eb13g_(nev::Ref{Cint}, er::Ptr{Float32}, ei::Ptr{Float32}, vec::Ptr{Float32},
                       ratio::Ref{Float32}, wrt1::Ref{Float32}, d::Ref{Float32}, c2::Ref{Float32},
                       a2::Ref{Float32})::Cvoid
end

function eb13h(n, t1, t2, t3, x, lx, y, ly, z, lz, m)
  @ccall libhsl.eb13h_(n::Ref{Cint}, t1::Ref{Float32}, t2::Ref{Float32}, t3::Ref{Float32},
                       x::Ptr{Float32}, lx::Ref{Cint}, y::Ptr{Float32}, ly::Ref{Cint},
                       z::Ptr{Float32}, lz::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function eb13j(a, adim, n, p, r, work)
  @ccall libhsl.eb13j_(a::Ptr{Float32}, adim::Ref{Cint}, n::Ref{Cint}, p::Ref{Cint}, r::Ref{Cint},
                       work::Ptr{Float32})::Cvoid
end

function eb13l(n, low, a, ort, z)
  @ccall libhsl.eb13l_(n::Ref{Cint}, low::Ref{Cint}, a::Ptr{Float32}, ort::Ptr{Float32},
                       z::Ptr{Float32})::Cvoid
end

function eb13m(a, v, n, l, b1, b2, eps, fail, na, nv, rmach)
  @ccall libhsl.eb13m_(a::Ptr{Float32}, v::Ptr{Float32}, n::Ref{Cint}, l::Ref{Cint}, b1::Ref{Cint},
                       b2::Ref{Cint}, eps::Ref{Float32}, fail::Ref{Cint}, na::Ref{Cint},
                       nv::Ref{Cint}, rmach::Ref{Float32})::Cvoid
end

function eb13n(a, v, p, q, r, nl, nu, n, na, nv)
  @ccall libhsl.eb13n_(a::Ptr{Float32}, v::Ptr{Float32}, p::Ref{Float32}, q::Ref{Float32},
                       r::Ref{Float32}, nl::Ref{Cint}, nu::Ref{Cint}, n::Ref{Cint}, na::Ref{Cint},
                       nv::Ref{Cint})::Cvoid
end

function eb13o(a, v, n, l, e1, e2, na, nv, rmach)
  @ccall libhsl.eb13o_(a::Ptr{Float32}, v::Ptr{Float32}, n::Ref{Cint}, l::Ref{Cint},
                       e1::Ref{Float32}, e2::Ref{Float32}, na::Ref{Cint}, nv::Ref{Cint},
                       rmach::Ref{Float32})::Cvoid
end

function eb13p(a, b, c, d, e, f)
  @ccall libhsl.eb13p_(a::Ref{Float32}, b::Ref{Float32}, c::Ref{Float32}, d::Ref{Float32},
                       e::Ref{Float32}, f::Ref{Float32})::Cvoid
end

function eb13q(n, numeig, ln, y, ay, res, er, ei, jnfo, anorm)
  @ccall libhsl.eb13q_(n::Ref{Cint}, numeig::Ref{Cint}, ln::Ref{Cint}, y::Ptr{Float32},
                       ay::Ptr{Float32}, res::Ptr{Float32}, er::Ptr{Float32}, ei::Ptr{Float32},
                       jnfo::Ref{Cint}, anorm::Ref{Float32})::Cvoid
end

function eb13r(n, numcol, numeig, er, ei, y, x, w, ln, tw)
  @ccall libhsl.eb13r_(n::Ref{Cint}, numcol::Ref{Cint}, numeig::Ref{Cint}, er::Ptr{Float32},
                       ei::Ptr{Float32}, y::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32},
                       ln::Ref{Cint}, tw::Ptr{Float32})::Cvoid
end
