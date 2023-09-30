function mc58ad(m, n, ne, la, a, lirn, irn, ljcn, jcn, cntl, icntl, liw, iw, info, rinfo, rank,
                rows, cols)
  @ccall libhsl.mc58ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                        lirn::Ref{Cint}, irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint},
                        cntl::Ptr{Float64}, icntl::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                        info::Ptr{Cint}, rinfo::Ptr{Float64}, rank::Ref{Cint}, rows::Ptr{Cint},
                        cols::Ptr{Cint})::Cvoid
end

function mc58id(cntl, icntl)
  @ccall libhsl.mc58id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function mc58bd(m, n, ne, la, a, lirn, irn, ljcn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr,
                nextr, iw, ifirst, lenc, lastc, nextc, zlist, info, rinfo, rows, cols, rank)
  @ccall libhsl.mc58bd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                        lirn::Ref{Cint}, irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint},
                        iq::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, ip::Ptr{Cint},
                        np::Ref{Cint}, jfirst::Ptr{Cint}, lenr::Ptr{Cint}, lastr::Ptr{Cint},
                        nextr::Ptr{Cint}, iw::Ptr{Cint}, ifirst::Ptr{Cint}, lenc::Ptr{Cint},
                        lastc::Ptr{Cint}, nextc::Ptr{Cint}, zlist::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ptr{Float64}, rows::Ptr{Cint}, cols::Ptr{Cint},
                        rank::Ref{Cint})::Cvoid
end

function mc58cd(m, n, ipiv, rank, rows, cols)
  @ccall libhsl.mc58cd_(m::Ref{Cint}, n::Ref{Cint}, ipiv::Ptr{Cint}, rank::Ref{Cint},
                        rows::Ptr{Cint}, cols::Ptr{Cint})::Cvoid
end

function mc58dd(la, a, lind, ind, iptr, n, disp, reals)
  @ccall libhsl.mc58dd_(la::Ref{Cint}, a::Ptr{Float64}, lind::Ref{Cint}, ind::Ptr{Cint},
                        iptr::Ptr{Cint}, n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function mc58ed(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.mc58ed_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint},
                        pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function mc58fd(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.mc58fd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint},
                        pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function mc58gd(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.mc58gd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, nb::Ref{Cint},
                        pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function mc58a(m, n, ne, la, a, lirn, irn, ljcn, jcn, cntl, icntl, liw, iw, info, rinfo, rank, rows,
               cols)
  @ccall libhsl.mc58a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                       lirn::Ref{Cint}, irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint},
                       cntl::Ptr{Float32}, icntl::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                       info::Ptr{Cint}, rinfo::Ptr{Float32}, rank::Ref{Cint}, rows::Ptr{Cint},
                       cols::Ptr{Cint})::Cvoid
end

function mc58i(cntl, icntl)
  @ccall libhsl.mc58i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function mc58b(m, n, ne, la, a, lirn, irn, ljcn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr,
               nextr, iw, ifirst, lenc, lastc, nextc, zlist, info, rinfo, rows, cols, rank)
  @ccall libhsl.mc58b_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                       lirn::Ref{Cint}, irn::Ptr{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint},
                       iq::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, ip::Ptr{Cint},
                       np::Ref{Cint}, jfirst::Ptr{Cint}, lenr::Ptr{Cint}, lastr::Ptr{Cint},
                       nextr::Ptr{Cint}, iw::Ptr{Cint}, ifirst::Ptr{Cint}, lenc::Ptr{Cint},
                       lastc::Ptr{Cint}, nextc::Ptr{Cint}, zlist::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ptr{Float32}, rows::Ptr{Cint}, cols::Ptr{Cint},
                       rank::Ref{Cint})::Cvoid
end

function mc58c(m, n, ipiv, rank, rows, cols)
  @ccall libhsl.mc58c_(m::Ref{Cint}, n::Ref{Cint}, ipiv::Ptr{Cint}, rank::Ref{Cint},
                       rows::Ptr{Cint}, cols::Ptr{Cint})::Cvoid
end

function mc58d(la, a, lind, ind, iptr, n, disp, reals)
  @ccall libhsl.mc58d_(la::Ref{Cint}, a::Ptr{Float32}, lind::Ref{Cint}, ind::Ptr{Cint},
                       iptr::Ptr{Cint}, n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function mc58e(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.mc58e_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint},
                       pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function mc58f(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.mc58f_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint},
                       pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function mc58g(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.mc58g_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, nb::Ref{Cint},
                       pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end
