function ma44ad(m, n, m1, a, ia, b, res, x, iw, w, var, lp, mp)
    @ccall libhsl.ma44ad_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float64},
                          ia::Ref{Cint}, b::Ptr{Float64}, res::Ref{Cint}, x::Ptr{Float64},
                          iw::Ptr{Cint}, w::Ptr{Float64}, var::Ref{Float64}, lp::Ref{Cint},
                          mp::Ref{Cint})::Cvoid
end

function ma44dd(a, b, c, ia, nk, mxk, wk, beta)
    @ccall libhsl.ma44dd_(a::Ptr{Float64}, b::Ptr{Float64}, c::Ptr{Float64}, ia::Ref{Cint},
                          nk::Ref{Cint}, mxk::Ref{Cint}, wk::Ref{Float64},
                          beta::Ref{Float64})::Cvoid
end

function ma44ed(a, b, ia, m1, m)
    @ccall libhsl.ma44ed_(a::Ptr{Float64}, b::Ptr{Float64}, ia::Ref{Cint}, m1::Ref{Cint},
                          m::Ref{Cint})::Cvoid
end

function ma44fd(a, b, ia, m1, n, m)
    @ccall libhsl.ma44fd_(a::Ptr{Float64}, b::Ptr{Float64}, ia::Ref{Cint}, m1::Ref{Cint},
                          n::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function ma44bd(m, n, m1, a, ia, b, res, x, iw, w, var, lp, mp)
    @ccall libhsl.ma44bd_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float64},
                          ia::Ref{Cint}, b::Ptr{Float64}, res::Ref{Cint}, x::Ptr{Float64},
                          iw::Ptr{Cint}, w::Ptr{Float64}, var::Ref{Float64}, lp::Ref{Cint},
                          mp::Ref{Cint})::Cvoid
end

function ma44cd(m, n, m1, a, ia, iw, w, var, lp, mp, v, iv, std)
    @ccall libhsl.ma44cd_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float64},
                          ia::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, var::Ref{Float64},
                          lp::Ref{Cint}, mp::Ref{Cint}, v::Ptr{Float64}, iv::Ref{Cint},
                          std::Ptr{Float64})::Cvoid
end

function ma44a(m, n, m1, a, ia, b, res, x, iw, w, var, lp, mp)
    @ccall libhsl.ma44a_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float32},
                         ia::Ref{Cint}, b::Ptr{Float32}, res::Ref{Cint}, x::Ptr{Float32},
                         iw::Ptr{Cint}, w::Ptr{Float32}, var::Ref{Float32}, lp::Ref{Cint},
                         mp::Ref{Cint})::Cvoid
end

function ma44d(a, b, c, ia, nk, mxk, wk, beta)
    @ccall libhsl.ma44d_(a::Ptr{Float32}, b::Ptr{Float32}, c::Ptr{Float32}, ia::Ref{Cint},
                         nk::Ref{Cint}, mxk::Ref{Cint}, wk::Ref{Float32},
                         beta::Ref{Float32})::Cvoid
end

function ma44e(a, b, ia, m1, m)
    @ccall libhsl.ma44e_(a::Ptr{Float32}, b::Ptr{Float32}, ia::Ref{Cint}, m1::Ref{Cint},
                         m::Ref{Cint})::Cvoid
end

function ma44f(a, b, ia, m1, n, m)
    @ccall libhsl.ma44f_(a::Ptr{Float32}, b::Ptr{Float32}, ia::Ref{Cint}, m1::Ref{Cint},
                         n::Ref{Cint}, m::Ref{Cint})::Cvoid
end

function ma44b(m, n, m1, a, ia, b, res, x, iw, w, var, lp, mp)
    @ccall libhsl.ma44b_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float32},
                         ia::Ref{Cint}, b::Ptr{Float32}, res::Ref{Cint}, x::Ptr{Float32},
                         iw::Ptr{Cint}, w::Ptr{Float32}, var::Ref{Float32}, lp::Ref{Cint},
                         mp::Ref{Cint})::Cvoid
end

function ma44c(m, n, m1, a, ia, iw, w, var, lp, mp, v, iv, std)
    @ccall libhsl.ma44c_(m::Ref{Cint}, n::Ref{Cint}, m1::Ref{Cint}, a::Ptr{Float32},
                         ia::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, var::Ref{Float32},
                         lp::Ref{Cint}, mp::Ref{Cint}, v::Ptr{Float32}, iv::Ref{Cint},
                         std::Ptr{Float32})::Cvoid
end
