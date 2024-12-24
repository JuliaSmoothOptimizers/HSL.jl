function ma57ir(::Type{Float32}, ::Type{Int32}, cntl, icntl)
  @ccall libhsl_subset.ma57i_(cntl::Ptr{Float32}, icntl::Ptr{Int32})::Cvoid
end

function ma57ir(::Type{Float64}, ::Type{Int32}, cntl, icntl)
  @ccall libhsl_subset.ma57id_(cntl::Ptr{Float64}, icntl::Ptr{Int32})::Cvoid
end

function ma57ir(::Type{Float128}, ::Type{Int32}, cntl, icntl)
  @ccall libhsl_subset.ma57iq_(cntl::Ptr{Float128}, icntl::Ptr{Int32})::Cvoid
end

function ma57ir(::Type{Float32}, ::Type{Int64}, cntl, icntl)
  @ccall libhsl_subset_64.ma57i_64_(cntl::Ptr{Float32}, icntl::Ptr{Int64})::Cvoid
end

function ma57ir(::Type{Float64}, ::Type{Int64}, cntl, icntl)
  @ccall libhsl_subset_64.ma57id_64_(cntl::Ptr{Float64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ir(::Type{Float128}, ::Type{Int64}, cntl, icntl)
  @ccall libhsl_subset_64.ma57iq_64_(cntl::Ptr{Float128}, icntl::Ptr{Int64})::Cvoid
end

function ma57ar(::Type{Float32}, ::Type{Int32}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset.ma57a_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              lkeep::Ref{Int32}, keep::Ptr{Int32}, iwork::Ptr{Int32},
                              icntl::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function ma57ar(::Type{Float64}, ::Type{Int32}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset.ma57ad_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               lkeep::Ref{Int32}, keep::Ptr{Int32}, iwork::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function ma57ar(::Type{Float128}, ::Type{Int32}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset.ma57aq_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               lkeep::Ref{Int32}, keep::Ptr{Int32}, iwork::Ptr{Int32},
                               icntl::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function ma57ar(::Type{Float32}, ::Type{Int64}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset_64.ma57a_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    lkeep::Ref{Int64}, keep::Ptr{Int64}, iwork::Ptr{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57ar(::Type{Float64}, ::Type{Int64}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset_64.ma57ad_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     iwork::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57ar(::Type{Float128}, ::Type{Int64}, n, ne, irn, jcn, lkeep, keep, iwork, icntl, info,
                rinfo)
  @ccall libhsl_subset_64.ma57aq_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     iwork::Ptr{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function ma57br(::Type{Float32}, ::Type{Int32}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57b_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32}, fact::Ptr{Float32},
                              lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                              lkeep::Ref{Int32}, keep::Ptr{Int32}, ppos::Ptr{Int32},
                              icntl::Ptr{Int32}, cntl::Ptr{Float32}, info::Ptr{Int32},
                              rinfo::Ptr{Float32})::Cvoid
end

function ma57br(::Type{Float64}, ::Type{Int32}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57bd_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64}, fact::Ptr{Float64},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               lkeep::Ref{Int32}, keep::Ptr{Int32}, ppos::Ptr{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float64}, info::Ptr{Int32},
                               rinfo::Ptr{Float64})::Cvoid
end

function ma57br(::Type{Float128}, ::Type{Int32}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57bq_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128}, fact::Ptr{Float128},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               lkeep::Ref{Int32}, keep::Ptr{Int32}, ppos::Ptr{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               rinfo::Ptr{Float128})::Cvoid
end

function ma57br(::Type{Float32}, ::Type{Int64}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57b_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                    ppos::Ptr{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57br(::Type{Float64}, ::Type{Int64}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57bd_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     ppos::Ptr{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function ma57br(::Type{Float128}, ::Type{Int64}, n, ne, a, fact, lfact, ifact, lifact, lkeep, keep,
                ppos, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57bq_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float128},
                                     fact::Ptr{Float128}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, lkeep::Ref{Int64}, keep::Ptr{Int64},
                                     ppos::Ptr{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, rinfo::Ptr{Float128})::Cvoid
end

function ma57cr(::Type{Float32}, ::Type{Int32}, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs,
                w, lw, iw1, icntl, info)
  @ccall libhsl_subset.ma57c_(job::Ref{Int32}, n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                              rhs::Ptr{Float32}, lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32},
                              iw1::Ptr{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57cr(::Type{Float64}, ::Type{Int32}, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs,
                w, lw, iw1, icntl, info)
  @ccall libhsl_subset.ma57cd_(job::Ref{Int32}, n::Ref{Int32}, fact::Ptr{Float64},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               nrhs::Ref{Int32}, rhs::Ptr{Float64}, lrhs::Ref{Int32},
                               w::Ptr{Float64}, lw::Ref{Int32}, iw1::Ptr{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57cr(::Type{Float128}, ::Type{Int32}, job, n, fact, lfact, ifact, lifact, nrhs, rhs,
                lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl_subset.ma57cq_(job::Ref{Int32}, n::Ref{Int32}, fact::Ptr{Float128},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               nrhs::Ref{Int32}, rhs::Ptr{Float128}, lrhs::Ref{Int32},
                               w::Ptr{Float128}, lw::Ref{Int32}, iw1::Ptr{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57cr(::Type{Float32}, ::Type{Int64}, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs,
                w, lw, iw1, icntl, info)
  @ccall libhsl_subset_64.ma57c_64_(job::Ref{Int64}, n::Ref{Int64}, fact::Ptr{Float32},
                                    lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    nrhs::Ref{Int64}, rhs::Ptr{Float32}, lrhs::Ref{Int64},
                                    w::Ptr{Float32}, lw::Ref{Int64}, iw1::Ptr{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57cr(::Type{Float64}, ::Type{Int64}, job, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs,
                w, lw, iw1, icntl, info)
  @ccall libhsl_subset_64.ma57cd_64_(job::Ref{Int64}, n::Ref{Int64}, fact::Ptr{Float64},
                                     lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     nrhs::Ref{Int64}, rhs::Ptr{Float64}, lrhs::Ref{Int64},
                                     w::Ptr{Float64}, lw::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57cr(::Type{Float128}, ::Type{Int64}, job, n, fact, lfact, ifact, lifact, nrhs, rhs,
                lrhs, w, lw, iw1, icntl, info)
  @ccall libhsl_subset_64.ma57cq_64_(job::Ref{Int64}, n::Ref{Int64}, fact::Ptr{Float128},
                                     lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     nrhs::Ref{Int64}, rhs::Ptr{Float128}, lrhs::Ref{Int64},
                                     w::Ptr{Float128}, lw::Ref{Int64}, iw1::Ptr{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57qr(::Type{Float32}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57q_(n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                              rhs::Ptr{Float32}, lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32},
                              iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57qr(::Type{Float64}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57qd_(n::Ref{Int32}, fact::Ptr{Float64}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float64}, lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32},
                               iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57qr(::Type{Float128}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57qq_(n::Ref{Int32}, fact::Ptr{Float128}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float128}, lrhs::Ref{Int32}, w::Ptr{Float128},
                               lw::Ref{Int32}, iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57qr(::Type{Float32}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57q_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57qr(::Type{Float64}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57qd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57qr(::Type{Float128}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57qq_64_(n::Ref{Int64}, fact::Ptr{Float128}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float128}, lrhs::Ref{Int64}, w::Ptr{Float128},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57rr(::Type{Float32}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57r_(n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                              rhs::Ptr{Float32}, lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32},
                              iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57rr(::Type{Float64}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57rd_(n::Ref{Int32}, fact::Ptr{Float64}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float64}, lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32},
                               iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57rr(::Type{Float128}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57rq_(n::Ref{Int32}, fact::Ptr{Float128}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float128}, lrhs::Ref{Int32}, w::Ptr{Float128},
                               lw::Ref{Int32}, iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57rr(::Type{Float32}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57r_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57rr(::Type{Float64}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57rd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57rr(::Type{Float128}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57rq_64_(n::Ref{Int64}, fact::Ptr{Float128}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float128}, lrhs::Ref{Int64}, w::Ptr{Float128},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ur(::Type{Float32}, ::Type{Int32}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset.ma57u_(fact::Ptr{Float32}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                              lifact::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57ur(::Type{Float64}, ::Type{Int32}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset.ma57ud_(fact::Ptr{Float64}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                               lifact::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57ur(::Type{Float128}, ::Type{Int32}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset.ma57uq_(fact::Ptr{Float128}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                               lifact::Ref{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57ur(::Type{Float32}, ::Type{Int64}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset_64.ma57u_64_(fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ur(::Type{Float64}, ::Type{Int64}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset_64.ma57ud_64_(fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57ur(::Type{Float128}, ::Type{Int64}, fact, lfact, ifact, lifact, icntl)
  @ccall libhsl_subset_64.ma57uq_64_(fact::Ptr{Float128}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57sr(::Type{Float32}, ::Type{Int32}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset.ma57s_(fact::Ptr{Float32}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                              lifact::Ref{Int32}, nrhs::Ref{Int32}, rhs::Ptr{Float32},
                              lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32},
                              icntl::Ptr{Int32})::Cvoid
end

function ma57sr(::Type{Float64}, ::Type{Int32}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset.ma57sd_(fact::Ptr{Float64}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                               lifact::Ref{Int32}, nrhs::Ref{Int32}, rhs::Ptr{Float64},
                               lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57sr(::Type{Float128}, ::Type{Int32}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset.ma57sq_(fact::Ptr{Float128}, lfact::Ref{Int32}, ifact::Ptr{Int32},
                               lifact::Ref{Int32}, nrhs::Ref{Int32}, rhs::Ptr{Float128},
                               lrhs::Ref{Int32}, w::Ptr{Float128}, lw::Ref{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57sr(::Type{Float32}, ::Type{Int64}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset_64.ma57s_64_(fact::Ptr{Float32}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                    lifact::Ref{Int64}, nrhs::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    icntl::Ptr{Int64})::Cvoid
end

function ma57sr(::Type{Float64}, ::Type{Int64}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset_64.ma57sd_64_(fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, nrhs::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     icntl::Ptr{Int64})::Cvoid
end

function ma57sr(::Type{Float128}, ::Type{Int64}, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w, lw,
                icntl)
  @ccall libhsl_subset_64.ma57sq_64_(fact::Ptr{Float128}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, nrhs::Ref{Int64}, rhs::Ptr{Float128},
                                     lrhs::Ref{Int64}, w::Ptr{Float128}, lw::Ref{Int64},
                                     icntl::Ptr{Int64})::Cvoid
end

function ma57tr(::Type{Float32}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57t_(n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                              rhs::Ptr{Float32}, lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32},
                              iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57tr(::Type{Float64}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57td_(n::Ref{Int32}, fact::Ptr{Float64}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float64}, lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32},
                               iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57tr(::Type{Float128}, ::Type{Int32}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset.ma57tq_(n::Ref{Int32}, fact::Ptr{Float128}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, nrhs::Ref{Int32},
                               rhs::Ptr{Float128}, lrhs::Ref{Int32}, w::Ptr{Float128},
                               lw::Ref{Int32}, iw1::Ptr{Int32}, icntl::Ptr{Int32})::Cvoid
end

function ma57tr(::Type{Float32}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57t_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                    rhs::Ptr{Float32}, lrhs::Ref{Int64}, w::Ptr{Float32},
                                    lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57tr(::Type{Float64}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57td_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float64}, lrhs::Ref{Int64}, w::Ptr{Float64},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57tr(::Type{Float128}, ::Type{Int64}, n, fact, lfact, ifact, lifact, nrhs, rhs, lrhs, w,
                lw, iw1, icntl)
  @ccall libhsl_subset_64.ma57tq_64_(n::Ref{Int64}, fact::Ptr{Float128}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, nrhs::Ref{Int64},
                                     rhs::Ptr{Float128}, lrhs::Ref{Int64}, w::Ptr{Float128},
                                     lw::Ref{Int64}, iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57dr(::Type{Float32}, ::Type{Int32}, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact,
                rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57d_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32},
                              irn::Ptr{Int32}, jcn::Ptr{Int32}, fact::Ptr{Float32},
                              lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                              rhs::Ptr{Float32}, x::Ptr{Float32}, resid::Ptr{Float32},
                              w::Ptr{Float32}, iw::Ptr{Int32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function ma57dr(::Type{Float64}, ::Type{Int32}, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact,
                rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57dd_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, fact::Ptr{Float64},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               rhs::Ptr{Float64}, x::Ptr{Float64}, resid::Ptr{Float64},
                               w::Ptr{Float64}, iw::Ptr{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float64}, info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function ma57dr(::Type{Float128}, ::Type{Int32}, job, n, ne, a, irn, jcn, fact, lfact, ifact,
                lifact, rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset.ma57dq_(job::Ref{Int32}, n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, fact::Ptr{Float128},
                               lfact::Ref{Int32}, ifact::Ptr{Int32}, lifact::Ref{Int32},
                               rhs::Ptr{Float128}, x::Ptr{Float128}, resid::Ptr{Float128},
                               w::Ptr{Float128}, iw::Ptr{Int32}, icntl::Ptr{Int32},
                               cntl::Ptr{Float128}, info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function ma57dr(::Type{Float32}, ::Type{Int64}, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact,
                rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57d_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32},
                                    irn::Ptr{Int64}, jcn::Ptr{Int64}, fact::Ptr{Float32},
                                    lfact::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    rhs::Ptr{Float32}, x::Ptr{Float32}, resid::Ptr{Float32},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function ma57dr(::Type{Float64}, ::Type{Int64}, job, n, ne, a, irn, jcn, fact, lfact, ifact, lifact,
                rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57dd_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64},
                                     a::Ptr{Float64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, rhs::Ptr{Float64}, x::Ptr{Float64},
                                     resid::Ptr{Float64}, w::Ptr{Float64}, iw::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57dr(::Type{Float128}, ::Type{Int64}, job, n, ne, a, irn, jcn, fact, lfact, ifact,
                lifact, rhs, x, resid, w, iw, icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.ma57dq_64_(job::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64},
                                     a::Ptr{Float128}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     fact::Ptr{Float128}, lfact::Ref{Int64}, ifact::Ptr{Int64},
                                     lifact::Ref{Int64}, rhs::Ptr{Float128}, x::Ptr{Float128},
                                     resid::Ptr{Float128}, w::Ptr{Float128}, iw::Ptr{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function ma57er(::Type{Float32}, ::Type{Int32}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset.ma57e_(n::Ref{Int32}, ic::Ref{Int32}, keep::Ptr{Int32}, fact::Ptr{Float32},
                              lfact::Ref{Int32}, newfac::Ptr{Float32}, lnew::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, newifc::Ptr{Int32},
                              linew::Ref{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57er(::Type{Float64}, ::Type{Int32}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset.ma57ed_(n::Ref{Int32}, ic::Ref{Int32}, keep::Ptr{Int32}, fact::Ptr{Float64},
                               lfact::Ref{Int32}, newfac::Ptr{Float64}, lnew::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, newifc::Ptr{Int32},
                               linew::Ref{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57er(::Type{Float128}, ::Type{Int32}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset.ma57eq_(n::Ref{Int32}, ic::Ref{Int32}, keep::Ptr{Int32}, fact::Ptr{Float128},
                               lfact::Ref{Int32}, newfac::Ptr{Float128}, lnew::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, newifc::Ptr{Int32},
                               linew::Ref{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57er(::Type{Float32}, ::Type{Int64}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset_64.ma57e_64_(n::Ref{Int64}, ic::Ref{Int64}, keep::Ptr{Int64},
                                    fact::Ptr{Float32}, lfact::Ref{Int64}, newfac::Ptr{Float32},
                                    lnew::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                    newifc::Ptr{Int64}, linew::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57er(::Type{Float64}, ::Type{Int64}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset_64.ma57ed_64_(n::Ref{Int64}, ic::Ref{Int64}, keep::Ptr{Int64},
                                     fact::Ptr{Float64}, lfact::Ref{Int64}, newfac::Ptr{Float64},
                                     lnew::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     newifc::Ptr{Int64}, linew::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57er(::Type{Float128}, ::Type{Int64}, n, ic, keep, fact, lfact, newfac, lnew, ifact,
                lifact, newifc, linew, info)
  @ccall libhsl_subset_64.ma57eq_64_(n::Ref{Int64}, ic::Ref{Int64}, keep::Ptr{Int64},
                                     fact::Ptr{Float128}, lfact::Ref{Int64}, newfac::Ptr{Float128},
                                     lnew::Ref{Int64}, ifact::Ptr{Int64}, lifact::Ref{Int64},
                                     newifc::Ptr{Int64}, linew::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57gr(::Type{Float32}, ::Type{Int32}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma57g_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32}, flag::Ptr{Int32},
                              iwfr::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57gr(::Type{Float64}, ::Type{Int32}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma57gd_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32}, flag::Ptr{Int32},
                               iwfr::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57gr(::Type{Float128}, ::Type{Int32}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma57gq_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32}, flag::Ptr{Int32},
                               iwfr::Ref{Int32}, icntl::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function ma57gr(::Type{Float32}, ::Type{Int64}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma57g_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    iw::Ptr{Int64}, ipe::Ptr{Int64}, count::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma57gr(::Type{Float64}, ::Type{Int64}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma57gd_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, iw::Ptr{Int64}, ipe::Ptr{Int64},
                                     count::Ptr{Int64}, flag::Ptr{Int64}, iwfr::Ref{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57gr(::Type{Float128}, ::Type{Int64}, n, ne, irn, jcn, iw, ipe, count, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma57gq_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, iw::Ptr{Int64}, ipe::Ptr{Int64},
                                     count::Ptr{Int64}, flag::Ptr{Int64}, iwfr::Ref{Int64},
                                     icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57jr(::Type{Float32}, ::Type{Int32}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma57j_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              perm::Ptr{Int32}, iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32},
                              flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                              info::Ptr{Int32})::Cvoid
end

function ma57jr(::Type{Float64}, ::Type{Int32}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma57jd_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               perm::Ptr{Int32}, iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57jr(::Type{Float128}, ::Type{Int32}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma57jq_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               perm::Ptr{Int32}, iw::Ptr{Int32}, ipe::Ptr{Int32}, count::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57jr(::Type{Float32}, ::Type{Int64}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma57j_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    perm::Ptr{Int64}, iw::Ptr{Int64}, ipe::Ptr{Int64},
                                    count::Ptr{Int64}, flag::Ptr{Int64}, iwfr::Ref{Int64},
                                    icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57jr(::Type{Float64}, ::Type{Int64}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma57jd_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     ipe::Ptr{Int64}, count::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57jr(::Type{Float128}, ::Type{Int64}, n, ne, irn, jcn, perm, iw, ipe, count, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma57jq_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, perm::Ptr{Int64}, iw::Ptr{Int64},
                                     ipe::Ptr{Int64}, count::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57kr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset.ma57k_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, perm::Ptr{Int32}, ips::Ptr{Int32}, nv::Ptr{Int32},
                              flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57kr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset.ma57kd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, perm::Ptr{Int32}, ips::Ptr{Int32}, nv::Ptr{Int32},
                               flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57kr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset.ma57kq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, perm::Ptr{Int32}, ips::Ptr{Int32}, nv::Ptr{Int32},
                               flag::Ptr{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57kr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma57k_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, perm::Ptr{Int64}, ips::Ptr{Int64},
                                    nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57kr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma57kd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, perm::Ptr{Int64}, ips::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57kr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, perm, ips, nv, flag, ncmpa)
  @ccall libhsl_subset_64.ma57kq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, perm::Ptr{Int64}, ips::Ptr{Int64},
                                     nv::Ptr{Int64}, flag::Ptr{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57fr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57f_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57fr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57fd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57fr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57fq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57fr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57f_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57fr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57fd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57fr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57fq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57lr(::Type{Float32}, ::Type{Int32}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset.ma57l_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                              ne::Ptr{Int32}, na::Ptr{Int32}, node::Ptr{Int32}, perm::Ptr{Int32},
                              nsteps::Ref{Int32}, fils::Ptr{Int32}, frere::Ptr{Int32},
                              nd::Ptr{Int32}, nemin::Ref{Int32}, subord::Ptr{Int32})::Cvoid
end

function ma57lr(::Type{Float64}, ::Type{Int32}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset.ma57ld_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                               ne::Ptr{Int32}, na::Ptr{Int32}, node::Ptr{Int32}, perm::Ptr{Int32},
                               nsteps::Ref{Int32}, fils::Ptr{Int32}, frere::Ptr{Int32},
                               nd::Ptr{Int32}, nemin::Ref{Int32}, subord::Ptr{Int32})::Cvoid
end

function ma57lr(::Type{Float128}, ::Type{Int32}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset.ma57lq_(n::Ref{Int32}, ipe::Ptr{Int32}, nv::Ptr{Int32}, ips::Ptr{Int32},
                               ne::Ptr{Int32}, na::Ptr{Int32}, node::Ptr{Int32}, perm::Ptr{Int32},
                               nsteps::Ref{Int32}, fils::Ptr{Int32}, frere::Ptr{Int32},
                               nd::Ptr{Int32}, nemin::Ref{Int32}, subord::Ptr{Int32})::Cvoid
end

function ma57lr(::Type{Float32}, ::Type{Int64}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset_64.ma57l_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64}, ips::Ptr{Int64},
                                    ne::Ptr{Int64}, na::Ptr{Int64}, node::Ptr{Int64},
                                    perm::Ptr{Int64}, nsteps::Ref{Int64}, fils::Ptr{Int64},
                                    frere::Ptr{Int64}, nd::Ptr{Int64}, nemin::Ref{Int64},
                                    subord::Ptr{Int64})::Cvoid
end

function ma57lr(::Type{Float64}, ::Type{Int64}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset_64.ma57ld_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     node::Ptr{Int64}, perm::Ptr{Int64}, nsteps::Ref{Int64},
                                     fils::Ptr{Int64}, frere::Ptr{Int64}, nd::Ptr{Int64},
                                     nemin::Ref{Int64}, subord::Ptr{Int64})::Cvoid
end

function ma57lr(::Type{Float128}, ::Type{Int64}, n, ipe, nv, ips, ne, na, node, perm, nsteps, fils,
                frere, nd, nemin, subord)
  @ccall libhsl_subset_64.ma57lq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, nv::Ptr{Int64},
                                     ips::Ptr{Int64}, ne::Ptr{Int64}, na::Ptr{Int64},
                                     node::Ptr{Int64}, perm::Ptr{Int64}, nsteps::Ref{Int64},
                                     fils::Ptr{Int64}, frere::Ptr{Int64}, nd::Ptr{Int64},
                                     nemin::Ref{Int64}, subord::Ptr{Int64})::Cvoid
end

function ma57mr(::Type{Float32}, ::Type{Int32}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset.ma57m_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              map::Ptr{Int32}, irnprm::Ptr{Int32}, lrow::Ptr{Int32},
                              perm::Ptr{Int32}, count::Ptr{Int32}, idiag::Ptr{Int32})::Cvoid
end

function ma57mr(::Type{Float64}, ::Type{Int32}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset.ma57md_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               map::Ptr{Int32}, irnprm::Ptr{Int32}, lrow::Ptr{Int32},
                               perm::Ptr{Int32}, count::Ptr{Int32}, idiag::Ptr{Int32})::Cvoid
end

function ma57mr(::Type{Float128}, ::Type{Int32}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset.ma57mq_(n::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               map::Ptr{Int32}, irnprm::Ptr{Int32}, lrow::Ptr{Int32},
                               perm::Ptr{Int32}, count::Ptr{Int32}, idiag::Ptr{Int32})::Cvoid
end

function ma57mr(::Type{Float32}, ::Type{Int64}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset_64.ma57m_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    map::Ptr{Int64}, irnprm::Ptr{Int64}, lrow::Ptr{Int64},
                                    perm::Ptr{Int64}, count::Ptr{Int64}, idiag::Ptr{Int64})::Cvoid
end

function ma57mr(::Type{Float64}, ::Type{Int64}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset_64.ma57md_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, map::Ptr{Int64}, irnprm::Ptr{Int64},
                                     lrow::Ptr{Int64}, perm::Ptr{Int64}, count::Ptr{Int64},
                                     idiag::Ptr{Int64})::Cvoid
end

function ma57mr(::Type{Float128}, ::Type{Int64}, n, ne, irn, jcn, map, irnprm, lrow, perm, count,
                idiag)
  @ccall libhsl_subset_64.ma57mq_64_(n::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, map::Ptr{Int64}, irnprm::Ptr{Int64},
                                     lrow::Ptr{Int64}, perm::Ptr{Int64}, count::Ptr{Int64},
                                     idiag::Ptr{Int64})::Cvoid
end

function ma57nr(::Type{Float32}, ::Type{Int32}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset.ma57n_(n::Ref{Int32}, lenr::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32},
                              nd::Ptr{Int32}, nsteps::Ref{Int32}, lstki::Ptr{Int32},
                              lstkr::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function ma57nr(::Type{Float64}, ::Type{Int32}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset.ma57nd_(n::Ref{Int32}, lenr::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32},
                               nd::Ptr{Int32}, nsteps::Ref{Int32}, lstki::Ptr{Int32},
                               lstkr::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function ma57nr(::Type{Float128}, ::Type{Int32}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset.ma57nq_(n::Ref{Int32}, lenr::Ptr{Int32}, na::Ptr{Int32}, ne::Ptr{Int32},
                               nd::Ptr{Int32}, nsteps::Ref{Int32}, lstki::Ptr{Int32},
                               lstkr::Ptr{Int32}, info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function ma57nr(::Type{Float32}, ::Type{Int64}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset_64.ma57n_64_(n::Ref{Int64}, lenr::Ptr{Int64}, na::Ptr{Int64}, ne::Ptr{Int64},
                                    nd::Ptr{Int64}, nsteps::Ref{Int64}, lstki::Ptr{Int64},
                                    lstkr::Ptr{Int64}, info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function ma57nr(::Type{Float64}, ::Type{Int64}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset_64.ma57nd_64_(n::Ref{Int64}, lenr::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function ma57nr(::Type{Float128}, ::Type{Int64}, n, lenr, na, ne, nd, nsteps, lstki, lstkr, info,
                rinfo)
  @ccall libhsl_subset_64.ma57nq_64_(n::Ref{Int64}, lenr::Ptr{Int64}, na::Ptr{Int64},
                                     ne::Ptr{Int64}, nd::Ptr{Int64}, nsteps::Ref{Int64},
                                     lstki::Ptr{Int64}, lstkr::Ptr{Int64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function ma57or(::Type{Float32}, ::Type{Int32}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset.ma57o_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float32}, la::Ref{Int32},
                              iw::Ptr{Int32}, liw::Ref{Int32}, lrow::Ptr{Int32}, perm::Ptr{Int32},
                              nsteps::Ref{Int32}, nstk::Ptr{Int32}, node::Ptr{Int32},
                              diag::Ptr{Float32}, schnab::Ptr{Float32}, ppos::Ptr{Int32},
                              cntl::Ptr{Float32}, icntl::Ptr{Int32}, info::Ptr{Int32},
                              rinfo::Ptr{Float32}, hold::Ptr{Int32}, biga::Ref{Float32})::Cvoid
end

function ma57or(::Type{Float64}, ::Type{Int32}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset.ma57od_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float64}, la::Ref{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, lrow::Ptr{Int32}, perm::Ptr{Int32},
                               nsteps::Ref{Int32}, nstk::Ptr{Int32}, node::Ptr{Int32},
                               diag::Ptr{Float64}, schnab::Ptr{Float64}, ppos::Ptr{Int32},
                               cntl::Ptr{Float64}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               rinfo::Ptr{Float64}, hold::Ptr{Int32}, biga::Ref{Float64})::Cvoid
end

function ma57or(::Type{Float128}, ::Type{Int32}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset.ma57oq_(n::Ref{Int32}, ne::Ref{Int32}, a::Ptr{Float128}, la::Ref{Int32},
                               iw::Ptr{Int32}, liw::Ref{Int32}, lrow::Ptr{Int32}, perm::Ptr{Int32},
                               nsteps::Ref{Int32}, nstk::Ptr{Int32}, node::Ptr{Int32},
                               diag::Ptr{Float128}, schnab::Ptr{Float128}, ppos::Ptr{Int32},
                               cntl::Ptr{Float128}, icntl::Ptr{Int32}, info::Ptr{Int32},
                               rinfo::Ptr{Float128}, hold::Ptr{Int32}, biga::Ref{Float128})::Cvoid
end

function ma57or(::Type{Float32}, ::Type{Int64}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset_64.ma57o_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32}, la::Ref{Int64},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, lrow::Ptr{Int64},
                                    perm::Ptr{Int64}, nsteps::Ref{Int64}, nstk::Ptr{Int64},
                                    node::Ptr{Int64}, diag::Ptr{Float32}, schnab::Ptr{Float32},
                                    ppos::Ptr{Int64}, cntl::Ptr{Float32}, icntl::Ptr{Int64},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32}, hold::Ptr{Int64},
                                    biga::Ref{Float32})::Cvoid
end

function ma57or(::Type{Float64}, ::Type{Int64}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset_64.ma57od_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64}, la::Ref{Int64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, lrow::Ptr{Int64},
                                     perm::Ptr{Int64}, nsteps::Ref{Int64}, nstk::Ptr{Int64},
                                     node::Ptr{Int64}, diag::Ptr{Float64}, schnab::Ptr{Float64},
                                     ppos::Ptr{Int64}, cntl::Ptr{Float64}, icntl::Ptr{Int64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64}, hold::Ptr{Int64},
                                     biga::Ref{Float64})::Cvoid
end

function ma57or(::Type{Float128}, ::Type{Int64}, n, ne, a, la, iw, liw, lrow, perm, nsteps, nstk,
                node, diag, schnab, ppos, cntl, icntl, info, rinfo, hold, biga)
  @ccall libhsl_subset_64.ma57oq_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float128},
                                     la::Ref{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     lrow::Ptr{Int64}, perm::Ptr{Int64}, nsteps::Ref{Int64},
                                     nstk::Ptr{Int64}, node::Ptr{Int64}, diag::Ptr{Float128},
                                     schnab::Ptr{Float128}, ppos::Ptr{Int64}, cntl::Ptr{Float128},
                                     icntl::Ptr{Int64}, info::Ptr{Int64}, rinfo::Ptr{Float128},
                                     hold::Ptr{Int64}, biga::Ref{Float128})::Cvoid
end

function ma57pr(::Type{Float32}, ::Type{Int32}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset.ma57p_(a::Ptr{Float32}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                              itop::Ref{Int32}, real::Ref{Cint})::Cvoid
end

function ma57pr(::Type{Float64}, ::Type{Int32}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset.ma57pd_(a::Ptr{Float64}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                               itop::Ref{Int32}, real::Ref{Cint})::Cvoid
end

function ma57pr(::Type{Float128}, ::Type{Int32}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset.ma57pq_(a::Ptr{Float128}, iw::Ptr{Int32}, j1::Ref{Int32}, j2::Ref{Int32},
                               itop::Ref{Int32}, real::Ref{Cint})::Cvoid
end

function ma57pr(::Type{Float32}, ::Type{Int64}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset_64.ma57p_64_(a::Ptr{Float32}, iw::Ptr{Int64}, j1::Ref{Int64}, j2::Ref{Int64},
                                    itop::Ref{Int64}, real::Ref{Cint})::Cvoid
end

function ma57pr(::Type{Float64}, ::Type{Int64}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset_64.ma57pd_64_(a::Ptr{Float64}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, real::Ref{Cint})::Cvoid
end

function ma57pr(::Type{Float128}, ::Type{Int64}, a, iw, j1, j2, itop, real)
  @ccall libhsl_subset_64.ma57pq_64_(a::Ptr{Float128}, iw::Ptr{Int64}, j1::Ref{Int64},
                                     j2::Ref{Int64}, itop::Ref{Int64}, real::Ref{Cint})::Cvoid
end

function ma57wr(::Type{Float32}, ::Type{Int32}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset.ma57w_(a::Ptr{Float32}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                              nrlbdu::Ref{Int32})::Cvoid
end

function ma57wr(::Type{Float64}, ::Type{Int32}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset.ma57wd_(a::Ptr{Float64}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                               nrlbdu::Ref{Int32})::Cvoid
end

function ma57wr(::Type{Float128}, ::Type{Int32}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset.ma57wq_(a::Ptr{Float128}, la::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32},
                               nrlbdu::Ref{Int32})::Cvoid
end

function ma57wr(::Type{Float32}, ::Type{Int64}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset_64.ma57w_64_(a::Ptr{Float32}, la::Ref{Int64}, iw::Ptr{Int64},
                                    liw::Ref{Int64}, nrlbdu::Ref{Int64})::Cvoid
end

function ma57wr(::Type{Float64}, ::Type{Int64}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset_64.ma57wd_64_(a::Ptr{Float64}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, nrlbdu::Ref{Int64})::Cvoid
end

function ma57wr(::Type{Float128}, ::Type{Int64}, a, la, iw, liw, nrlbdu)
  @ccall libhsl_subset_64.ma57wq_64_(a::Ptr{Float128}, la::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, nrlbdu::Ref{Int64})::Cvoid
end

function ma57xr(::Type{Float32}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57x_(n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float32},
                              lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32}, iw1::Ptr{Int32},
                              icntl::Ptr{Int32})::Cvoid
end

function ma57xr(::Type{Float64}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57xd_(n::Ref{Int32}, fact::Ptr{Float64}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float64},
                               lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32}, iw1::Ptr{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57xr(::Type{Float128}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57xq_(n::Ref{Int32}, fact::Ptr{Float128}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float128},
                               lrhs::Ref{Int32}, w::Ptr{Float128}, lw::Ref{Int32}, iw1::Ptr{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57xr(::Type{Float32}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57x_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57xr(::Type{Float64}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57xd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57xr(::Type{Float128}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57xq_64_(n::Ref{Int64}, fact::Ptr{Float128}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float128},
                                     lrhs::Ref{Int64}, w::Ptr{Float128}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57yr(::Type{Float32}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57y_(n::Ref{Int32}, fact::Ptr{Float32}, lfact::Ref{Int32},
                              ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float32},
                              lrhs::Ref{Int32}, w::Ptr{Float32}, lw::Ref{Int32}, iw1::Ptr{Int32},
                              icntl::Ptr{Int32})::Cvoid
end

function ma57yr(::Type{Float64}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57yd_(n::Ref{Int32}, fact::Ptr{Float64}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float64},
                               lrhs::Ref{Int32}, w::Ptr{Float64}, lw::Ref{Int32}, iw1::Ptr{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57yr(::Type{Float128}, ::Type{Int32}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset.ma57yq_(n::Ref{Int32}, fact::Ptr{Float128}, lfact::Ref{Int32},
                               ifact::Ptr{Int32}, lifact::Ref{Int32}, rhs::Ptr{Float128},
                               lrhs::Ref{Int32}, w::Ptr{Float128}, lw::Ref{Int32}, iw1::Ptr{Int32},
                               icntl::Ptr{Int32})::Cvoid
end

function ma57yr(::Type{Float32}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57y_64_(n::Ref{Int64}, fact::Ptr{Float32}, lfact::Ref{Int64},
                                    ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float32},
                                    lrhs::Ref{Int64}, w::Ptr{Float32}, lw::Ref{Int64},
                                    iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57yr(::Type{Float64}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57yd_64_(n::Ref{Int64}, fact::Ptr{Float64}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float64},
                                     lrhs::Ref{Int64}, w::Ptr{Float64}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57yr(::Type{Float128}, ::Type{Int64}, n, fact, lfact, ifact, lifact, rhs, lrhs, w, lw,
                iw1, icntl)
  @ccall libhsl_subset_64.ma57yq_64_(n::Ref{Int64}, fact::Ptr{Float128}, lfact::Ref{Int64},
                                     ifact::Ptr{Int64}, lifact::Ref{Int64}, rhs::Ptr{Float128},
                                     lrhs::Ref{Int64}, w::Ptr{Float128}, lw::Ref{Int64},
                                     iw1::Ptr{Int64}, icntl::Ptr{Int64})::Cvoid
end

function ma57vr(::Type{Float32}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma57v_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                              iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                              flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                              info::Ptr{Int32})::Cvoid
end

function ma57vr(::Type{Float64}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset.ma57vd_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57vr(::Type{Float128}, ::Type{Int32}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset.ma57vq_(n::Ref{Int32}, nz::Ref{Int32}, irn::Ptr{Int32}, icn::Ptr{Int32},
                               iw::Ptr{Int32}, lw::Ref{Int32}, ipe::Ptr{Int32}, iq::Ptr{Int32},
                               flag::Ptr{Int32}, iwfr::Ref{Int32}, icntl::Ptr{Int32},
                               info::Ptr{Int32})::Cvoid
end

function ma57vr(::Type{Float32}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma57v_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64}, icn::Ptr{Int64},
                                    iw::Ptr{Int64}, lw::Ref{Int64}, ipe::Ptr{Int64}, iq::Ptr{Int64},
                                    flag::Ptr{Int64}, iwfr::Ref{Int64}, icntl::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function ma57vr(::Type{Float64}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl,
                info)
  @ccall libhsl_subset_64.ma57vd_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57vr(::Type{Float128}, ::Type{Int64}, n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr,
                icntl, info)
  @ccall libhsl_subset_64.ma57vq_64_(n::Ref{Int64}, nz::Ref{Int64}, irn::Ptr{Int64},
                                     icn::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     ipe::Ptr{Int64}, iq::Ptr{Int64}, flag::Ptr{Int64},
                                     iwfr::Ref{Int64}, icntl::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function ma57hr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma57h_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                              ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                              ncmpa::Ref{Int32}, fratio::Ref{Float32})::Cvoid
end

function ma57hr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma57hd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                               ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                               ncmpa::Ref{Int32}, fratio::Ref{Float64})::Cvoid
end

function ma57hr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma57hq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, nv::Ptr{Int32}, nxt::Ptr{Int32}, lst::Ptr{Int32},
                               ipd::Ptr{Int32}, flag::Ptr{Int32}, iovflo::Ref{Int32},
                               ncmpa::Ref{Int32}, fratio::Ref{Float128})::Cvoid
end

function ma57hr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma57h_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                    lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                    iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                    fratio::Ref{Float32})::Cvoid
end

function ma57hr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma57hd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float64})::Cvoid
end

function ma57hr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag,
                iovflo, ncmpa, fratio)
  @ccall libhsl_subset_64.ma57hq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, nv::Ptr{Int64}, nxt::Ptr{Int64},
                                     lst::Ptr{Int64}, ipd::Ptr{Int64}, flag::Ptr{Int64},
                                     iovflo::Ref{Int64}, ncmpa::Ref{Int64},
                                     fratio::Ref{Float128})::Cvoid
end

function ma57zr(::Type{Float32}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57z_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                              iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57zr(::Type{Float64}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57zd_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57zr(::Type{Float128}, ::Type{Int32}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma57zq_(n::Ref{Int32}, ipe::Ptr{Int32}, iw::Ptr{Int32}, lw::Ref{Int32},
                               iwfr::Ref{Int32}, ncmpa::Ref{Int32})::Cvoid
end

function ma57zr(::Type{Float32}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57z_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                    iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57zr(::Type{Float64}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57zd_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end

function ma57zr(::Type{Float128}, ::Type{Int64}, n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset_64.ma57zq_64_(n::Ref{Int64}, ipe::Ptr{Int64}, iw::Ptr{Int64}, lw::Ref{Int64},
                                     iwfr::Ref{Int64}, ncmpa::Ref{Int64})::Cvoid
end
