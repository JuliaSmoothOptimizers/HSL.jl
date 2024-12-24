function mc49ar(::Type{Float32}, ::Type{Int32}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset.mc49a_(ind::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32},
                              irn::Ptr{Int32}, jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32},
                              a::Ptr{Float32}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                              iw::Ptr{Int32}, iflag::Ref{Int32})::Cvoid
end

function mc49ar(::Type{Float64}, ::Type{Int32}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset.mc49ad_(ind::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32},
                               a::Ptr{Float64}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                               iw::Ptr{Int32}, iflag::Ref{Int32})::Cvoid
end

function mc49ar(::Type{Float128}, ::Type{Int32}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset.mc49aq_(ind::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32},
                               irn::Ptr{Int32}, jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32},
                               a::Ptr{Float128}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                               iw::Ptr{Int32}, iflag::Ref{Int32})::Cvoid
end

function mc49ar(::Type{Float32}, ::Type{Int64}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset_64.mc49a_64_(ind::Ref{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                    nnz::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    yesa::Ref{Cint}, la::Ref{Int64}, a::Ptr{Float32},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                    iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function mc49ar(::Type{Float64}, ::Type{Int64}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset_64.mc49ad_64_(ind::Ref{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     nnz::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     yesa::Ref{Cint}, la::Ref{Int64}, a::Ptr{Float64},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function mc49ar(::Type{Float128}, ::Type{Int64}, ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip,
                liw, iw, iflag)
  @ccall libhsl_subset_64.mc49aq_64_(ind::Ref{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     nnz::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     yesa::Ref{Cint}, la::Ref{Int64}, a::Ptr{Float128},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function mc49br(::Type{Float32}, ::Type{Int32}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49b_(nc::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                              yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float32}, ip::Ptr{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function mc49br(::Type{Float64}, ::Type{Int32}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49bd_(nc::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float64}, ip::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc49br(::Type{Float128}, ::Type{Int32}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49bq_(nc::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32},
                               yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float128}, ip::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc49br(::Type{Float32}, ::Type{Int64}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49b_64_(nc::Ref{Int64}, nnz::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, yesa::Ref{Cint}, la::Ref{Int64},
                                    a::Ptr{Float32}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc49br(::Type{Float64}, ::Type{Int64}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49bd_64_(nc::Ref{Int64}, nnz::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, yesa::Ref{Cint}, la::Ref{Int64},
                                     a::Ptr{Float64}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc49br(::Type{Float128}, ::Type{Int64}, nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49bq_64_(nc::Ref{Int64}, nnz::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, yesa::Ref{Cint}, la::Ref{Int64},
                                     a::Ptr{Float128}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc49cr(::Type{Float32}, ::Type{Int32}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49c_(nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32},
                              jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float32},
                              ip::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc49cr(::Type{Float64}, ::Type{Int32}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49cd_(nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float64},
                               ip::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc49cr(::Type{Float128}, ::Type{Int32}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset.mc49cq_(nc::Ref{Int32}, nr::Ref{Int32}, nnz::Ref{Int32}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, yesa::Ref{Cint}, la::Ref{Int32}, a::Ptr{Float128},
                               ip::Ptr{Int32}, iw::Ptr{Int32})::Cvoid
end

function mc49cr(::Type{Float32}, ::Type{Int64}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49c_64_(nc::Ref{Int64}, nr::Ref{Int64}, nnz::Ref{Int64},
                                    irn::Ptr{Int64}, jcn::Ptr{Int64}, yesa::Ref{Cint},
                                    la::Ref{Int64}, a::Ptr{Float32}, ip::Ptr{Int64},
                                    iw::Ptr{Int64})::Cvoid
end

function mc49cr(::Type{Float64}, ::Type{Int64}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49cd_64_(nc::Ref{Int64}, nr::Ref{Int64}, nnz::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, yesa::Ref{Cint},
                                     la::Ref{Int64}, a::Ptr{Float64}, ip::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end

function mc49cr(::Type{Float128}, ::Type{Int64}, nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49cq_64_(nc::Ref{Int64}, nr::Ref{Int64}, nnz::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, yesa::Ref{Cint},
                                     la::Ref{Int64}, a::Ptr{Float128}, ip::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end
