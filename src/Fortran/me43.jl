function me43id(icntl, cntl)
    @ccall libhsl.me43id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function me43ad(n, ne, more, irn, jcn, a, iw, keep, icntl, info)
    @ccall libhsl.me43ad_(n::Ref{Cint}, ne::Ref{Cint}, more::Ref{Cint}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, a::Ptr{ComplexF64}, iw::Ptr{Cint},
                          keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me43bd(n, ne, jcn, a, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl,
                cntl, info, rinfo)
    @ccall libhsl.me43bd_(n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, a::Ptr{ComplexF64},
                          nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{ComplexF64},
                          x::Ptr{ComplexF64}, lfact::Ref{Cint}, fact::Ptr{ComplexF64},
                          lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint},
                          icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                          rinfo::Ptr{Float64})::Cvoid
end

function me43cd(kind, n, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, info)
    @ccall libhsl.me43cd_(kind::Ref{Cint}, n::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint},
                          b::Ptr{ComplexF64}, x::Ptr{ComplexF64}, lfact::Ref{Cint},
                          fact::Ptr{ComplexF64}, lifact::Ref{Cint}, ifact::Ptr{Cint},
                          keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me43i(icntl, cntl)
    @ccall libhsl.me43i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function me43a(n, ne, more, irn, jcn, a, iw, keep, icntl, info)
    @ccall libhsl.me43a_(n::Ref{Cint}, ne::Ref{Cint}, more::Ref{Cint}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, a::Ptr{ComplexF32}, iw::Ptr{Cint}, keep::Ptr{Cint},
                         icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me43b(n, ne, jcn, a, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, cntl,
               info, rinfo)
    @ccall libhsl.me43b_(n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, a::Ptr{ComplexF32},
                         nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{ComplexF32},
                         x::Ptr{ComplexF32}, lfact::Ref{Cint}, fact::Ptr{ComplexF32},
                         lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint},
                         icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                         rinfo::Ptr{Float32})::Cvoid
end

function me43c(kind, n, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, info)
    @ccall libhsl.me43c_(kind::Ref{Cint}, n::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint},
                         b::Ptr{ComplexF32}, x::Ptr{ComplexF32}, lfact::Ref{Cint},
                         fact::Ptr{ComplexF32}, lifact::Ref{Cint}, ifact::Ptr{Cint},
                         keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
