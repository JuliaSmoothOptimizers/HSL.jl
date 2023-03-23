function ma43id(icntl, cntl)
  @ccall libhsl.ma43id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function ma43ad(n, ne, more, irn, jcn, a, iw, keep, icntl, info)
  @ccall libhsl.ma43ad_(n::Ref{Cint}, ne::Ref{Cint}, more::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{Float64}, iw::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma43bd(n, ne, jcn, a, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, cntl, info, rinfo)
  @ccall libhsl.ma43bd_(n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, a::Ptr{Float64}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float64}, x::Ptr{Float64}, lfact::Ref{Cint}, fact::Ptr{Float64}, lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma43cd(trans, n, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, info)
  @ccall libhsl.ma43cd_(trans::Ref{Cint}, n::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float64}, x::Ptr{Float64}, lfact::Ref{Cint}, fact::Ptr{Float64}, lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma43i(icntl, cntl)
  @ccall libhsl.ma43i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function ma43a(n, ne, more, irn, jcn, a, iw, keep, icntl, info)
  @ccall libhsl.ma43a_(n::Ref{Cint}, ne::Ref{Cint}, more::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{Float32}, iw::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma43b(n, ne, jcn, a, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, cntl, info, rinfo)
  @ccall libhsl.ma43b_(n::Ref{Cint}, ne::Ref{Cint}, jcn::Ptr{Cint}, a::Ptr{Float32}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float32}, x::Ptr{Float32}, lfact::Ref{Cint}, fact::Ptr{Float32}, lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma43c(trans, n, nrhs, lx, b, x, lfact, fact, lifact, ifact, keep, icntl, info)
  @ccall libhsl.ma43c_(trans::Ref{Cint}, n::Ref{Cint}, nrhs::Ref{Cint}, lx::Ref{Cint}, b::Ptr{Float32}, x::Ptr{Float32}, lfact::Ref{Cint}, fact::Ptr{Float32}, lifact::Ref{Cint}, ifact::Ptr{Cint}, keep::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end
