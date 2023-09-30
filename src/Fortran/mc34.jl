function mc34ad(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl.mc34ad_(n::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint}, yesa::Ref{Cint},
                        a::Ptr{Float64}, iw::Ptr{Cint})::Cvoid
end

function mc34a(n, irn, jcolst, yesa, a, iw)
  @ccall libhsl.mc34a_(n::Ref{Cint}, irn::Ptr{Cint}, jcolst::Ptr{Cint}, yesa::Ref{Cint},
                       a::Ptr{Float32}, iw::Ptr{Cint})::Cvoid
end
