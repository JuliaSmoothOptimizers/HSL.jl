function mf29ad(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl.mf29ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint}, icn::Ptr{Cint}, r::Ptr{Float64}, c::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Cint}, ifail::Ref{Cint})::Cvoid
end

function mf29a(m, n, ne, a, irn, icn, r, c, w, lp, ifail)
  @ccall libhsl.mf29a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint}, icn::Ptr{Cint}, r::Ptr{Float32}, c::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Cint}, ifail::Ref{Cint})::Cvoid
end
