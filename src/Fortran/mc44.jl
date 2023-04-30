function mc44ad(n, nelt, nz, eltvar, eltptr, nsup, svar, liw, iw, lp, info)
    @ccall libhsl.mc44ad_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, eltvar::Ptr{Cint},
                          eltptr::Ptr{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint},
                          liw::Ref{Cint}, iw::Ptr{Cint}, lp::Ref{Cint},
                          info::Ptr{Cint})::Cvoid
end

function mc44bd(lgraph, n, nelt, nz, eltvar, eltptr, nsup, svar, lenirn, irn, lenip, ip,
                liw, iw, lp, info)
    @ccall libhsl.mc44bd_(lgraph::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint},
                          eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, nsup::Ref{Cint},
                          svar::Ptr{Cint}, lenirn::Ref{Cint}, irn::Ptr{Cint},
                          lenip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                          lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc44cd(n, nelt, eltptr, nz, eltvar, svar, nsup, maxsup, new, vars, flag, info)
    @ccall libhsl.mc44cd_(n::Ref{Cint}, nelt::Ref{Cint}, eltptr::Ptr{Cint}, nz::Ref{Cint},
                          eltvar::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint},
                          maxsup::Ref{Cint}, new::Ptr{Cint}, vars::Ptr{Cint},
                          flag::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc44dd(lgraph, n, nelt, nz, nsup, eltvar, eltptr, irn, lngth, ip, lenip, svar,
                seltvr, seltpr, supvar, supptr, iw, m, info)
    @ccall libhsl.mc44dd_(lgraph::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint},
                          nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint},
                          irn::Ptr{Cint}, lngth::Ref{Cint}, ip::Ptr{Cint}, lenip::Ref{Cint},
                          svar::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint},
                          supvar::Ptr{Cint}, supptr::Ptr{Cint}, iw::Ptr{Cint}, m::Ref{Cint},
                          info::Ptr{Cint})::Cvoid
end

function mc44a(n, nelt, nz, eltvar, eltptr, nsup, svar, liw, iw, lp, info)
    @ccall libhsl.mc44a_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, eltvar::Ptr{Cint},
                         eltptr::Ptr{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint},
                         liw::Ref{Cint}, iw::Ptr{Cint}, lp::Ref{Cint},
                         info::Ptr{Cint})::Cvoid
end

function mc44b(lgraph, n, nelt, nz, eltvar, eltptr, nsup, svar, lenirn, irn, lenip, ip, liw,
               iw, lp, info)
    @ccall libhsl.mc44b_(lgraph::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint},
                         eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, nsup::Ref{Cint},
                         svar::Ptr{Cint}, lenirn::Ref{Cint}, irn::Ptr{Cint},
                         lenip::Ref{Cint}, ip::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                         lp::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc44c(n, nelt, eltptr, nz, eltvar, svar, nsup, maxsup, new, vars, flag, info)
    @ccall libhsl.mc44c_(n::Ref{Cint}, nelt::Ref{Cint}, eltptr::Ptr{Cint}, nz::Ref{Cint},
                         eltvar::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint},
                         maxsup::Ref{Cint}, new::Ptr{Cint}, vars::Ptr{Cint},
                         flag::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc44d(lgraph, n, nelt, nz, nsup, eltvar, eltptr, irn, lngth, ip, lenip, svar,
               seltvr, seltpr, supvar, supptr, iw, m, info)
    @ccall libhsl.mc44d_(lgraph::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint},
                         nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint},
                         irn::Ptr{Cint}, lngth::Ref{Cint}, ip::Ptr{Cint}, lenip::Ref{Cint},
                         svar::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint},
                         supvar::Ptr{Cint}, supptr::Ptr{Cint}, iw::Ptr{Cint}, m::Ref{Cint},
                         info::Ptr{Cint})::Cvoid
end
