function ma51ad(m, n, la, irn, keep, rank, rows, cols, w)
    @ccall libhsl.ma51ad_(m::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, irn::Ptr{Cint},
                          keep::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint},
                          cols::Ptr{Cint}, w::Ptr{Cint})::Cvoid
end

function ma51bd(m, n, iq, np, lfact, irnf, iptrl, iptru, rank, rows, cols, w)
    @ccall libhsl.ma51bd_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                          lfact::Ref{Cint}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                          iptru::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint},
                          cols::Ptr{Cint}, w::Ptr{Cint})::Cvoid
end

function ma51cd(m, n, la, a, irn, keep, sgndet, logdet, w)
    @ccall libhsl.ma51cd_(m::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                          irn::Ptr{Cint}, keep::Ptr{Cint}, sgndet::Ref{Cint},
                          logdet::Ref{Float64}, w::Ptr{Cint})::Cvoid
end

function ma51dd(m, n, iq, np, lfact, fact, irnf, iptrl, iptru, sgndet, logdet, w)
    @ccall libhsl.ma51dd_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                          lfact::Ref{Cint}, fact::Ptr{Float64}, irnf::Ptr{Cint},
                          iptrl::Ptr{Cint}, iptru::Ptr{Cint}, sgndet::Ref{Cint},
                          logdet::Ref{Float64}, w::Ptr{Cint})::Cvoid
end

function ma51xd(n, a, lda, ipiv, sgndet, logdet)
    @ccall libhsl.ma51xd_(n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, ipiv::Ptr{Cint},
                          sgndet::Ref{Cint}, logdet::Ref{Float64})::Cvoid
end

function ma51yd(m, n, ipiv, rank, rows, cols)
    @ccall libhsl.ma51yd_(m::Ref{Cint}, n::Ref{Cint}, ipiv::Ptr{Cint}, rank::Ref{Cint},
                          rows::Ptr{Cint}, cols::Ptr{Cint})::Cvoid
end

function ma51zd(m, n, iq, np, lfact, irnf, iptrl, iptru, rank, rows, cols, w)
    @ccall libhsl.ma51zd_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                          lfact::Ref{Cint}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                          iptru::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint},
                          cols::Ptr{Cint}, w::Ptr{Cint})::Cvoid
end

function ma51a(m, n, la, irn, keep, rank, rows, cols, w)
    @ccall libhsl.ma51a_(m::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, irn::Ptr{Cint},
                         keep::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint}, cols::Ptr{Cint},
                         w::Ptr{Cint})::Cvoid
end

function ma51b(m, n, iq, np, lfact, irnf, iptrl, iptru, rank, rows, cols, w)
    @ccall libhsl.ma51b_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                         lfact::Ref{Cint}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                         iptru::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint},
                         cols::Ptr{Cint}, w::Ptr{Cint})::Cvoid
end

function ma51c(m, n, la, a, irn, keep, sgndet, logdet, w)
    @ccall libhsl.ma51c_(m::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                         irn::Ptr{Cint}, keep::Ptr{Cint}, sgndet::Ref{Cint},
                         logdet::Ref{Float32}, w::Ptr{Cint})::Cvoid
end

function ma51d(m, n, iq, np, lfact, fact, irnf, iptrl, iptru, sgndet, logdet, w)
    @ccall libhsl.ma51d_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                         lfact::Ref{Cint}, fact::Ptr{Float32}, irnf::Ptr{Cint},
                         iptrl::Ptr{Cint}, iptru::Ptr{Cint}, sgndet::Ref{Cint},
                         logdet::Ref{Float32}, w::Ptr{Cint})::Cvoid
end

function ma51x(n, a, lda, ipiv, sgndet, logdet)
    @ccall libhsl.ma51x_(n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, ipiv::Ptr{Cint},
                         sgndet::Ref{Cint}, logdet::Ref{Float32})::Cvoid
end

function ma51y(m, n, ipiv, rank, rows, cols)
    @ccall libhsl.ma51y_(m::Ref{Cint}, n::Ref{Cint}, ipiv::Ptr{Cint}, rank::Ref{Cint},
                         rows::Ptr{Cint}, cols::Ptr{Cint})::Cvoid
end

function ma51z(m, n, iq, np, lfact, irnf, iptrl, iptru, rank, rows, cols, w)
    @ccall libhsl.ma51z_(m::Ref{Cint}, n::Ref{Cint}, iq::Ptr{Cint}, np::Ref{Cint},
                         lfact::Ref{Cint}, irnf::Ptr{Cint}, iptrl::Ptr{Cint},
                         iptru::Ptr{Cint}, rank::Ref{Cint}, rows::Ptr{Cint},
                         cols::Ptr{Cint}, w::Ptr{Cint})::Cvoid
end
