function ym01ar(::Type{Float32}, ::Type{Int32}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset.ym01a_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                              ibw::Ref{Int32}, itype::Ref{Int32}, nonsin::Ref{Cint},
                              irn::Ptr{Int32}, a::Ptr{Float32}, jcolst::Ptr{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function ym01ar(::Type{Float64}, ::Type{Int32}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset.ym01ad_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                               ibw::Ref{Int32}, itype::Ref{Int32}, nonsin::Ref{Cint},
                               irn::Ptr{Int32}, a::Ptr{Float64}, jcolst::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function ym01ar(::Type{Float128}, ::Type{Int32}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset.ym01aq_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                               ibw::Ref{Int32}, itype::Ref{Int32}, nonsin::Ref{Cint},
                               irn::Ptr{Int32}, a::Ptr{Float128}, jcolst::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function ym01ar(::Type{Float32}, ::Type{Int64}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset_64.ym01a_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                    nzout::Ref{Int64}, ibw::Ref{Int64}, itype::Ref{Int64},
                                    nonsin::Ref{Cint}, irn::Ptr{Int64}, a::Ptr{Float32},
                                    jcolst::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function ym01ar(::Type{Float64}, ::Type{Int64}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset_64.ym01ad_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                     nzout::Ref{Int64}, ibw::Ref{Int64}, itype::Ref{Int64},
                                     nonsin::Ref{Cint}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     jcolst::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function ym01ar(::Type{Float128}, ::Type{Int64}, m, n, nzin, nzout, ibw, itype, nonsin, irn, a,
                jcolst, iw)
  @ccall libhsl_subset_64.ym01aq_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                     nzout::Ref{Int64}, ibw::Ref{Int64}, itype::Ref{Int64},
                                     nonsin::Ref{Cint}, irn::Ptr{Int64}, a::Ptr{Float128},
                                     jcolst::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function ym01br(::Type{Float32}, ::Type{Int32}, n, m, perm, invprm)
  @ccall libhsl_subset.ym01b_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32},
                              invprm::Ptr{Int32})::Cvoid
end

function ym01br(::Type{Float64}, ::Type{Int32}, n, m, perm, invprm)
  @ccall libhsl_subset.ym01bd_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32},
                               invprm::Ptr{Int32})::Cvoid
end

function ym01br(::Type{Float128}, ::Type{Int32}, n, m, perm, invprm)
  @ccall libhsl_subset.ym01bq_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32},
                               invprm::Ptr{Int32})::Cvoid
end

function ym01br(::Type{Float32}, ::Type{Int64}, n, m, perm, invprm)
  @ccall libhsl_subset_64.ym01b_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                    invprm::Ptr{Int64})::Cvoid
end

function ym01br(::Type{Float64}, ::Type{Int64}, n, m, perm, invprm)
  @ccall libhsl_subset_64.ym01bd_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                     invprm::Ptr{Int64})::Cvoid
end

function ym01br(::Type{Float128}, ::Type{Int64}, n, m, perm, invprm)
  @ccall libhsl_subset_64.ym01bq_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                     invprm::Ptr{Int64})::Cvoid
end
