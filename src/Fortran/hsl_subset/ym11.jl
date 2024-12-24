function ym11ir(::Type{Float32}, ::Type{Int32}, icntl, iseed)
  @ccall libhsl_subset.ym11i_(icntl::Ptr{Int32}, iseed::Ref{Int32})::Cvoid
end

function ym11ir(::Type{Float64}, ::Type{Int32}, icntl, iseed)
  @ccall libhsl_subset.ym11id_(icntl::Ptr{Int32}, iseed::Ref{Int32})::Cvoid
end

function ym11ir(::Type{Float128}, ::Type{Int32}, icntl, iseed)
  @ccall libhsl_subset.ym11iq_(icntl::Ptr{Int32}, iseed::Ref{Int32})::Cvoid
end

function ym11ir(::Type{Float32}, ::Type{Int64}, icntl, iseed)
  @ccall libhsl_subset_64.ym11i_64_(icntl::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end

function ym11ir(::Type{Float64}, ::Type{Int64}, icntl, iseed)
  @ccall libhsl_subset_64.ym11id_64_(icntl::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end

function ym11ir(::Type{Float128}, ::Type{Int64}, icntl, iseed)
  @ccall libhsl_subset_64.ym11iq_64_(icntl::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end

function ym11ar(::Type{Float32}, ::Type{Int32}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset.ym11a_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, jcolst::Ptr{Int32}, iw::Ptr{Int32},
                              icntl::Ptr{Int32}, key::Ptr{UInt8}, iseed::Ref{Int32},
                              8::Csize_t)::Cvoid
end

function ym11ar(::Type{Float64}, ::Type{Int32}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset.ym11ad_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, jcolst::Ptr{Int32}, iw::Ptr{Int32},
                               icntl::Ptr{Int32}, key::Ptr{UInt8}, iseed::Ref{Int32},
                               8::Csize_t)::Cvoid
end

function ym11ar(::Type{Float128}, ::Type{Int32}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset.ym11aq_(m::Ref{Int32}, n::Ref{Int32}, nzin::Ref{Int32}, nzout::Ref{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, jcolst::Ptr{Int32},
                               iw::Ptr{Int32}, icntl::Ptr{Int32}, key::Ptr{UInt8},
                               iseed::Ref{Int32}, 8::Csize_t)::Cvoid
end

function ym11ar(::Type{Float32}, ::Type{Int64}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset_64.ym11a_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                    nzout::Ref{Int64}, irn::Ptr{Int64}, a::Ptr{Float32},
                                    jcolst::Ptr{Int64}, iw::Ptr{Int64}, icntl::Ptr{Int64},
                                    key::Ptr{UInt8}, iseed::Ref{Int64}, 8::Csize_t)::Cvoid
end

function ym11ar(::Type{Float64}, ::Type{Int64}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset_64.ym11ad_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                     nzout::Ref{Int64}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     jcolst::Ptr{Int64}, iw::Ptr{Int64}, icntl::Ptr{Int64},
                                     key::Ptr{UInt8}, iseed::Ref{Int64}, 8::Csize_t)::Cvoid
end

function ym11ar(::Type{Float128}, ::Type{Int64}, m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key,
                iseed)
  @ccall libhsl_subset_64.ym11aq_64_(m::Ref{Int64}, n::Ref{Int64}, nzin::Ref{Int64},
                                     nzout::Ref{Int64}, irn::Ptr{Int64}, a::Ptr{Float128},
                                     jcolst::Ptr{Int64}, iw::Ptr{Int64}, icntl::Ptr{Int64},
                                     key::Ptr{UInt8}, iseed::Ref{Int64}, 8::Csize_t)::Cvoid
end

function ym11br(::Type{Float32}, ::Type{Int32}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset.ym11b_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32}, invprm::Ptr{Int32},
                              iseed::Ref{Int32})::Cvoid
end

function ym11br(::Type{Float64}, ::Type{Int32}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset.ym11bd_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32}, invprm::Ptr{Int32},
                               iseed::Ref{Int32})::Cvoid
end

function ym11br(::Type{Float128}, ::Type{Int32}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset.ym11bq_(n::Ref{Int32}, m::Ref{Int32}, perm::Ptr{Int32}, invprm::Ptr{Int32},
                               iseed::Ref{Int32})::Cvoid
end

function ym11br(::Type{Float32}, ::Type{Int64}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset_64.ym11b_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                    invprm::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end

function ym11br(::Type{Float64}, ::Type{Int64}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset_64.ym11bd_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                     invprm::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end

function ym11br(::Type{Float128}, ::Type{Int64}, n, m, perm, invprm, iseed)
  @ccall libhsl_subset_64.ym11bq_64_(n::Ref{Int64}, m::Ref{Int64}, perm::Ptr{Int64},
                                     invprm::Ptr{Int64}, iseed::Ref{Int64})::Cvoid
end
