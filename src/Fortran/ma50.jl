function ma50ad(m, n, ne, la, a, irn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr, nextr, iw, ifirst, lenc, lastc, nextc, info, rinfo)
  @ccall libhsl.ma50ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iq::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, ip::Ptr{Cint}, np::Ref{Cint}, jfirst::Ptr{Cint}, lenr::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, iw::Ptr{Cint}, ifirst::Ptr{Cint}, lenc::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma50bd(m, n, ne, job, aa, irna, iptra, cntl, icntl, ip, iq, np, lfact, fact, irnf, iptrl, iptru, w, iw, info, rinfo)
  @ccall libhsl.ma50bd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, aa::Ptr{Float64}, irna::Ptr{Cint}, iptra::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64}, irnf::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint}, w::Ptr{Float64}, iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma50cd(m, n, icntl, iq, np, trans, lfact, fact, irnf, iptrl, iptru, b, x, w, info)
  @ccall libhsl.ma50cd_(m::Ref{Cint}, n::Ref{Cint}, icntl::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint}, trans::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64}, irnf::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint}, b::Ptr{Float64}, x::Ptr{Float64}, w::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma50dd(la, a, ind, iptr, n, disp, reals)
  @ccall libhsl.ma50dd_(la::Ref{Cint}, a::Ptr{Float64}, ind::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function ma50ed(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.ma50ed_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50fd(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.ma50fd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50gd(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.ma50gd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, nb::Ref{Cint}, pivtol::Ref{Float64}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50hd(trans, m, n, a, lda, ipiv, b, icntl5)
  @ccall libhsl.ma50hd_(trans::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, ipiv::Ptr{Cint}, b::Ptr{Float64}, icntl5::Ref{Cint})::Cvoid
end

function ma50id(cntl, icntl)
  @ccall libhsl.ma50id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma50a(m, n, ne, la, a, irn, jcn, iq, cntl, icntl, ip, np, jfirst, lenr, lastr, nextr, iw, ifirst, lenc, lastc, nextc, info, rinfo)
  @ccall libhsl.ma50a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, jcn::Ptr{Cint}, iq::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, ip::Ptr{Cint}, np::Ref{Cint}, jfirst::Ptr{Cint}, lenr::Ptr{Cint}, lastr::Ptr{Cint}, nextr::Ptr{Cint}, iw::Ptr{Cint}, ifirst::Ptr{Cint}, lenc::Ptr{Cint}, lastc::Ptr{Cint}, nextc::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma50b(m, n, ne, job, aa, irna, iptra, cntl, icntl, ip, iq, np, lfact, fact, irnf, iptrl, iptru, w, iw, info, rinfo)
  @ccall libhsl.ma50b_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint}, aa::Ptr{Float32}, irna::Ptr{Cint}, iptra::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint}, ip::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32}, irnf::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint}, w::Ptr{Float32}, iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma50c(m, n, icntl, iq, np, trans, lfact, fact, irnf, iptrl, iptru, b, x, w, info)
  @ccall libhsl.ma50c_(m::Ref{Cint}, n::Ref{Cint}, icntl::Ptr{Cint}, iq::Ptr{Cint}, np::Ref{Cint}, trans::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32}, irnf::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint}, b::Ptr{Float32}, x::Ptr{Float32}, w::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma50d(la, a, ind, iptr, n, disp, reals)
  @ccall libhsl.ma50d_(la::Ref{Cint}, a::Ptr{Float32}, ind::Ptr{Cint}, iptr::Ptr{Cint}, n::Ref{Cint}, disp::Ref{Cint}, reals::Ref{Cint})::Cvoid
end

function ma50e(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.ma50e_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50f(m, n, a, lda, pivtol, ipiv, rank)
  @ccall libhsl.ma50f_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50g(m, n, a, lda, nb, pivtol, ipiv, rank)
  @ccall libhsl.ma50g_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, nb::Ref{Cint}, pivtol::Ref{Float32}, ipiv::Ptr{Cint}, rank::Ref{Cint})::Cvoid
end

function ma50h(trans, m, n, a, lda, ipiv, b, icntl5)
  @ccall libhsl.ma50h_(trans::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, ipiv::Ptr{Cint}, b::Ptr{Float32}, icntl5::Ref{Cint})::Cvoid
end

function ma50i(cntl, icntl)
  @ccall libhsl.ma50i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end
