function mc77ir(::Type{Float32}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc77i_(icntl::Ptr{Int32}, cntl::Ptr{Float32})::Cvoid
end

function mc77ir(::Type{Float64}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc77id_(icntl::Ptr{Int32}, cntl::Ptr{Float64})::Cvoid
end

function mc77ir(::Type{Float128}, ::Type{Int32}, icntl, cntl)
  @ccall libhsl_subset.mc77iq_(icntl::Ptr{Int32}, cntl::Ptr{Float128})::Cvoid
end

function mc77ir(::Type{Float32}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc77i_64_(icntl::Ptr{Int64}, cntl::Ptr{Float32})::Cvoid
end

function mc77ir(::Type{Float64}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc77id_64_(icntl::Ptr{Int64}, cntl::Ptr{Float64})::Cvoid
end

function mc77ir(::Type{Float128}, ::Type{Int64}, icntl, cntl)
  @ccall libhsl_subset_64.mc77iq_64_(icntl::Ptr{Int64}, cntl::Ptr{Float128})::Cvoid
end

function mc77ar(::Type{Float32}, ::Type{Int32}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77a_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                              jcst::Ptr{Int32}, irn::Ptr{Int32}, a::Ptr{Float32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, dw::Ptr{Float32}, ldw::Ref{Int32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc77ar(::Type{Float64}, ::Type{Int32}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77ad_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                               jcst::Ptr{Int32}, irn::Ptr{Int32}, a::Ptr{Float64}, iw::Ptr{Int32},
                               liw::Ref{Int32}, dw::Ptr{Float64}, ldw::Ref{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float64}, info::Ptr{Int32},
                               rinfo::Ptr{Float64})::Cvoid
end

function mc77ar(::Type{Float128}, ::Type{Int32}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77aq_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                               jcst::Ptr{Int32}, irn::Ptr{Int32}, a::Ptr{Float128}, iw::Ptr{Int32},
                               liw::Ref{Int32}, dw::Ptr{Float128}, ldw::Ref{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               rinfo::Ptr{Float128})::Cvoid
end

function mc77ar(::Type{Float32}, ::Type{Int64}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77a_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                    jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float32},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float32},
                                    ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc77ar(::Type{Float64}, ::Type{Int64}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77ad_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float64},
                                     ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc77ar(::Type{Float128}, ::Type{Int64}, job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77aq_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float128},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float128},
                                     ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, rinfo::Ptr{Float128})::Cvoid
end

function mc77nr(::Type{Float32}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77n_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, d::Ptr{Float32}, e::Ptr{Float32},
                              check::Ref{Int32}, thresh::Ref{Float32}, err::Ptr{Float32},
                              maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                              dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77nr(::Type{Float64}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77nd_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, d::Ptr{Float64}, e::Ptr{Float64},
                               check::Ref{Int32}, thresh::Ref{Float64}, err::Ptr{Float64},
                               maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                               dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77nr(::Type{Float128}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77nq_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, d::Ptr{Float128},
                               e::Ptr{Float128}, check::Ref{Int32}, thresh::Ref{Float128},
                               err::Ptr{Float128}, maxit::Ref{Int32}, niter::Ref{Int32},
                               iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128}, ew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77nr(::Type{Float32}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77n_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, d::Ptr{Float32},
                                    e::Ptr{Float32}, check::Ref{Int64}, thresh::Ref{Float32},
                                    err::Ptr{Float32}, maxit::Ref{Int64}, niter::Ref{Int64},
                                    iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float32},
                                    ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77nr(::Type{Float64}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77nd_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int64},
                                     thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77nr(::Type{Float128}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77nq_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float128},
                                     d::Ptr{Float128}, e::Ptr{Float128}, check::Ref{Int64},
                                     thresh::Ref{Float128}, err::Ptr{Float128}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float128}, ew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77or(::Type{Float32}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77o_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, d::Ptr{Float32}, e::Ptr{Float32},
                              check::Ref{Int32}, thresh::Ref{Float32}, err::Ptr{Float32},
                              maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                              dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77or(::Type{Float64}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77od_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, d::Ptr{Float64}, e::Ptr{Float64},
                               check::Ref{Int32}, thresh::Ref{Float64}, err::Ptr{Float64},
                               maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                               dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77or(::Type{Float128}, ::Type{Int32}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77oq_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, d::Ptr{Float128},
                               e::Ptr{Float128}, check::Ref{Int32}, thresh::Ref{Float128},
                               err::Ptr{Float128}, maxit::Ref{Int32}, niter::Ref{Int32},
                               iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128}, ew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77or(::Type{Float32}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77o_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, d::Ptr{Float32},
                                    e::Ptr{Float32}, check::Ref{Int64}, thresh::Ref{Float32},
                                    err::Ptr{Float32}, maxit::Ref{Int64}, niter::Ref{Int64},
                                    iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float32},
                                    ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77or(::Type{Float64}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77od_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float64},
                                     d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int64},
                                     thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77or(::Type{Float128}, ::Type{Int64}, m, n, nnz, jcst, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77oq_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     jcst::Ptr{Int64}, irn::Ptr{Int64}, a::Ptr{Float128},
                                     d::Ptr{Float128}, e::Ptr{Float128}, check::Ref{Int64},
                                     thresh::Ref{Float128}, err::Ptr{Float128}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float128}, ew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77pr(::Type{Float32}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77p_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77pr(::Type{Float64}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77pd_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77pr(::Type{Float128}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err,
                maxit, niter, ijw, dew, info)
  @ccall libhsl_subset.mc77pq_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, de::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ref{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77pr(::Type{Float32}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77p_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77pr(::Type{Float64}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77pd_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77pr(::Type{Float128}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err,
                maxit, niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77pq_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77qr(::Type{Float32}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77q_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77qr(::Type{Float64}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77qd_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77qr(::Type{Float128}, ::Type{Int32}, n, nnz, jcst, irn, a, de, check, thresh, err,
                maxit, niter, ijw, dew, info)
  @ccall libhsl_subset.mc77qq_(n::Ref{Int32}, nnz::Ref{Int32}, jcst::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, de::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ref{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77qr(::Type{Float32}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77q_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77qr(::Type{Float64}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77qd_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77qr(::Type{Float128}, ::Type{Int64}, n, nnz, jcst, irn, a, de, check, thresh, err,
                maxit, niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77qq_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcst::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77br(::Type{Float32}, ::Type{Int32}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77b_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                              irn::Ptr{Int32}, jcn::Ptr{Int32}, a::Ptr{Float32}, iw::Ptr{Int32},
                              liw::Ref{Int32}, dw::Ptr{Float32}, ldw::Ref{Int32}, icntl::Ptr{Int32},
                              cntl::Ptr{Float32}, info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc77br(::Type{Float64}, ::Type{Int32}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77bd_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, a::Ptr{Float64}, iw::Ptr{Int32},
                               liw::Ref{Int32}, dw::Ptr{Float64}, ldw::Ref{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float64}, info::Ptr{Int32},
                               rinfo::Ptr{Float64})::Cvoid
end

function mc77br(::Type{Float128}, ::Type{Int32}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset.mc77bq_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, a::Ptr{Float128}, iw::Ptr{Int32},
                               liw::Ref{Int32}, dw::Ptr{Float128}, ldw::Ref{Int32},
                               icntl::Ptr{Int32}, cntl::Ptr{Float128}, info::Ptr{Int32},
                               rinfo::Ptr{Float128})::Cvoid
end

function mc77br(::Type{Float32}, ::Type{Int64}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77b_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                    irn::Ptr{Int64}, jcn::Ptr{Int64}, a::Ptr{Float32},
                                    iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float32},
                                    ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float32},
                                    info::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc77br(::Type{Float64}, ::Type{Int64}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77bd_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, a::Ptr{Float64},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float64},
                                     ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float64},
                                     info::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc77br(::Type{Float128}, ::Type{Int64}, job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw,
                icntl, cntl, info, rinfo)
  @ccall libhsl_subset_64.mc77bq_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, a::Ptr{Float128},
                                     iw::Ptr{Int64}, liw::Ref{Int64}, dw::Ptr{Float128},
                                     ldw::Ref{Int64}, icntl::Ptr{Int64}, cntl::Ptr{Float128},
                                     info::Ptr{Int64}, rinfo::Ptr{Float128})::Cvoid
end

function mc77rr(::Type{Float32}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77r_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, d::Ptr{Float32}, e::Ptr{Float32},
                              check::Ref{Int32}, thresh::Ref{Float32}, err::Ptr{Float32},
                              maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                              dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77rr(::Type{Float64}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77rd_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, d::Ptr{Float64}, e::Ptr{Float64},
                               check::Ref{Int32}, thresh::Ref{Float64}, err::Ptr{Float64},
                               maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                               dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77rr(::Type{Float128}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77rq_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, d::Ptr{Float128},
                               e::Ptr{Float128}, check::Ref{Int32}, thresh::Ref{Float128},
                               err::Ptr{Float128}, maxit::Ref{Int32}, niter::Ref{Int32},
                               iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128}, ew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77rr(::Type{Float32}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77r_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, d::Ptr{Float32},
                                    e::Ptr{Float32}, check::Ref{Int64}, thresh::Ref{Float32},
                                    err::Ptr{Float32}, maxit::Ref{Int64}, niter::Ref{Int64},
                                    iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float32},
                                    ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77rr(::Type{Float64}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77rd_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, d::Ptr{Float64},
                                     e::Ptr{Float64}, check::Ref{Int64}, thresh::Ref{Float64},
                                     err::Ptr{Float64}, maxit::Ref{Int64}, niter::Ref{Int64},
                                     iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float64},
                                     ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77rr(::Type{Float128}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77rq_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, d::Ptr{Float128},
                                     e::Ptr{Float128}, check::Ref{Int64}, thresh::Ref{Float128},
                                     err::Ptr{Float128}, maxit::Ref{Int64}, niter::Ref{Int64},
                                     iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float128},
                                     ew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77sr(::Type{Float32}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77s_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                              irn::Ptr{Int32}, a::Ptr{Float32}, d::Ptr{Float32}, e::Ptr{Float32},
                              check::Ref{Int32}, thresh::Ref{Float32}, err::Ptr{Float32},
                              maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                              dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77sr(::Type{Float64}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77sd_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float64}, d::Ptr{Float64}, e::Ptr{Float64},
                               check::Ref{Int32}, thresh::Ref{Float64}, err::Ptr{Float64},
                               maxit::Ref{Int32}, niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32},
                               dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77sr(::Type{Float128}, ::Type{Int32}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77sq_(m::Ref{Int32}, n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32},
                               irn::Ptr{Int32}, a::Ptr{Float128}, d::Ptr{Float128},
                               e::Ptr{Float128}, check::Ref{Int32}, thresh::Ref{Float128},
                               err::Ptr{Float128}, maxit::Ref{Int32}, niter::Ref{Int32},
                               iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128}, ew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77sr(::Type{Float32}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77s_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, d::Ptr{Float32},
                                    e::Ptr{Float32}, check::Ref{Int64}, thresh::Ref{Float32},
                                    err::Ptr{Float32}, maxit::Ref{Int64}, niter::Ref{Int64},
                                    iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float32},
                                    ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77sr(::Type{Float64}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77sd_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, d::Ptr{Float64},
                                     e::Ptr{Float64}, check::Ref{Int64}, thresh::Ref{Float64},
                                     err::Ptr{Float64}, maxit::Ref{Int64}, niter::Ref{Int64},
                                     iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float64},
                                     ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77sr(::Type{Float128}, ::Type{Int64}, m, n, nnz, jcn, irn, a, d, e, check, thresh, err,
                maxit, niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77sq_64_(m::Ref{Int64}, n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, d::Ptr{Float128},
                                     e::Ptr{Float128}, check::Ref{Int64}, thresh::Ref{Float128},
                                     err::Ptr{Float128}, maxit::Ref{Int64}, niter::Ref{Int64},
                                     iw::Ptr{Int64}, jw::Ptr{Int64}, dw::Ptr{Float128},
                                     ew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77tr(::Type{Float32}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77t_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77tr(::Type{Float64}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77td_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77tr(::Type{Float128}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77tq_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, de::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ref{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77tr(::Type{Float32}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77t_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77tr(::Type{Float64}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77td_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77tr(::Type{Float128}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77tq_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77ur(::Type{Float32}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77u_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                              a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77ur(::Type{Float64}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77ud_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77ur(::Type{Float128}, ::Type{Int32}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset.mc77uq_(n::Ref{Int32}, nnz::Ref{Int32}, jcn::Ptr{Int32}, irn::Ptr{Int32},
                               a::Ptr{Float128}, de::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ref{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float128},
                               info::Ref{Int32})::Cvoid
end

function mc77ur(::Type{Float32}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77u_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                    irn::Ptr{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77ur(::Type{Float64}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77ud_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77ur(::Type{Float128}, ::Type{Int64}, n, nnz, jcn, irn, a, de, check, thresh, err, maxit,
                niter, ijw, dew, info)
  @ccall libhsl_subset_64.mc77uq_64_(n::Ref{Int64}, nnz::Ref{Int64}, jcn::Ptr{Int64},
                                     irn::Ptr{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77cr(::Type{Float32}, ::Type{Int32}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.mc77c_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32},
                              lda::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32}, dw::Ptr{Float32},
                              ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float32},
                              info::Ptr{Int32}, rinfo::Ptr{Float32})::Cvoid
end

function mc77cr(::Type{Float64}, ::Type{Int32}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.mc77cd_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64},
                               lda::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32}, dw::Ptr{Float64},
                               ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float64},
                               info::Ptr{Int32}, rinfo::Ptr{Float64})::Cvoid
end

function mc77cr(::Type{Float128}, ::Type{Int32}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset.mc77cq_(job::Ref{Int32}, m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128},
                               lda::Ref{Int32}, iw::Ptr{Int32}, liw::Ref{Int32}, dw::Ptr{Float128},
                               ldw::Ref{Int32}, icntl::Ptr{Int32}, cntl::Ptr{Float128},
                               info::Ptr{Int32}, rinfo::Ptr{Float128})::Cvoid
end

function mc77cr(::Type{Float32}, ::Type{Int64}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.mc77c_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32},
                                    lda::Ref{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                    dw::Ptr{Float32}, ldw::Ref{Int64}, icntl::Ptr{Int64},
                                    cntl::Ptr{Float32}, info::Ptr{Int64},
                                    rinfo::Ptr{Float32})::Cvoid
end

function mc77cr(::Type{Float64}, ::Type{Int64}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.mc77cd_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64},
                                     lda::Ref{Int64}, iw::Ptr{Int64}, liw::Ref{Int64},
                                     dw::Ptr{Float64}, ldw::Ref{Int64}, icntl::Ptr{Int64},
                                     cntl::Ptr{Float64}, info::Ptr{Int64},
                                     rinfo::Ptr{Float64})::Cvoid
end

function mc77cr(::Type{Float128}, ::Type{Int64}, job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl,
                info, rinfo)
  @ccall libhsl_subset_64.mc77cq_64_(job::Ref{Int64}, m::Ref{Int64}, n::Ref{Int64},
                                     a::Ptr{Float128}, lda::Ref{Int64}, iw::Ptr{Int64},
                                     liw::Ref{Int64}, dw::Ptr{Float128}, ldw::Ref{Int64},
                                     icntl::Ptr{Int64}, cntl::Ptr{Float128}, info::Ptr{Int64},
                                     rinfo::Ptr{Float128})::Cvoid
end

function mc77jr(::Type{Float32}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77j_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32}, lda::Ref{Int32},
                              d::Ptr{Float32}, e::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ptr{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float32},
                              ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77jr(::Type{Float64}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77jd_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64}, lda::Ref{Int32},
                               d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float64},
                               ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77jr(::Type{Float128}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77jq_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128}, lda::Ref{Int32},
                               d::Ptr{Float128}, e::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ptr{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128},
                               ew::Ptr{Float128}, info::Ref{Int32})::Cvoid
end

function mc77jr(::Type{Float32}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77j_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32}, lda::Ref{Int64},
                                    d::Ptr{Float32}, e::Ptr{Float32}, check::Ref{Int64},
                                    thresh::Ref{Float32}, err::Ptr{Float32}, maxit::Ref{Int64},
                                    niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                    dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77jr(::Type{Float64}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77jd_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64}, lda::Ref{Int64},
                                     d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int64},
                                     thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77jr(::Type{Float128}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77jq_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float128},
                                     lda::Ref{Int64}, d::Ptr{Float128}, e::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ptr{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, iw::Ptr{Int64},
                                     jw::Ptr{Int64}, dw::Ptr{Float128}, ew::Ptr{Float128},
                                     info::Ref{Int64})::Cvoid
end

function mc77kr(::Type{Float32}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77k_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32}, lda::Ref{Int32},
                              d::Ptr{Float32}, e::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ptr{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float32},
                              ew::Ptr{Float32}, info::Ref{Int32})::Cvoid
end

function mc77kr(::Type{Float64}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77kd_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64}, lda::Ref{Int32},
                               d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float64},
                               ew::Ptr{Float64}, info::Ref{Int32})::Cvoid
end

function mc77kr(::Type{Float128}, ::Type{Int32}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset.mc77kq_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128}, lda::Ref{Int32},
                               d::Ptr{Float128}, e::Ptr{Float128}, check::Ref{Int32},
                               thresh::Ref{Float128}, err::Ptr{Float128}, maxit::Ref{Int32},
                               niter::Ref{Int32}, iw::Ptr{Int32}, jw::Ptr{Int32}, dw::Ptr{Float128},
                               ew::Ptr{Float128}, info::Ref{Int32})::Cvoid
end

function mc77kr(::Type{Float32}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77k_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32}, lda::Ref{Int64},
                                    d::Ptr{Float32}, e::Ptr{Float32}, check::Ref{Int64},
                                    thresh::Ref{Float32}, err::Ptr{Float32}, maxit::Ref{Int64},
                                    niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                    dw::Ptr{Float32}, ew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77kr(::Type{Float64}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77kd_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64}, lda::Ref{Int64},
                                     d::Ptr{Float64}, e::Ptr{Float64}, check::Ref{Int64},
                                     thresh::Ref{Float64}, err::Ptr{Float64}, maxit::Ref{Int64},
                                     niter::Ref{Int64}, iw::Ptr{Int64}, jw::Ptr{Int64},
                                     dw::Ptr{Float64}, ew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77kr(::Type{Float128}, ::Type{Int64}, m, n, a, lda, d, e, check, thresh, err, maxit,
                niter, iw, jw, dw, ew, info)
  @ccall libhsl_subset_64.mc77kq_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float128},
                                     lda::Ref{Int64}, d::Ptr{Float128}, e::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ptr{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, iw::Ptr{Int64},
                                     jw::Ptr{Int64}, dw::Ptr{Float128}, ew::Ptr{Float128},
                                     info::Ref{Int64})::Cvoid
end

function mc77lr(::Type{Float32}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77l_(n::Ref{Int32}, a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77lr(::Type{Float64}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77ld_(n::Ref{Int32}, a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77lr(::Type{Float128}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77lq_(n::Ref{Int32}, a::Ptr{Float128}, de::Ptr{Float128},
                               check::Ref{Int32}, thresh::Ref{Float128}, err::Ref{Float128},
                               maxit::Ref{Int32}, niter::Ref{Int32}, ijw::Ptr{Int32},
                               dew::Ptr{Float128}, info::Ref{Int32})::Cvoid
end

function mc77lr(::Type{Float32}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77l_64_(n::Ref{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77lr(::Type{Float64}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77ld_64_(n::Ref{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77lr(::Type{Float128}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77lq_64_(n::Ref{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end

function mc77mr(::Type{Float32}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77m_(n::Ref{Int32}, a::Ptr{Float32}, de::Ptr{Float32}, check::Ref{Int32},
                              thresh::Ref{Float32}, err::Ref{Float32}, maxit::Ref{Int32},
                              niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float32},
                              info::Ref{Int32})::Cvoid
end

function mc77mr(::Type{Float64}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77md_(n::Ref{Int32}, a::Ptr{Float64}, de::Ptr{Float64}, check::Ref{Int32},
                               thresh::Ref{Float64}, err::Ref{Float64}, maxit::Ref{Int32},
                               niter::Ref{Int32}, ijw::Ptr{Int32}, dew::Ptr{Float64},
                               info::Ref{Int32})::Cvoid
end

function mc77mr(::Type{Float128}, ::Type{Int32}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset.mc77mq_(n::Ref{Int32}, a::Ptr{Float128}, de::Ptr{Float128},
                               check::Ref{Int32}, thresh::Ref{Float128}, err::Ref{Float128},
                               maxit::Ref{Int32}, niter::Ref{Int32}, ijw::Ptr{Int32},
                               dew::Ptr{Float128}, info::Ref{Int32})::Cvoid
end

function mc77mr(::Type{Float32}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77m_64_(n::Ref{Int64}, a::Ptr{Float32}, de::Ptr{Float32},
                                    check::Ref{Int64}, thresh::Ref{Float32}, err::Ref{Float32},
                                    maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                    dew::Ptr{Float32}, info::Ref{Int64})::Cvoid
end

function mc77mr(::Type{Float64}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77md_64_(n::Ref{Int64}, a::Ptr{Float64}, de::Ptr{Float64},
                                     check::Ref{Int64}, thresh::Ref{Float64}, err::Ref{Float64},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float64}, info::Ref{Int64})::Cvoid
end

function mc77mr(::Type{Float128}, ::Type{Int64}, n, a, de, check, thresh, err, maxit, niter, ijw,
                dew, info)
  @ccall libhsl_subset_64.mc77mq_64_(n::Ref{Int64}, a::Ptr{Float128}, de::Ptr{Float128},
                                     check::Ref{Int64}, thresh::Ref{Float128}, err::Ref{Float128},
                                     maxit::Ref{Int64}, niter::Ref{Int64}, ijw::Ptr{Int64},
                                     dew::Ptr{Float128}, info::Ref{Int64})::Cvoid
end
