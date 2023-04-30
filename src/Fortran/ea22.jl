function ea22id(icntl, keep, rkeep)
    @ccall libhsl.ea22id_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ea22ad(n, numeig, numcol, eps, x, nx, d, u, w, lw, iw, kmult, ipos, icntl, keep,
                rkeep)
    @ccall libhsl.ea22ad_(n::Ref{Cint}, numeig::Ref{Cint}, numcol::Ref{Cint},
                          eps::Ref{Float64}, x::Ptr{Float64}, nx::Ref{Cint},
                          d::Ptr{Float64}, u::Ptr{Float64}, w::Ptr{Float64}, lw::Ref{Cint},
                          iw::Ptr{Cint}, kmult::Ref{Cint}, ipos::Ref{Cint},
                          icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ea22bd(n, g, p, eps, x, nx, d, u, w, b, q, v, r, kmult, ipos, icntl, keep, rkeep)
    @ccall libhsl.ea22bd_(n::Ref{Cint}, g::Ref{Cint}, p::Ref{Cint}, eps::Ref{Float64},
                          x::Ptr{Float64}, nx::Ref{Cint}, d::Ptr{Float64}, u::Ptr{Float64},
                          w::Ptr{Float64}, b::Ptr{Float64}, q::Ptr{Float64},
                          v::Ptr{Float64}, r::Ptr{Cint}, kmult::Ref{Cint}, ipos::Ref{Cint},
                          icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ea22ed(k, n, x, nx, ipos, iseed)
    @ccall libhsl.ea22ed_(k::Ref{Cint}, n::Ref{Cint}, x::Ptr{Float64}, nx::Ref{Cint},
                          ipos::Ref{Cint}, iseed::Ref{Cint})::Cvoid
end

function ea22fd(n, a, nd, d, v, eigvec, irot, iw)
    @ccall libhsl.ea22fd_(n::Ref{Cint}, a::Ptr{Float64}, nd::Ref{Cint}, d::Ptr{Float64},
                          v::Ptr{Float64}, eigvec::Ref{Cint}, irot::Ref{Cint},
                          iw::Ptr{Cint})::Cvoid
end

function ea22jd(n, v)
    @ccall libhsl.ea22jd_(n::Ref{Cint}, v::Ptr{Float64})::Cint
end

function ea22gd(n, a, b)
    @ccall libhsl.ea22gd_(n::Ref{Cint}, a::Ptr{Float64}, b::Ptr{Float64})::Float64
end

function ea22hd(n, a, ia, b, ib)
    @ccall libhsl.ea22hd_(n::Ref{Cint}, a::Ptr{Float64}, ia::Ref{Cint}, b::Ptr{Float64},
                          ib::Ref{Cint})::Float64
end

function ea22i(icntl, keep, rkeep)
    @ccall libhsl.ea22i_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ea22a(n, numeig, numcol, eps, x, nx, d, u, w, lw, iw, kmult, ipos, icntl, keep,
               rkeep)
    @ccall libhsl.ea22a_(n::Ref{Cint}, numeig::Ref{Cint}, numcol::Ref{Cint},
                         eps::Ref{Float32}, x::Ptr{Float32}, nx::Ref{Cint}, d::Ptr{Float32},
                         u::Ptr{Float32}, w::Ptr{Float32}, lw::Ref{Cint}, iw::Ptr{Cint},
                         kmult::Ref{Cint}, ipos::Ref{Cint}, icntl::Ptr{Cint},
                         keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ea22b(n, g, p, eps, x, nx, d, u, w, b, q, v, r, kmult, ipos, icntl, keep, rkeep)
    @ccall libhsl.ea22b_(n::Ref{Cint}, g::Ref{Cint}, p::Ref{Cint}, eps::Ref{Float32},
                         x::Ptr{Float32}, nx::Ref{Cint}, d::Ptr{Float32}, u::Ptr{Float32},
                         w::Ptr{Float32}, b::Ptr{Float32}, q::Ptr{Float32}, v::Ptr{Float32},
                         r::Ptr{Cint}, kmult::Ref{Cint}, ipos::Ref{Cint}, icntl::Ptr{Cint},
                         keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ea22e(k, n, x, nx, ipos, iseed)
    @ccall libhsl.ea22e_(k::Ref{Cint}, n::Ref{Cint}, x::Ptr{Float32}, nx::Ref{Cint},
                         ipos::Ref{Cint}, iseed::Ref{Cint})::Cvoid
end

function ea22f(n, a, nd, d, v, eigvec, irot, iw)
    @ccall libhsl.ea22f_(n::Ref{Cint}, a::Ptr{Float32}, nd::Ref{Cint}, d::Ptr{Float32},
                         v::Ptr{Float32}, eigvec::Ref{Cint}, irot::Ref{Cint},
                         iw::Ptr{Cint})::Cvoid
end

function ea22j(n, v)
    @ccall libhsl.ea22j_(n::Ref{Cint}, v::Ptr{Float32})::Cint
end

function ea22g(n, a, b)
    @ccall libhsl.ea22g_(n::Ref{Cint}, a::Ptr{Float32}, b::Ptr{Float32})::Float32
end

function ea22h(n, a, ia, b, ib)
    @ccall libhsl.ea22h_(n::Ref{Cint}, a::Ptr{Float32}, ia::Ref{Cint}, b::Ptr{Float32},
                         ib::Ref{Cint})::Float32
end
