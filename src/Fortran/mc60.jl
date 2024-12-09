function mc60ad(n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl.mc60ad_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                        icntl::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60ad_64(n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset_64.mc60ad_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, icntl::Ptr{Int64}, iw::Ptr{Int64},
                                     info::Ptr{Int64})::Cvoid
end

function mc60bd(n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl.mc60bd_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                        nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60bd_64(n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset_64.mc60bd_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc60cd(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
  @ccall libhsl.mc60cd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, vars::Ptr{Cint}, jcntl::Ptr{Cint}, permsv::Ptr{Cint},
                        weight::Ptr{Float64}, pair::Ptr{Cint}, info::Ptr{Cint}, iw::Ptr{Cint},
                        w::Ptr{Float64})::Cvoid
end

function mc60cd_64(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
  @ccall libhsl_subset_64.mc60cd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     jcntl::Ptr{Int64}, permsv::Ptr{Int64}, weight::Ptr{Float64},
                                     pair::Ptr{Int64}, info::Ptr{Int64}, iw::Ptr{Int64},
                                     w::Ptr{Float64})::Cvoid
end

function mc60dd(n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl.mc60dd_(n::Ref{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                        permsv::Ptr{Cint}, perm::Ptr{Cint}, possv::Ptr{Cint})::Cvoid
end

function mc60dd_64(n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset_64.mc60dd_64_(n::Ref{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     possv::Ptr{Int64})::Cvoid
end

function mc60ed(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
  @ccall libhsl.mc60ed_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                        perm::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60ed_64(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
  @ccall libhsl_subset_64.mc60ed_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                     iw::Ptr{Int64})::Cvoid
end

function mc60fd(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl.mc60fd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint}, iw::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function mc60fd_64(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60fd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc60gd(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl.mc60gd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint}, iw::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function mc60gd_64(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60gd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float64})::Cvoid
end

function mc60hd(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
  @ccall libhsl.mc60hd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                        xls::Ptr{Cint}, list::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60hd_64(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
  @ccall libhsl_subset_64.mc60hd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     list::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc60jd(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist, queue,
                deg, prior)
  @ccall libhsl.mc60jd_(nsup::Ref{Cint}, lirn::Ref{Cint}, nodes::Ref{Cint}, nstrt::Ref{Cint},
                        lstnum::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, vars::Ptr{Cint},
                        status::Ptr{Cint}, weight::Ptr{Float64}, nlist::Ptr{Cint}, queue::Ptr{Cint},
                        deg::Ptr{Cint}, prior::Ptr{Float64})::Cvoid
end

function mc60jd_64(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist, queue,
                   deg, prior)
  @ccall libhsl_subset_64.mc60jd_64_(nsup::Ref{Int64}, lirn::Ref{Int64}, nodes::Ref{Int64},
                                     nstrt::Ref{Int64}, lstnum::Ref{Int64}, irn::Ptr{Int64},
                                     icptr::Ptr{Int64}, vars::Ptr{Int64}, status::Ptr{Int64},
                                     weight::Ptr{Float64}, nlist::Ptr{Int64}, queue::Ptr{Int64},
                                     deg::Ptr{Int64}, prior::Ptr{Float64})::Cvoid
end

function mc60ld(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl.mc60ld_(root::Ref{Cint}, maxwid::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint},
                        irn::Ptr{Cint}, icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint},
                        ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, lwidth::Ref{Cint},
                        nvars::Ref{Cint})::Cvoid
end

function mc60ld_64(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset_64.mc60ld_64_(root::Ref{Int64}, maxwid::Ref{Int64}, nsup::Ref{Int64},
                                     lirn::Ref{Int64}, irn::Ptr{Int64}, icptr::Ptr{Int64},
                                     vars::Ptr{Int64}, mask::Ptr{Int64}, ls::Ptr{Int64},
                                     xls::Ptr{Int64}, nlvl::Ref{Int64}, lwidth::Ref{Int64},
                                     nvars::Ref{Int64})::Cvoid
end

function mc60od(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
  @ccall libhsl.mc60od_(n::Ref{Cint}, nc::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint}, new::Ptr{Cint},
                        vars::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function mc60od_64(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
  @ccall libhsl_subset_64.mc60od_64_(n::Ref{Int64}, nc::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     nsup::Ref{Int64}, new::Ptr{Int64}, vars::Ptr{Int64},
                                     flag::Ptr{Int64})::Cvoid
end

function mc60pd(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl.mc60pd_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, var::Ptr{Cint},
                        flag::Ptr{Cint})::Cvoid
end

function mc60pd_64(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset_64.mc60pd_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                     vars::Ptr{Int64}, var::Ptr{Int64}, flag::Ptr{Int64})::Cvoid
end

function mc60qd(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars, degree)
  @ccall libhsl.mc60qd_(root::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                        xls::Ptr{Cint}, nlvl::Ref{Cint}, nvars::Ref{Cint}, degree::Ptr{Cint})::Cvoid
end

function mc60qd_64(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars, degree)
  @ccall libhsl_subset_64.mc60qd_64_(root::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                     irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                     mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                     nlvl::Ref{Int64}, nvars::Ref{Int64}, degree::Ptr{Int64})::Cvoid
end

function mc60a(n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl.mc60a_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                       icntl::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60a_64(n, lirn, irn, icptr, icntl, iw, info)
  @ccall libhsl_subset_64.mc60a_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, icntl::Ptr{Int64}, iw::Ptr{Int64},
                                    info::Ptr{Int64})::Cvoid
end

function mc60b(n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl.mc60b_(n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint},
                       nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60b_64(n, lirn, irn, icptr, nsup, svar, vars, iw)
  @ccall libhsl_subset_64.mc60b_64_(n::Ref{Int64}, lirn::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, iw::Ptr{Int64})::Cvoid
end

function mc60c(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
  @ccall libhsl.mc60c_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, vars::Ptr{Cint}, jcntl::Ptr{Cint}, permsv::Ptr{Cint},
                       weight::Ptr{Float32}, pair::Ptr{Cint}, info::Ptr{Cint}, iw::Ptr{Cint},
                       w::Ptr{Float32})::Cvoid
end

function mc60c_64(n, nsup, lirn, irn, icptr, vars, jcntl, permsv, weight, pair, info, iw, w)
  @ccall libhsl_subset_64.mc60c_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    jcntl::Ptr{Int64}, permsv::Ptr{Int64}, weight::Ptr{Float32},
                                    pair::Ptr{Int64}, info::Ptr{Int64}, iw::Ptr{Int64},
                                    w::Ptr{Float32})::Cvoid
end

function mc60d(n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl.mc60d_(n::Ref{Cint}, nsup::Ref{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint},
                       permsv::Ptr{Cint}, perm::Ptr{Cint}, possv::Ptr{Cint})::Cvoid
end

function mc60d_64(n, nsup, svar, vars, permsv, perm, possv)
  @ccall libhsl_subset_64.mc60d_64_(n::Ref{Int64}, nsup::Ref{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                    possv::Ptr{Int64})::Cvoid
end

function mc60e(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
  @ccall libhsl.mc60e_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint},
                       perm::Ptr{Cint}, iw::Ptr{Cint})::Cvoid
end

function mc60e_64(n, nsup, lirn, irn, icptr, svar, vars, permsv, perm, iw)
  @ccall libhsl_subset_64.mc60e_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, permsv::Ptr{Int64}, perm::Ptr{Int64},
                                    iw::Ptr{Int64})::Cvoid
end

function mc60f(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl.mc60f_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint}, iw::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function mc60f_64(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60f_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc60g(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl.mc60g_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, vars::Ptr{Cint}, permsv::Ptr{Cint}, iw::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end

function mc60g_64(n, nsup, lirn, irn, icptr, vars, permsv, iw, rinfo)
  @ccall libhsl_subset_64.mc60g_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    permsv::Ptr{Int64}, iw::Ptr{Int64}, rinfo::Ptr{Float32})::Cvoid
end

function mc60h(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
  @ccall libhsl.mc60h_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                       xls::Ptr{Cint}, list::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc60h_64(n, nsup, lirn, irn, icptr, vars, mask, ls, xls, list, info)
  @ccall libhsl_subset_64.mc60h_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                    list::Ptr{Int64}, info::Ptr{Int64})::Cvoid
end

function mc60j(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist, queue,
               deg, prior)
  @ccall libhsl.mc60j_(nsup::Ref{Cint}, lirn::Ref{Cint}, nodes::Ref{Cint}, nstrt::Ref{Cint},
                       lstnum::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, vars::Ptr{Cint},
                       status::Ptr{Cint}, weight::Ptr{Float32}, nlist::Ptr{Cint}, queue::Ptr{Cint},
                       deg::Ptr{Cint}, prior::Ptr{Float32})::Cvoid
end

function mc60j_64(nsup, lirn, nodes, nstrt, lstnum, irn, icptr, vars, status, weight, nlist, queue,
                  deg, prior)
  @ccall libhsl_subset_64.mc60j_64_(nsup::Ref{Int64}, lirn::Ref{Int64}, nodes::Ref{Int64},
                                    nstrt::Ref{Int64}, lstnum::Ref{Int64}, irn::Ptr{Int64},
                                    icptr::Ptr{Int64}, vars::Ptr{Int64}, status::Ptr{Int64},
                                    weight::Ptr{Float32}, nlist::Ptr{Int64}, queue::Ptr{Int64},
                                    deg::Ptr{Int64}, prior::Ptr{Float32})::Cvoid
end

function mc60l(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl.mc60l_(root::Ref{Cint}, maxwid::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint},
                       irn::Ptr{Cint}, icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint},
                       ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, lwidth::Ref{Cint},
                       nvars::Ref{Cint})::Cvoid
end

function mc60l_64(root, maxwid, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, lwidth, nvars)
  @ccall libhsl_subset_64.mc60l_64_(root::Ref{Int64}, maxwid::Ref{Int64}, nsup::Ref{Int64},
                                    lirn::Ref{Int64}, irn::Ptr{Int64}, icptr::Ptr{Int64},
                                    vars::Ptr{Int64}, mask::Ptr{Int64}, ls::Ptr{Int64},
                                    xls::Ptr{Int64}, nlvl::Ref{Int64}, lwidth::Ref{Int64},
                                    nvars::Ref{Int64})::Cvoid
end

function mc60o(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
  @ccall libhsl.mc60o_(n::Ref{Cint}, nc::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, svar::Ptr{Cint}, nsup::Ref{Cint}, new::Ptr{Cint},
                       vars::Ptr{Cint}, flag::Ptr{Cint})::Cvoid
end

function mc60o_64(n, nc, lirn, irn, icptr, svar, nsup, new, vars, flag)
  @ccall libhsl_subset_64.mc60o_64_(n::Ref{Int64}, nc::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    nsup::Ref{Int64}, new::Ptr{Int64}, vars::Ptr{Int64},
                                    flag::Ptr{Int64})::Cvoid
end

function mc60p(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl.mc60p_(n::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, svar::Ptr{Cint}, vars::Ptr{Cint}, var::Ptr{Cint},
                       flag::Ptr{Cint})::Cvoid
end

function mc60p_64(n, nsup, lirn, irn, icptr, svar, vars, var, flag)
  @ccall libhsl_subset_64.mc60p_64_(n::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, svar::Ptr{Int64},
                                    vars::Ptr{Int64}, var::Ptr{Int64}, flag::Ptr{Int64})::Cvoid
end

function mc60q(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars)
  @ccall libhsl.mc60q_(root::Ref{Cint}, nsup::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, vars::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint},
                       xls::Ptr{Cint}, nlvl::Ref{Cint}, nvars::Ref{Cint})::Cvoid
end

function mc60q_64(root, nsup, lirn, irn, icptr, vars, mask, ls, xls, nlvl, nvars)
  @ccall libhsl_subset_64.mc60q_64_(root::Ref{Int64}, nsup::Ref{Int64}, lirn::Ref{Int64},
                                    irn::Ptr{Int64}, icptr::Ptr{Int64}, vars::Ptr{Int64},
                                    mask::Ptr{Int64}, ls::Ptr{Int64}, xls::Ptr{Int64},
                                    nlvl::Ref{Int64}, nvars::Ref{Int64})::Cvoid
end
