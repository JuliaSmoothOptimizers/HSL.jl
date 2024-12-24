function mc61ir(::Type{Float32}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc61i_(icntl::Ptr{Int32}, cntl::Ptr{Float32})::Cvoid
end

function mc61ir(::Type{Float64}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc61id_(icntl::Ptr{Int32}, cntl::Ptr{Float64})::Cvoid
end

function mc61ir(::Type{Float128}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc61iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128})::Cvoid
end

function mc61ir(::Type{Float32}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc61i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function mc61ir(::Type{Float64}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc61id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function mc61ir(::Type{Float128}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc61iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128})::Cvoid
end

function mc61ar(::Type{Float32}, ::Type{Int32}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset.mc61a_(job::Ref{Int32}, n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                              icptr::Ptr{Int32}, perm::Ptr{Int32}, liw::Ref{Int32}, iw::Ptr{Int32},
                              w::Ptr{Float32}, icntl::Ptr{Int32}, cntl::Ptr{Float32},
                              info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc61ar(::Type{Float64}, ::Type{Int32}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset.mc61ad_(job::Ref{Int32}, n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, perm::Ptr{Int32}, liw::Ref{Int32}, iw::Ptr{Int32},
                               w::Ptr{Float64}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function mc61ar(::Type{Float128}, ::Type{Int32}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset.mc61aq_(job::Ref{Int32}, n::Ref{Int32}, lirn::Ref{Int32}, irn::Ptr{Int32},
                               icptr::Ptr{Int32}, perm::Ptr{Int32}, liw::Ref{Int32}, iw::Ptr{Int32},
                               w::Ptr{Float128}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function mc61ar(::Type{Float32}, ::Type{Int64}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset_64.mc61a_64_(job::Ref{Int64}, n::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, perm::Ptr{Int64},
                                    liw::Ref{Int64}, iw::Ptr{Int64}, w::Ptr{Float32},
                                    icntl::Ptr{Int64}, cntl::Ptr{Float32}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function mc61ar(::Type{Float64}, ::Type{Int64}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset_64.mc61ad_64_(job::Ref{Int64}, n::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, perm::Ptr{Int64},
                                     liw::Ref{Int64}, iw::Ptr{Int64}, w::Ptr{Float64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function mc61ar(::Type{Float128}, ::Type{Int64}, job, n, lirn, irn, icptr, perm, liw, iw, w, icntl,
                cntl, info, rinfo)
  @ccall libhsl_subset_64.mc61aq_64_(job::Ref{Int64}, n::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, perm::Ptr{Int64},
                                     liw::Ref{Int64}, iw::Ptr{Int64}, w::Ptr{Float128},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end
