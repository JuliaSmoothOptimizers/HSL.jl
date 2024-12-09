function mc59ac(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl.mc59ac_(icntl::Ptr{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint},
                        irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF32}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59bc(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl.mc59bc_(lcheck::Ref{Cint}, part::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint},
                        ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF32}, ip::Ptr{Cint}, iw::Ptr{Cint}, iout::Ref{Cint},
                        jout::Ref{Cint}, kne::Ref{Cint})::Cvoid
end

function mc59cc(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl.mc59cc_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        la::Ref{Cint}, a::Ptr{ComplexF32}, ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc59dc(nc, ne, irn, ip, la, a)
  @ccall libhsl.mc59dc_(nc::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF32})::Cvoid
end

function mc59ec(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl.mc59ec_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{ComplexF32}, iw::Ptr{Cint},
                        idup::Ref{Cint}, kne::Ref{Cint}, icntl6::Ref{Cint})::Cvoid
end

function mc59fc(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl.mc59fc_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{ComplexF32}, liw::Ref{Cint},
                        iw::Ptr{Cint}, idup::Ref{Cint}, iout::Ref{Cint}, iup::Ref{Cint},
                        kne::Ref{Cint}, icntl6::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59ad(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl.mc59ad_(icntl::Ptr{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint},
                        irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{Float64}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59ad_64(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl_subset_64.mc59ad_64_(icntl::Ptr{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     ne::Ref{Int64}, irn::Ptr{Int64}, ljcn::Ref{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59bd(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl.mc59bd_(lcheck::Ref{Cint}, part::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint},
                        ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{Float64}, ip::Ptr{Cint}, iw::Ptr{Cint}, iout::Ref{Cint},
                        jout::Ref{Cint}, kne::Ref{Cint})::Cvoid
end

function mc59bd_64(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl_subset_64.mc59bd_64_(lcheck::Ref{Int64}, part::Ref{Int64}, nc::Ref{Int64},
                                     nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     ip::Ptr{Int64}, iw::Ptr{Int64}, iout::Ref{Int64},
                                     jout::Ref{Int64}, kne::Ref{Int64})::Cvoid
end

function mc59cd(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl.mc59cd_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        la::Ref{Cint}, a::Ptr{Float64}, ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc59cd_64(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset_64.mc59cd_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, la::Ref{Int64},
                                     a::Ptr{Float64}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc59dd(nc, ne, irn, ip, la, a)
  @ccall libhsl.mc59dd_(nc::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{Float64})::Cvoid
end

function mc59dd_64(nc, ne, irn, ip, la, a)
  @ccall libhsl_subset_64.mc59dd_64_(nc::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float64})::Cvoid
end

function mc59ed(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl.mc59ed_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float64}, iw::Ptr{Cint},
                        idup::Ref{Cint}, kne::Ref{Cint}, icntl6::Ref{Cint})::Cvoid
end

function mc59ed_64(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl_subset_64.mc59ed_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float64}, iw::Ptr{Int64},
                                     idup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64})::Cvoid
end

function mc59fd(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl.mc59fd_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float64}, liw::Ref{Cint},
                        iw::Ptr{Cint}, idup::Ref{Cint}, iout::Ref{Cint}, iup::Ref{Cint},
                        kne::Ref{Cint}, icntl6::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59fd_64(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl_subset_64.mc59fd_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64},
                                     irn::Ptr{Int64}, lip::Ref{Int64}, ip::Ptr{Int64},
                                     la::Ref{Int64}, a::Ptr{Float64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, idup::Ref{Int64}, iout::Ref{Int64},
                                     iup::Ref{Int64}, kne::Ref{Int64}, icntl6::Ref{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc59ai(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl.mc59ai_(icntl::Ptr{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint},
                        irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{Cint}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function mc59bi(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl.mc59bi_(lcheck::Ref{Cint}, part::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint},
                        ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Cint},
                        ip::Ptr{Cint}, iw::Ptr{Cint}, iout::Ref{Cint}, jout::Ref{Cint},
                        kne::Ref{Cint})::Cvoid
end

function mc59ci(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl.mc59ci_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        la::Ref{Cint}, a::Ptr{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc59di(nc, ne, irn, ip, la, a)
  @ccall libhsl.mc59di_(nc::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{Cint})::Cvoid
end

function mc59ei(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl.mc59ei_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Cint}, iw::Ptr{Cint}, idup::Ref{Cint},
                        kne::Ref{Cint}, icntl6::Ref{Cint})::Cvoid
end

function mc59fi(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl.mc59fi_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                        idup::Ref{Cint}, iout::Ref{Cint}, iup::Ref{Cint}, kne::Ref{Cint},
                        icntl6::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59a(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl.mc59a_(icntl::Ptr{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint},
                       irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                       a::Ptr{Float32}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint},
                       iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59a_64(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl_subset_64.mc59a_64_(icntl::Ptr{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                    ne::Ref{Int64}, irn::Ptr{Int64}, ljcn::Ref{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                    iw::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59b(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl.mc59b_(lcheck::Ref{Cint}, part::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint},
                       ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                       a::Ptr{Float32}, ip::Ptr{Cint}, iw::Ptr{Cint}, iout::Ref{Cint},
                       jout::Ref{Cint}, kne::Ref{Cint})::Cvoid
end

function mc59b_64(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl_subset_64.mc59b_64_(lcheck::Ref{Int64}, part::Ref{Int64}, nc::Ref{Int64},
                                    nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    ip::Ptr{Int64}, iw::Ptr{Int64}, iout::Ref{Int64},
                                    jout::Ref{Int64}, kne::Ref{Int64})::Cvoid
end

function mc59c(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl.mc59c_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                       la::Ref{Cint}, a::Ptr{Float32}, ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc59c_64(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl_subset_64.mc59c_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc59d(nc, ne, irn, ip, la, a)
  @ccall libhsl.mc59d_(nc::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint},
                       a::Ptr{Float32})::Cvoid
end

function mc59d_64(nc, ne, irn, ip, la, a)
  @ccall libhsl_subset_64.mc59d_64_(nc::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64}, ip::Ptr{Int64},
                                    la::Ref{Int64}, a::Ptr{Float32})::Cvoid
end

function mc59e(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl.mc59e_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                       ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                       idup::Ref{Cint}, kne::Ref{Cint}, icntl6::Ref{Cint})::Cvoid
end

function mc59e_64(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl_subset_64.mc59e_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, iw::Ptr{Int64}, idup::Ref{Int64},
                                    kne::Ref{Int64}, icntl6::Ref{Int64})::Cvoid
end

function mc59f(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl.mc59f_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                       ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint},
                       idup::Ref{Cint}, iout::Ref{Cint}, iup::Ref{Cint}, kne::Ref{Cint},
                       icntl6::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59f_64(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl_subset_64.mc59f_64_(nc::Ref{Int64}, nr::Ref{Int64}, ne::Ref{Int64}, irn::Ptr{Int64},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, liw::Ref{Int64}, iw::Ptr{Int64},
                                    idup::Ref{Int64}, iout::Ref{Int64}, iup::Ref{Int64},
                                    kne::Ref{Int64}, icntl6::Ref{Int64}, info::Ptr{Int64})::Cvoid
end

function mc59az(icntl, nc, nr, ne, irn, ljcn, jcn, la, a, lip, ip, liw, iw, info)
  @ccall libhsl.mc59az_(icntl::Ptr{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint},
                        irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF64}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc59bz(lcheck, part, nc, nr, ne, irn, jcn, la, a, ip, iw, iout, jout, kne)
  @ccall libhsl.mc59bz_(lcheck::Ref{Cint}, part::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint},
                        ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF64}, ip::Ptr{Cint}, iw::Ptr{Cint}, iout::Ref{Cint},
                        jout::Ref{Cint}, kne::Ref{Cint})::Cvoid
end

function mc59cz(nc, nr, ne, irn, jcn, la, a, ip, iw)
  @ccall libhsl.mc59cz_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        la::Ref{Cint}, a::Ptr{ComplexF64}, ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc59dz(nc, ne, irn, ip, la, a)
  @ccall libhsl.mc59dz_(nc::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF64})::Cvoid
end

function mc59ez(nc, nr, ne, irn, lip, ip, la, a, iw, idup, kne, icntl6)
  @ccall libhsl.mc59ez_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{ComplexF64}, iw::Ptr{Cint},
                        idup::Ref{Cint}, kne::Ref{Cint}, icntl6::Ref{Cint})::Cvoid
end

function mc59fz(nc, nr, ne, irn, lip, ip, la, a, liw, iw, idup, iout, iup, kne, icntl6, info)
  @ccall libhsl.mc59fz_(nc::Ref{Cint}, nr::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, lip::Ref{Cint},
                        ip::Ptr{Cint}, la::Ref{Cint}, a::Ptr{ComplexF64}, liw::Ref{Cint},
                        iw::Ptr{Cint}, idup::Ref{Cint}, iout::Ref{Cint}, iup::Ref{Cint},
                        kne::Ref{Cint}, icntl6::Ref{Cint}, info::Ptr{Cint})::Cvoid
end
