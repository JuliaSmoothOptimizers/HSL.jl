function ym01ad(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl.ym01ad_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                        ibw::Ref{Cint}, itype::Ref{Cint}, nonsin::Ref{Cint}, irn::Ptr{Cint},
                        a::Ptr{Float64}, jcolst::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ym01ad_64(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl_subset_64.ym01ad_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                     nzout::Ref{Int64}, ibw::Ref{Int64}, itype::Ref{Int64},
                                     nonsin::Ref{Int64}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     jcolst::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function ym01bd(n, m, perm, invprm)
  @ccall libhsl.ym01bd_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end

function ym01bd_64(n, m, perm, invprm)
  @ccall libhsl_subset_64.ym01bd_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                     invprm::Ptr{Int64})::Cvoid
end

function ym01a(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl.ym01a_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                       ibw::Ref{Cint}, itype::Ref{Cint}, nonsin::Ref{Cint}, irn::Ptr{Cint},
                       a::Ptr{Float32}, jcolst::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function ym01a_64(m, n, nzin, nzout, ibw, itype, nonsin, irn, a, jcolst, iw)
  @ccall libhsl_subset_64.ym01a_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                    nzout::Ref{Int64}, ibw::Ref{Int64}, itype::Ref{Int64},
                                    nonsin::Ref{Int64}, irn::Ptr{Int64}, a::Ptr{Float32},
                                    jcolst::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function ym01b(n, m, perm, invprm)
  @ccall libhsl.ym01b_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end

function ym01b_64(n, m, perm, invprm)
  @ccall libhsl_subset_64.ym01b_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                    invprm::Ptr{Int64})::Cvoid
end
