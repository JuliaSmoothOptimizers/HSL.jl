function mc47id(icntl)
  @ccall libhsl.mc47id_(icntl::Ptr{Cint})::Cvoid
end

function mc47id_64(icntl)
  @ccall libhsl_subset_64.mc47id_64_(icntl::Ptr{Int64})::Cvoid
end

function mc47ad(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl.mc47ad_(n::Ref{Cint}, ne::Ref{Cint}, pe::Ptr{Cint}, iw::Ptr{Cint}, iwlen::Ref{Cint},
                        icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc47ad_64(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset_64.mc47ad_64_(n::Ref{Int64}, ne::Ref{Int64}, pe::Ptr{Int64}, iw::Ptr{Int64},
                                     iwlen::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function mc47bd(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl, jnfo,
                rjnfo)
  @ccall libhsl.mc47bd_(n::Ref{Cint}, iwlen::Ref{Cint}, pe::Ptr{Cint}, pfree::Ref{Cint},
                        len::Ptr{Cint}, iw::Ptr{Cint}, nv::Ptr{Cint}, elen::Ptr{Cint},
                        last::Ptr{Cint}, degree::Ptr{Cint}, head::Ptr{Cint}, denxt::Ptr{Cint},
                        w::Ptr{Cint}, icntl::Ptr{Cint}, jnfo::Ptr{Cint}, rjnfo::Ptr{Float64})::Cvoid
end

function mc47bd_64(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl,
                   jnfo, rjnfo)
  @ccall libhsl_subset_64.mc47bd_64_(n::Ref{Int64}, iwlen::Ref{Int64}, pe::Ptr{Int64},
                                     pfree::Ref{Int64}, len::Ptr{Int64}, iw::Ptr{Int64},
                                     nv::Ptr{Int64}, elen::Ptr{Int64}, last::Ptr{Int64},
                                     degree::Ptr{Int64}, head::Ptr{Int64}, denxt::Ptr{Int64},
                                     w::Ptr{Int64}, icntl::Ptr{Int64}, jnfo::Ptr{Int64},
                                     rjnfo::Ptr{Float64})::Cvoid
end

function mc47i(icntl)
  @ccall libhsl.mc47i_(icntl::Ptr{Cint})::Cvoid
end

function mc47i_64(icntl)
  @ccall libhsl_subset_64.mc47i_64_(icntl::Ptr{Int64})::Cvoid
end

function mc47a(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl.mc47a_(n::Ref{Cint}, ne::Ref{Cint}, pe::Ptr{Cint}, iw::Ptr{Cint}, iwlen::Ref{Cint},
                       icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc47a_64(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl_subset_64.mc47a_64_(n::Ref{Int64}, ne::Ref{Int64}, pe::Ptr{Int64}, iw::Ptr{Int64},
                                    iwlen::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function mc47b(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl, jnfo,
               rjnfo)
  @ccall libhsl.mc47b_(n::Ref{Cint}, iwlen::Ref{Cint}, pe::Ptr{Cint}, pfree::Ref{Cint},
                       len::Ptr{Cint}, iw::Ptr{Cint}, nv::Ptr{Cint}, elen::Ptr{Cint},
                       last::Ptr{Cint}, degree::Ptr{Cint}, head::Ptr{Cint}, denxt::Ptr{Cint},
                       w::Ptr{Cint}, icntl::Ptr{Cint}, jnfo::Ptr{Cint}, rjnfo::Ptr{Float32})::Cvoid
end

function mc47b_64(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl, jnfo,
                  rjnfo)
  @ccall libhsl_subset_64.mc47b_64_(n::Ref{Int64}, iwlen::Ref{Int64}, pe::Ptr{Int64},
                                    pfree::Ref{Int64}, len::Ptr{Int64}, iw::Ptr{Int64},
                                    nv::Ptr{Int64}, elen::Ptr{Int64}, last::Ptr{Int64},
                                    degree::Ptr{Int64}, head::Ptr{Int64}, denxt::Ptr{Int64},
                                    w::Ptr{Int64}, icntl::Ptr{Int64}, jnfo::Ptr{Int64},
                                    rjnfo::Ptr{Float32})::Cvoid
end
