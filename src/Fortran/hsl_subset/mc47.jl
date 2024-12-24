function mc47ir(::Type{Float32}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc47i_(icntl::Ptr{Int32})::Cvoid
end

function mc47ir(::Type{Float64}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc47id_(icntl::Ptr{Int32})::Cvoid
end

function mc47ir(::Type{Float128}, ::Type{Int32}, icntl)
  @ccall libhsl_subset.mc47iq_(icntl::Ptr{Int32})::Cvoid
end

function mc47ir(::Type{Float32}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc47i_64_(icntl::Ptr{Int64})::Cvoid
end

function mc47ir(::Type{Float64}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc47id_64_(icntl::Ptr{Int64})::Cvoid
end

function mc47ir(::Type{Float128}, ::Type{Int64}, icntl)
  @ccall libhsl_subset_64.mc47iq_64_(icntl::Ptr{Int64})::Cvoid
end

function mc47ar(::Type{Float32}, ::Type{Int32}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset.mc47a_(n::Ref{Int32}, ne::Ref{Int32}, pe::Ptr{Int32}, iw::Ptr{Int32},
                              iwlen::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32},
                              rinfo::Ptr{Float32})::Cvoid
end

function mc47ar(::Type{Float64}, ::Type{Int32}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset.mc47ad_(n::Ref{Int32}, ne::Ref{Int32}, pe::Ptr{Int32}, iw::Ptr{Int32},
                               iwlen::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               rinfo::Ptr{Float64})::Cvoid
end

function mc47ar(::Type{Float128}, ::Type{Int32}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset.mc47aq_(n::Ref{Int32}, ne::Ref{Int32}, pe::Ptr{Int32}, iw::Ptr{Int32},
                               iwlen::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               rinfo::Ptr{Float128})::Cvoid
end

function mc47ar(::Type{Float32}, ::Type{Int64}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset_64.mc47a_64_(n::Ref{Int64}, ne::Ref{Int64}, pe::Ptr{Int64}, iw::Ptr{Int64},
                                    iwlen::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function mc47ar(::Type{Float64}, ::Type{Int64}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset_64.mc47ad_64_(n::Ref{Int64}, ne::Ref{Int64}, pe::Ptr{Int64}, iw::Ptr{Int64},
                                     iwlen::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function mc47ar(::Type{Float128}, ::Type{Int64}, n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset_64.mc47aq_64_(n::Ref{Int64}, ne::Ref{Int64}, pe::Ptr{Int64}, iw::Ptr{Int64},
                                     iwlen::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function mc47br(::Type{Float32}, ::Type{Int32}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset.mc47b_(n::Ref{Int32}, iwlen::Ref{Int32}, pe::Ptr{Int32}, pfree::Ref{Int32},
                              len::Ptr{Int32}, iw::Ptr{Int32}, nv::Ptr{Int32}, elen::Ptr{Int32},
                              last::Ptr{Int32}, degree::Ptr{Int32}, head::Ptr{Int32},
                              denxt::Ptr{Int32}, w::Ptr{Int32}, icntl::Ptr{Int32}, jnfo::Ptr{Int32},
                              rjnfo::Ptr{Float32})::Cvoid
end

function mc47br(::Type{Float64}, ::Type{Int32}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset.mc47bd_(n::Ref{Int32}, iwlen::Ref{Int32}, pe::Ptr{Int32}, pfree::Ref{Int32},
                               len::Ptr{Int32}, iw::Ptr{Int32}, nv::Ptr{Int32}, elen::Ptr{Int32},
                               last::Ptr{Int32}, degree::Ptr{Int32}, head::Ptr{Int32},
                               denxt::Ptr{Int32}, w::Ptr{Int32}, icntl::Ptr{Int32},
                               jnfo::Ptr{Int32}, rjnfo::Ptr{Float64})::Cvoid
end

function mc47br(::Type{Float128}, ::Type{Int32}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset.mc47bq_(n::Ref{Int32}, iwlen::Ref{Int32}, pe::Ptr{Int32}, pfree::Ref{Int32},
                               len::Ptr{Int32}, iw::Ptr{Int32}, nv::Ptr{Int32}, elen::Ptr{Int32},
                               last::Ptr{Int32}, degree::Ptr{Int32}, head::Ptr{Int32},
                               denxt::Ptr{Int32}, w::Ptr{Int32}, icntl::Ptr{Int32},
                               jnfo::Ptr{Int32}, rjnfo::Ptr{Float128})::Cvoid
end

function mc47br(::Type{Float32}, ::Type{Int64}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset_64.mc47b_64_(n::Ref{Int64}, iwlen::Ref{Int64}, pe::Ptr{Int64},
                                    pfree::Ref{Int64}, len::Ptr{Int64}, iw::Ptr{Int64},
                                    nv::Ptr{Int64}, elen::Ptr{Int64}, last::Ptr{Int64},
                                    degree::Ptr{Int64}, head::Ptr{Int64}, denxt::Ptr{Int64},
                                    w::Ptr{Int64}, icntl::Ptr{Int64}, jnfo::Ptr{Int64},
                                    rjnfo::Ptr{Float32})::Cvoid
end

function mc47br(::Type{Float64}, ::Type{Int64}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset_64.mc47bd_64_(n::Ref{Int64}, iwlen::Ref{Int64}, pe::Ptr{Int64},
                                     pfree::Ref{Int64}, len::Ptr{Int64}, iw::Ptr{Int64},
                                     nv::Ptr{Int64}, elen::Ptr{Int64}, last::Ptr{Int64},
                                     degree::Ptr{Int64}, head::Ptr{Int64}, denxt::Ptr{Int64},
                                     w::Ptr{Int64}, icntl::Ptr{Int64}, jnfo::Ptr{Int64},
                                     rjnfo::Ptr{Float64})::Cvoid
end

function mc47br(::Type{Float128}, ::Type{Int64}, n, iwlen, pe, pfree, len, iw, nv, elen, last,
                degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl_subset_64.mc47bq_64_(n::Ref{Int64}, iwlen::Ref{Int64}, pe::Ptr{Int64},
                                     pfree::Ref{Int64}, len::Ptr{Int64}, iw::Ptr{Int64},
                                     nv::Ptr{Int64}, elen::Ptr{Int64}, last::Ptr{Int64},
                                     degree::Ptr{Int64}, head::Ptr{Int64}, denxt::Ptr{Int64},
                                     w::Ptr{Int64}, icntl::Ptr{Int64}, jnfo::Ptr{Int64},
                                     rjnfo::Ptr{Float128})::Cvoid
end
