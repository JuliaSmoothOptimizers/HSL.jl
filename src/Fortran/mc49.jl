function mc49ad(ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip, liw, iw, iflag)
  @ccall libhsl.mc49ad_(ind::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint},
                        irn::Ptr{Cint}, jcn::Ptr{Cint}, yesa::Ref{Cint}, la::Ref{Cint},
                        a::Ptr{Float64}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint},
                        iw::Ptr{Cint}, iflag::Ref{Cint})::Cvoid
end

function mc49ad_64(ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip, liw, iw, iflag)
  @ccall libhsl_subset_64.mc49ad_64_(ind::Ref{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                     nnz::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                     yesa::Ref{Int64}, la::Ref{Int64}, a::Ptr{Float64},
                                     lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                     iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function mc49bd(nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49bd_(nc::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64}, ip::Ptr{Cint},
                        iw::Ptr{Cint})::Cvoid
end

function mc49bd_64(nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49bd_64_(nc::Ref{Int64}, nnz::Ref{Int64}, irn::Ptr{Int64},
                                     jcn::Ptr{Int64}, yesa::Ref{Int64}, la::Ref{Int64},
                                     a::Ptr{Float64}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc49cd(nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49cd_(nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint},
                        jcn::Ptr{Cint}, yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                        ip::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc49cd_64(nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49cd_64_(nc::Ref{Int64}, nr::Ref{Int64}, nnz::Ref{Int64},
                                     irn::Ptr{Int64}, jcn::Ptr{Int64}, yesa::Ref{Int64},
                                     la::Ref{Int64}, a::Ptr{Float64}, ip::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end

function mc49ai(ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip, liw, iw, iflag)
  @ccall libhsl.mc49ai_(ind::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint},
                        irn::Ptr{Cint}, jcn::Ptr{Cint}, yesa::Ref{Cint}, la::Ref{Cint},
                        a::Ptr{Cint}, lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                        iflag::Ref{Cint})::Cvoid
end

function mc49bi(nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49bi_(nc::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                        yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Cint}, ip::Ptr{Cint},
                        iw::Ptr{Cint})::Cvoid
end

function mc49ci(nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49ci_(nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint},
                        jcn::Ptr{Cint}, yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Cint}, ip::Ptr{Cint},
                        iw::Ptr{Cint})::Cvoid
end

function mc49a(ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip, liw, iw, iflag)
  @ccall libhsl.mc49a_(ind::Ref{Cint}, nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint},
                       jcn::Ptr{Cint}, yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                       lip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                       iflag::Ref{Cint})::Cvoid
end

function mc49a_64(ind, nc, nr, nnz, irn, jcn, yesa, la, a, lip, ip, liw, iw, iflag)
  @ccall libhsl_subset_64.mc49a_64_(ind::Ref{Int64}, nc::Ref{Int64}, nr::Ref{Int64},
                                    nnz::Ref{Int64}, irn::Ptr{Int64}, jcn::Ptr{Int64},
                                    yesa::Ref{Int64}, la::Ref{Int64}, a::Ptr{Float32},
                                    lip::Ref{Int64}, ip::Ptr{Int64}, liw::Ref{Int64},
                                    iw::Ptr{Int64}, iflag::Ref{Int64})::Cvoid
end

function mc49b(nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49b_(nc::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                       yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32}, ip::Ptr{Cint},
                       iw::Ptr{Cint})::Cvoid
end

function mc49b_64(nc, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49b_64_(nc::Ref{Int64}, nnz::Ref{Int64}, irn::Ptr{Int64},
                                    jcn::Ptr{Int64}, yesa::Ref{Int64}, la::Ref{Int64},
                                    a::Ptr{Float32}, ip::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc49c(nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl.mc49c_(nc::Ref{Cint}, nr::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                       yesa::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32}, ip::Ptr{Cint},
                       iw::Ptr{Cint})::Cvoid
end

function mc49c_64(nc, nr, nnz, irn, jcn, yesa, la, a, ip, iw)
  @ccall libhsl_subset_64.mc49c_64_(nc::Ref{Int64}, nr::Ref{Int64}, nnz::Ref{Int64},
                                    irn::Ptr{Int64}, jcn::Ptr{Int64}, yesa::Ref{Int64},
                                    la::Ref{Int64}, a::Ptr{Float32}, ip::Ptr{Int64},
                                    iw::Ptr{Int64})::Cvoid
end
