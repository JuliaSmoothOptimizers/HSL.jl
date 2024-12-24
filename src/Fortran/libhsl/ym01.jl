function ym01ad(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl.ym01ad_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                        ibw::Ref{Cint}, itype::Ref{Cint}, nonsin::Ref{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64}, jcolst::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ym01bd(n, m, perm, invprm)
  @ccall libhsl.ym01bd_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end

function ym01a(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl.ym01a_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                       ibw::Ref{Cint}, itype::Ref{Cint}, nonsin::Ref{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32}, jcolst::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ym01b(n, m, perm, invprm)
  @ccall libhsl.ym01b_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end
