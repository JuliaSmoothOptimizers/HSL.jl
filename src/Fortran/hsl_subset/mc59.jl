function mc59ar(::Type{Float32}, ::Type{Int32}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset.mc59a_(icntl::Ptr{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32},
                              irn::Ptr{Int32}, ljcn::Ref{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                              a::Ptr{Float32}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                              iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc59ar(::Type{Float64}, ::Type{Int32}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset.mc59ad_(icntl::Ptr{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32},
                               irn::Ptr{Int32}, ljcn::Ref{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                               a::Ptr{Float64}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                               iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc59ar(::Type{Float128}, ::Type{Int32}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset.mc59aq_(icntl::Ptr{Int32}, nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32},
                               irn::Ptr{Int32}, ljcn::Ref{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                               a::Ptr{Float128}, lip::Ref{Int32}, ip::Ptr{Int32}, liw::Ref{Int32},
                               iw::Ptr{Int32}, info::Ptr{Int32})::Cvoid
end

function mc59ar(::Type{Float32}, ::Type{Int64}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset_64.mc59a_64_(icntl::Ptr{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                    ne::Ref{Int64}, irn::Ptr{Int64}, ljcn::Ref{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                    iw::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59ar(::Type{Float64}, ::Type{Int64}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset_64.mc59ad_64_(icntl::Ptr{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     ne::Ref{Int64}, irn::Ptr{Int64}, ljcn::Ref{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59ar(::Type{Float128}, ::Type{Int64}, icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip,
                liw, iw, info)
  @ccall libhsl_subset_64.mc59aq_64_(icntl::Ptr{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     ne::Ref{Int64}, irn::Ptr{Int64}, ljcn::Ref{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float128},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59br(::Type{Float32}, ::Type{Int32}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset.mc59b_(lcheck::Ref{Cint}, part::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32},
                              ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                              a::Ptr{Float32}, ip::Ptr{Int32}, iw::Ptr{Int32}, iout::Ref{Int32},
                              jout::Ref{Int32}, kne::Ref{Int32})::Cvoid
end

function mc59br(::Type{Float64}, ::Type{Int32}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset.mc59bd_(lcheck::Ref{Cint}, part::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32},
                               ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                               a::Ptr{Float64}, ip::Ptr{Int32}, iw::Ptr{Int32}, iout::Ref{Int32},
                               jout::Ref{Int32}, kne::Ref{Int32})::Cvoid
end

function mc59br(::Type{Float128}, ::Type{Int32}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset.mc59bq_(lcheck::Ref{Cint}, part::Ref{Int32}, nc::Ref{Int32}, nr::Ref{Int32},
                               ne::Ref{Int32}, irn::Ptr{Int32}, jcn::Ptr{Int32}, la::Ref{Int32},
                               a::Ptr{Float128}, ip::Ptr{Int32}, iw::Ptr{Int32}, iout::Ref{Int32},
                               jout::Ref{Int32}, kne::Ref{Int32})::Cvoid
end

function mc59br(::Type{Float32}, ::Type{Int64}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset_64.mc59b_64_(lcheck::Ref{Cint}, part::Ref{Int64}, nc::Ref{Int64},
                                    nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, iout::Ref{Int64},
                                    jout::Ref{Int64}, kne::Ref{Int64})::Cvoid
end

function mc59br(::Type{Float64}, ::Type{Int64}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset_64.mc59bd_64_(lcheck::Ref{Cint}, part::Ref{Int64}, nc::Ref{Int64},
                                     nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, iout::Ref{Int64},
                                     jout::Ref{Int64}, kne::Ref{Int64})::Cvoid
end

function mc59br(::Type{Float128}, ::Type{Int64}, lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw,
                iout, jout, kne)
  @ccall libhsl_subset_64.mc59bq_64_(lcheck::Ref{Cint}, part::Ref{Int64}, nc::Ref{Int64},
                                     nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float128},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, iout::Ref{Int64},
                                     jout::Ref{Int64}, kne::Ref{Int64})::Cvoid
end

function mc59cr(::Type{Float32}, ::Type{Int32}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset.mc59c_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                              jcn::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float32}, ip::Ptr{Int32},
                              iw::Ptr{Int32})::Cvoid
end

function mc59cr(::Type{Float64}, ::Type{Int32}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset.mc59cd_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float64}, ip::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc59cr(::Type{Float128}, ::Type{Int32}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset.mc59cq_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               jcn::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float128}, ip::Ptr{Int32},
                               iw::Ptr{Int32})::Cvoid
end

function mc59cr(::Type{Float32}, ::Type{Int64}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset_64.mc59c_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc59cr(::Type{Float64}, ::Type{Int64}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset_64.mc59cd_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, la::Ref{Int64},
                                     a::Ptr{Float64}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc59cr(::Type{Float128}, ::Type{Int64}, nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset_64.mc59cq_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, la::Ref{Int64},
                                     a::Ptr{Float128}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc59dr(::Type{Float32}, ::Type{Int32}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset.mc59d_(nc::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              la::Ref{Int32}, a::Ptr{Float32})::Cvoid
end

function mc59dr(::Type{Float64}, ::Type{Int32}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset.mc59dd_(nc::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               la::Ref{Int32}, a::Ptr{Float64})::Cvoid
end

function mc59dr(::Type{Float128}, ::Type{Int32}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset.mc59dq_(nc::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               la::Ref{Int32}, a::Ptr{Float128})::Cvoid
end

function mc59dr(::Type{Float32}, ::Type{Int64}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset_64.mc59d_64_(nc::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, ip::Ptr{Int64},
                                    la::Ref{Int64}, a::Ptr{Float32})::Cvoid
end

function mc59dr(::Type{Float64}, ::Type{Int64}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset_64.mc59dd_64_(nc::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64})::Cvoid
end

function mc59dr(::Type{Float128}, ::Type{Int64}, nc, ne, irn, ip, la, a)
  @ccall libhsl_subset_64.mc59dq_64_(nc::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float128})::Cvoid
end

function mc59er(::Type{Float32}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset.mc59e_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                              lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float32},
                              iw::Ptr{Int32}, idup::Ref{Int32}, kne::Ref{Int32},
                              icntl6::Ref{Int32})::Cvoid
end

function mc59er(::Type{Float64}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset.mc59ed_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float64},
                               iw::Ptr{Int32}, idup::Ref{Int32}, kne::Ref{Int32},
                               icntl6::Ref{Int32})::Cvoid
end

function mc59er(::Type{Float128}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset.mc59eq_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float128},
                               iw::Ptr{Int32}, idup::Ref{Int32}, kne::Ref{Int32},
                               icntl6::Ref{Int32})::Cvoid
end

function mc59er(::Type{Float32}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset_64.mc59e_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, iw::Ptr{Int64}, idup::Ref{Int64},
                                    kne::Ref{Int64}, icntl6::Ref{Int64})::Cvoid
end

function mc59er(::Type{Float64}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset_64.mc59ed_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float64}, iw::Ptr{Int64},
                                     idup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64})::Cvoid
end

function mc59er(::Type{Float128}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne,
                icntl6)
  @ccall libhsl_subset_64.mc59eq_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float128}, iw::Ptr{Int64},
                                     idup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64})::Cvoid
end

function mc59fr(::Type{Float32}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset.mc59f_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                              lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float32},
                              liw::Ref{Int32}, iw::Ptr{Int32}, idup::Ref{Int32}, iout::Ref{Int32},
                              iup::Ref{Int32}, kne::Ref{Int32}, icntl6::Ref{Int32},
                              info::Ptr{Int32})::Cvoid
end

function mc59fr(::Type{Float64}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset.mc59fd_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float64},
                               liw::Ref{Int32}, iw::Ptr{Int32}, idup::Ref{Int32}, iout::Ref{Int32},
                               iup::Ref{Int32}, kne::Ref{Int32}, icntl6::Ref{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc59fr(::Type{Float128}, ::Type{Int32}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset.mc59fq_(nc::Ref{Int32}, nr::Ref{Int32}, ne::Ref{Int32}, irn::Ptr{Int32},
                               lip::Ref{Int32}, ip::Ptr{Int32}, la::Ref{Int32}, a::Ptr{Float128},
                               liw::Ref{Int32}, iw::Ptr{Int32}, idup::Ref{Int32}, iout::Ref{Int32},
                               iup::Ref{Int32}, kne::Ref{Int32}, icntl6::Ref{Int32},
                               info::Ptr{Int32})::Cvoid
end

function mc59fr(::Type{Float32}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset_64.mc59f_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, liw::Ref{Int64}, iw::Ptr{Int64},
                                    idup::Ref{Int64}, iout::Ref{Int64}, iup::Ref{Int64},
                                    kne::Ref{Int64}, icntl6::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59fr(::Type{Float64}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset_64.mc59fd_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, idup::Ref{Int64}, iout::Ref{Int64},
                                     iup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc59fr(::Type{Float128}, ::Type{Int64}, nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup,
                iout, iup, kne, icntl6, info)
  @ccall libhsl_subset_64.mc59fq_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float128}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, idup::Ref{Int64}, iout::Ref{Int64},
                                     iup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64},
                                     info::Ptr{Int64})::Cvoid
end
