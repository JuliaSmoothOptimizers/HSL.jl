function mi15id(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl.mi15id_(icntl::Ptr{Cint}, cntl::Ptr{Float64}, isave::Ptr{Cint}, rsave::Ptr{Float64}, lsave::Ptr{Cint})::Cvoid
end

function mi15ad(iact, n, m, w, ldw, z, ldz, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl.mi15ad_(iact::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint}, w::Ptr{Float64}, ldw::Ref{Cint}, z::Ptr{Float64}, ldz::Ref{Cint}, locy::Ref{Cint}, locz::Ref{Cint}, h::Ptr{Float64}, ldh::Ref{Cint}, resid::Ref{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, isave::Ptr{Cint}, rsave::Ptr{Float64}, lsave::Ptr{Cint})::Cvoid
end

function mi15i(icntl, cntl, isave, rsave, lsave)
  @ccall libhsl.mi15i_(icntl::Ptr{Cint}, cntl::Ptr{Float32}, isave::Ptr{Cint}, rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end

function mi15a(iact, n, m, w, ldw, z, ldz, locy, locz, h, ldh, resid, icntl, cntl, info, isave, rsave, lsave)
  @ccall libhsl.mi15a_(iact::Ref{Cint}, n::Ref{Cint}, m::Ref{Cint}, w::Ptr{Float32}, ldw::Ref{Cint}, z::Ptr{Float32}, ldz::Ref{Cint}, locy::Ref{Cint}, locz::Ref{Cint}, h::Ptr{Float32}, ldh::Ref{Cint}, resid::Ref{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, isave::Ptr{Cint}, rsave::Ptr{Float32}, lsave::Ptr{Cint})::Cvoid
end
