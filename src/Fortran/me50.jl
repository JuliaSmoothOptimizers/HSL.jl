function me50ad(m, n, ne, la, a, irn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr, nextr, iw,
                ifirst, lenc, lastc, nextc, info, rinfo)
  @ccall libhsl.me50ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint},
                        a::Ptr{ComplexF64}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iq::Ptr{Cint},
                        cntl::Ptr{Float64}, icntl::Ptr{Cint}, ip::Ptr{Cint}, np::Ref{Cint},
                        jfirst::Ptr{Cint}, lenr::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint},
                        iw::Ptr{Cint}, ifirst::Ptr{Cint}, lenc::Ptr{Cint}, lastc::Ptr{Cint},
                        nextc::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ref{Float64})::Cvoid
end

function me50bd(m, n, ne, job, aa, irna, iptra, cntl, icntl, ip, iq, np, lfact, fact, irnf, iptrl,
                iptru, w, iw, info, rinfo)
  @ccall libhsl.me50bd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                        aa::Ptr{ComplexF64}, irna::Ptr{Cint}, iptra::Ptr{Cint}, cntl::Ptr{Float64},
                        icntl::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                        lfact::Ref{Cint}, fact::Ptr{ComplexF64}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                        iptru::Ptr{Cint}, w::Ptr{ComplexF64}, iw::Ptr{Cint}, info::Ptr{Cint},
                        rinfo::Ref{Float64})::Cvoid
end

function me50cd(m, n, icntl, iq, np, kind, lfact, fact, irnf, iptrl, iptru, b, x, w, info)
  @ccall libhsl.me50cd_(m::Ref{Cint}, n::Ref{Cint}, icntl::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                        kind::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{ComplexF64}, irnf::Ptr{Cint},
                        iptrl::Ptr{Cint}, iptru::Ptr{Cint}, b::Ptr{ComplexF64}, x::Ptr{ComplexF64},
                        w::Ptr{ComplexF64}, info::Ptr{Cint})::Cvoid
end

function me50dd(la, a, ind, iptr, n, disp, reals)
  @ccall libhsl.me50dd_(la::Ref{Cint}, a::Ptr{ComplexF64}, ind::Ptr{Cint}, iptr::Ptr{Cint},
                        n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function me50ed(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.me50ed_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF64}, lda::Ref{Cint},
                        pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function me50fd(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.me50fd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF64}, lda::Ref{Cint},
                        pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function me50gd(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.me50gd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF64}, lda::Ref{Cint},
                        nb::Ref{Cint}, pivtol::Ref{Float64}, ipiv::Ptr{Cint},
                        rank::Ref{Cint})::Cvoid
end

function me50hd(kind, m, n, a, lda, ipiv, b, icntl5)
  @ccall libhsl.me50hd_(kind::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF64},
                        lda::Ref{Cint}, ipiv::Ptr{Cint}, b::Ptr{ComplexF64},
                        icntl5::Ref{Cint})::Cvoid
end

function me50id(cntl, icntl)
  @ccall libhsl.me50id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function me50a(m, n, ne, la, a, irn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr, nextr, iw,
               ifirst, lenc, lastc, nextc, info, rinfo)
  @ccall libhsl.me50a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{ComplexF32},
                       irn::Ptr{Cint}, jcn::Ptr{Cint}, iq::Ptr{Cint}, cntl::Ptr{Float32},
                       icntl::Ptr{Cint}, ip::Ptr{Cint}, np::Ref{Cint}, jfirst::Ptr{Cint},
                       lenr::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, iw::Ptr{Cint},
                       ifirst::Ptr{Cint}, lenc::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint},
                       info::Ptr{Cint}, rinfo::Ref{Float32})::Cvoid
end

function me50b(m, n, ne, job, aa, irna, iptra, cntl, icntl, ip, iq, np, lfact, fact, irnf, iptrl,
               iptru, w, iw, info, rinfo)
  @ccall libhsl.me50b_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                       aa::Ptr{ComplexF32}, irna::Ptr{Cint}, iptra::Ptr{Cint}, cntl::Ptr{Float32},
                       icntl::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                       lfact::Ref{Cint}, fact::Ptr{ComplexF32}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                       iptru::Ptr{Cint}, w::Ptr{ComplexF32}, iw::Ptr{Cint}, info::Ptr{Cint},
                       rinfo::Ref{Float32})::Cvoid
end

function me50c(m, n, icntl, iq, np, kind, lfact, fact, irnf, iptrl, iptru, b, x, w, info)
  @ccall libhsl.me50c_(m::Ref{Cint}, n::Ref{Cint}, icntl::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                       kind::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{ComplexF32}, irnf::Ptr{Cint},
                       iptrl::Ptr{Cint}, iptru::Ptr{Cint}, b::Ptr{ComplexF32}, x::Ptr{ComplexF32},
                       w::Ptr{ComplexF32}, info::Ptr{Cint})::Cvoid
end

function me50d(la, a, ind, iptr, n, disp, reals)
  @ccall libhsl.me50d_(la::Ref{Cint}, a::Ptr{ComplexF32}, ind::Ptr{Cint}, iptr::Ptr{Cint},
                       n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function me50e(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.me50e_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF32}, lda::Ref{Cint},
                       pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function me50f(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.me50f_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF32}, lda::Ref{Cint},
                       pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function me50g(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.me50g_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF32}, lda::Ref{Cint},
                       nb::Ref{Cint}, pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function me50h(kind, m, n, a, lda, ipiv, b, icntl5)
  @ccall libhsl.me50h_(kind::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF32},
                       lda::Ref{Cint}, ipiv::Ptr{Cint}, b::Ptr{ComplexF32},
                       icntl5::Ref{Cint})::Cvoid
end

function me50i(cntl, icntl)
  @ccall libhsl.me50i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end
