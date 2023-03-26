function mc60ad(n, lirn, irn, icptr, icntl, iw, info)
    @ccall libhsl.mc60ad_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                          icntl::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60bd(n, lirn, irn, icptr, nsup, svar, vars, iw)
    @ccall libhsl.mc60bd_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                          nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                          iw::Ptr{Cint})::Cvoid
end

function mc60cd(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
    @ccall libhsl.mc60cd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, jcntl::Ptr{Cint},
                          permsv::Ptr{Cint}, weight::Ptr{Float64}, pair::Ptr{Cint},
                          info::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float64})::Cvoid
end

function mc60dd(n, nsup, svar, vars, permsv, perm, possv)
    @ccall libhsl.mc60dd_(n::Ref{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                          permsv::Ptr{Cint}, perm::Ptr{Cint}, possv::Ptr{Cint})::Cvoid
end

function mc60ed(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
    @ccall libhsl.mc60ed_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                          permsv::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60fd(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
    @ccall libhsl.mc60fd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                          iw::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc60gd(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
    @ccall libhsl.mc60gd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                          iw::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc60hd(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
    @ccall libhsl.mc60hd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                          xls::Ptr{Cint}, list::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60jd(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist,
                queue, deg, prior)
    @ccall libhsl.mc60jd_(nsup::Ref{Cint}, lirn::Ref{Cint}, nodes::Ref{Cint},
                          nstrt::Ref{Cint}, lstnum::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, status::Ptr{Cint},
                          weight::Ptr{Float64}, nlist::Ptr{Cint}, queue::Ptr{Cint},
                          deg::Ptr{Cint}, prior::Ptr{Float64})::Cvoid
end

function mc60ld(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth,
                nvars)
    @ccall libhsl.mc60ld_(root::Ref{Cint}, maxwid::Ref{Cint}, nsup::Ref{Cint},
                          lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                          vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint},
                          nlvl::Ref{Cint}, lwidth::Ref{Cint}, nvars::Ref{Cint})::Cvoid
end

function mc60od(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
    @ccall libhsl.mc60od_(n::Ref{Cint}, nc::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint},
                          new::Ptr{Cint}, vars::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function mc60pd(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
    @ccall libhsl.mc60pd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                          var::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function mc60qd(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars, degree)
    @ccall libhsl.mc60qd_(root::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                          icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                          xls::Ptr{Cint}, nlvl::Ref{Cint}, nvars::Ref{Cint},
                          degree::Ptr{Cint})::Cvoid
end

function mc60a(n, lirn, irn, icptr, icntl, iw, info)
    @ccall libhsl.mc60a_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                         icntl::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60b(n, lirn, irn, icptr, nsup, svar, vars, iw)
    @ccall libhsl.mc60b_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                         nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                         iw::Ptr{Cint})::Cvoid
end

function mc60c(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
    @ccall libhsl.mc60c_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, jcntl::Ptr{Cint},
                         permsv::Ptr{Cint}, weight::Ptr{Float32}, pair::Ptr{Cint},
                         info::Ptr{Cint}, iw::Ptr{Cint}, w::Ptr{Float32})::Cvoid
end

function mc60d(n, nsup, svar, vars, permsv, perm, possv)
    @ccall libhsl.mc60d_(n::Ref{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                         permsv::Ptr{Cint}, perm::Ptr{Cint}, possv::Ptr{Cint})::Cvoid
end

function mc60e(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
    @ccall libhsl.mc60e_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                         permsv::Ptr{Cint}, perm::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60f(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
    @ccall libhsl.mc60f_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                         iw::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc60g(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
    @ccall libhsl.mc60g_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                         iw::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc60h(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
    @ccall libhsl.mc60h_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                         xls::Ptr{Cint}, list::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60j(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist,
               queue, deg, prior)
    @ccall libhsl.mc60j_(nsup::Ref{Cint}, lirn::Ref{Cint}, nodes::Ref{Cint},
                         nstrt::Ref{Cint}, lstnum::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, status::Ptr{Cint},
                         weight::Ptr{Float32}, nlist::Ptr{Cint}, queue::Ptr{Cint},
                         deg::Ptr{Cint}, prior::Ptr{Float32})::Cvoid
end

function mc60l(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth,
               nvars)
    @ccall libhsl.mc60l_(root::Ref{Cint}, maxwid::Ref{Cint}, nsup::Ref{Cint},
                         lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, vars::Ptr{Cint},
                         mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint},
                         lwidth::Ref{Cint}, nvars::Ref{Cint})::Cvoid
end

function mc60o(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
    @ccall libhsl.mc60o_(n::Ref{Cint}, nc::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint}, new::Ptr{Cint},
                         vars::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function mc60p(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
    @ccall libhsl.mc60p_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, var::Ptr{Cint},
                         flag::Ptr{Cint})::Cvoid
end

function mc60q(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars)
    @ccall libhsl.mc60q_(root::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                         icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                         xls::Ptr{Cint}, nlvl::Ref{Cint}, nvars::Ref{Cint})::Cvoid
end
