function mi12id(icntl, cntl)
    @ccall libhsl.mi12id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function mi12ad(n, a, irna, la, ipca, iwork, liwork, work, lwork, icntl, cntl, info)
    @ccall libhsl.mi12ad_(n::Ref{Cint}, a::Ptr{Float64}, irna::Ptr{Cint}, la::Ref{Cint},
                          ipca::Ptr{Cint}, iwork::Ptr{Cint}, liwork::Ref{Cint},
                          work::Ptr{Float64}, lwork::Ref{Cint}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function mi12bd(trans, n, iwork, liwork, work, lwork, icntl, info, z, y)
    @ccall libhsl.mi12bd_(trans::Ref{Cint}, n::Ref{Cint}, iwork::Ptr{Cint},
                          liwork::Ref{Cint}, work::Ptr{Float64}, lwork::Ref{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint}, z::Ptr{Float64},
                          y::Ptr{Float64})::Cvoid
end

function mi12cd(n, a, irna, la, ipca, inv, irninv, linv, ipinv, iwork, liwork, work, lwork,
                icntl, cntl, info)
    @ccall libhsl.mi12cd_(n::Ref{Cint}, a::Ptr{Float64}, irna::Ptr{Cint}, la::Ref{Cint},
                          ipca::Ptr{Cint}, inv::Ptr{Float64}, irninv::Ptr{Cint},
                          linv::Ref{Cint}, ipinv::Ptr{Cint}, iwork::Ptr{Cint},
                          liwork::Ref{Cint}, work::Ptr{Float64}, lwork::Ref{Cint},
                          icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function mi12dd(icol, n, a, irna, la, ipca, icna, licna, ipra, mmax, maxnen, inv, irninv,
                nnzinv, ssqrs, r, y, ld, nyr, usecol, userow, ismall, pcnrm2, res, v, icntl,
                cntl, inform)
    @ccall libhsl.mi12dd_(icol::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, irna::Ptr{Cint},
                          la::Ref{Cint}, ipca::Ptr{Cint}, icna::Ptr{Cint}, licna::Ref{Cint},
                          ipra::Ptr{Cint}, mmax::Ref{Cint}, maxnen::Ref{Cint},
                          inv::Ptr{Float64}, irninv::Ptr{Cint}, nnzinv::Ref{Cint},
                          ssqrs::Ref{Float64}, r::Ptr{Float64}, y::Ptr{Float64},
                          ld::Ref{Cint}, nyr::Ref{Cint}, usecol::Ptr{Cint},
                          userow::Ptr{Cint}, ismall::Ptr{Cint}, pcnrm2::Ptr{Float64},
                          res::Ptr{Float64}, v::Ptr{Float64}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, inform::Ref{Cint})::Cvoid
end

function mi12ed(n, la, irna, ipca, icna, licna, ipra)
    @ccall libhsl.mi12ed_(n::Ref{Cint}, la::Ref{Cint}, irna::Ptr{Cint}, ipca::Ptr{Cint},
                          icna::Ptr{Cint}, licna::Ref{Cint}, ipra::Ptr{Cint})::Cvoid
end

function mi12fd(trans, n, la, a, irna, inv, irninv, linv, ipinv, ipermr, ipermc, ipoffd,
                info, x, y)
    @ccall libhsl.mi12fd_(trans::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                          irna::Ptr{Cint}, inv::Ptr{Float64}, irninv::Ptr{Cint},
                          linv::Ref{Cint}, ipinv::Ptr{Cint}, ipermr::Ptr{Cint},
                          ipermc::Ptr{Cint}, ipoffd::Ptr{Cint}, info::Ptr{Cint},
                          x::Ptr{Float64}, y::Ptr{Float64})::Cvoid
end

function mi12i(icntl, cntl)
    @ccall libhsl.mi12i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function mi12a(n, a, irna, la, ipca, iwork, liwork, work, lwork, icntl, cntl, info)
    @ccall libhsl.mi12a_(n::Ref{Cint}, a::Ptr{Float32}, irna::Ptr{Cint}, la::Ref{Cint},
                         ipca::Ptr{Cint}, iwork::Ptr{Cint}, liwork::Ref{Cint},
                         work::Ptr{Float32}, lwork::Ref{Cint}, icntl::Ptr{Cint},
                         cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function mi12b(trans, n, iwork, liwork, work, lwork, icntl, info, z, y)
    @ccall libhsl.mi12b_(trans::Ref{Cint}, n::Ref{Cint}, iwork::Ptr{Cint},
                         liwork::Ref{Cint}, work::Ptr{Float32}, lwork::Ref{Cint},
                         icntl::Ptr{Cint}, info::Ptr{Cint}, z::Ptr{Float32},
                         y::Ptr{Float32})::Cvoid
end

function mi12c(n, a, irna, la, ipca, inv, irninv, linv, ipinv, iwork, liwork, work, lwork,
               icntl, cntl, info)
    @ccall libhsl.mi12c_(n::Ref{Cint}, a::Ptr{Float32}, irna::Ptr{Cint}, la::Ref{Cint},
                         ipca::Ptr{Cint}, inv::Ptr{Float32}, irninv::Ptr{Cint},
                         linv::Ref{Cint}, ipinv::Ptr{Cint}, iwork::Ptr{Cint},
                         liwork::Ref{Cint}, work::Ptr{Float32}, lwork::Ref{Cint},
                         icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function mi12d(icol, n, a, irna, la, ipca, icna, licna, ipra, mmax, maxnen, inv, irninv,
               nnzinv, ssqrs, r, y, ld, nyr, usecol, userow, ismall, pcnrm2, res, v, icntl,
               cntl, inform)
    @ccall libhsl.mi12d_(icol::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, irna::Ptr{Cint},
                         la::Ref{Cint}, ipca::Ptr{Cint}, icna::Ptr{Cint}, licna::Ref{Cint},
                         ipra::Ptr{Cint}, mmax::Ref{Cint}, maxnen::Ref{Cint},
                         inv::Ptr{Float32}, irninv::Ptr{Cint}, nnzinv::Ref{Cint},
                         ssqrs::Ref{Float32}, r::Ptr{Float32}, y::Ptr{Float32},
                         ld::Ref{Cint}, nyr::Ref{Cint}, usecol::Ptr{Cint},
                         userow::Ptr{Cint}, ismall::Ptr{Cint}, pcnrm2::Ptr{Float32},
                         res::Ptr{Float32}, v::Ptr{Float32}, icntl::Ptr{Cint},
                         cntl::Ptr{Float32}, inform::Ref{Cint})::Cvoid
end

function mi12e(n, la, irna, ipca, icna, licna, ipra)
    @ccall libhsl.mi12e_(n::Ref{Cint}, la::Ref{Cint}, irna::Ptr{Cint}, ipca::Ptr{Cint},
                         icna::Ptr{Cint}, licna::Ref{Cint}, ipra::Ptr{Cint})::Cvoid
end

function mi12f(trans, n, la, a, irna, inv, irninv, linv, ipinv, ipermr, ipermc, ipoffd,
               info, x, y)
    @ccall libhsl.mi12f_(trans::Ref{Cint}, n::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                         irna::Ptr{Cint}, inv::Ptr{Float32}, irninv::Ptr{Cint},
                         linv::Ref{Cint}, ipinv::Ptr{Cint}, ipermr::Ptr{Cint},
                         ipermc::Ptr{Cint}, ipoffd::Ptr{Cint}, info::Ptr{Cint},
                         x::Ptr{Float32}, y::Ptr{Float32})::Cvoid
end
