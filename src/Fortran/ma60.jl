function ma60id(icntl, keep, rkeep)
    @ccall libhsl.ma60id_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ma60ad(n, nz, a, irn, icn, rhs, x, y, d, w, iw, kase, omega, erx, job, cond,
                noiter, icntl, keep, rkeep)
    @ccall libhsl.ma60ad_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          icn::Ptr{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64},
                          y::Ptr{Float64}, d::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Cint},
                          kase::Ref{Cint}, omega::Ptr{Float64}, erx::Ref{Float64},
                          job::Ptr{Cint}, cond::Ptr{Float64}, noiter::Ref{Cint},
                          icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ma60bd(a, nz, n, irn, icn, z, js)
    @ccall libhsl.ma60bd_(a::Ptr{Float64}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                          icn::Ptr{Cint}, z::Ptr{Float64}, js::Ref{Cint})::Cvoid
end

function ma60cd(a, nz, n, irn, icn, rhs, x, r, w, js)
    @ccall libhsl.ma60cd_(a::Ptr{Float64}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                          icn::Ptr{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64},
                          r::Ptr{Float64}, w::Ptr{Float64}, js::Ref{Cint})::Cvoid
end

function ma60fd(n, r, w)
    @ccall libhsl.ma60fd_(n::Ref{Cint}, r::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function ma60i(icntl, keep, rkeep)
    @ccall libhsl.ma60i_(icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ma60a(n, nz, a, irn, icn, rhs, x, y, d, w, iw, kase, omega, erx, job, cond, noiter,
               icntl, keep, rkeep)
    @ccall libhsl.ma60a_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         icn::Ptr{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32},
                         y::Ptr{Float32}, d::Ptr{Float32}, w::Ptr{Float32}, iw::Ptr{Cint},
                         kase::Ref{Cint}, omega::Ptr{Float32}, erx::Ref{Float32},
                         job::Ptr{Cint}, cond::Ptr{Float32}, noiter::Ref{Cint},
                         icntl::Ptr{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float32})::Cvoid
end

function ma60b(a, nz, n, irn, icn, z, js)
    @ccall libhsl.ma60b_(a::Ptr{Float32}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                         icn::Ptr{Cint}, z::Ptr{Float32}, js::Ref{Cint})::Cvoid
end

function ma60c(a, nz, n, irn, icn, rhs, x, r, w, js)
    @ccall libhsl.ma60c_(a::Ptr{Float32}, nz::Ref{Cint}, n::Ref{Cint}, irn::Ptr{Cint},
                         icn::Ptr{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32},
                         r::Ptr{Float32}, w::Ptr{Float32}, js::Ref{Cint})::Cvoid
end

function ma60f(n, r, w)
    @ccall libhsl.ma60f_(n::Ref{Cint}, r::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end
