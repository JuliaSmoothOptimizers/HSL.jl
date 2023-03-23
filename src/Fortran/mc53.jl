function mc53id(icntl)
  @ccall libhsl.mc53id_(icntl::Ptr{Cint})::Cvoid
end

function mc53ad(icall, nelt, nvar, ivar, norder, liw, iw, icntl, info, rinfo)
  @ccall libhsl.mc53ad_(icall::Ref{Cint}, nelt::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, norder::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc53bd(ielt, nelt, nvar, ivar, eltptr, eltvar, lvar, ipos, info)
  @ccall libhsl.mc53bd_(ielt::Ref{Cint}, nelt::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, eltptr::Ptr{Cint}, eltvar::Ptr{Cint}, lvar::Ref{Cint}, ipos::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc53cd(n, nsup, nnz, nz, seltvr, seltpr, nsvar, irn, icptr, norder, iw, iw1, icomp, ncomp, icntl)
  @ccall libhsl.mc53cd_(n::Ref{Cint}, nsup::Ref{Cint}, nnz::Ref{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, nsvar::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, norder::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icomp::Ptr{Cint}, ncomp::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function mc53dd(n, nnz, irn, ip, ncomp, icomp, ls, xls, grdnbr)
  @ccall libhsl.mc53dd_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, grdnbr::Ptr{Cint})::Cvoid
end

function mc53ed(n, nnz, root, irn, ip, ls, xls, nlvl, ncomp, icomp, grdnbr)
  @ccall libhsl.mc53ed_(n::Ref{Cint}, nnz::Ref{Cint}, root::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, grdnbr::Ptr{Cint})::Cvoid
end

function mc53fd(n, nnz, irn, icptr, mask, ls, xls, nstrt, nstop, nodes, ncomp, icomp, list, deg)
  @ccall libhsl.mc53fd_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nstrt::Ref{Cint}, nstop::Ref{Cint}, nodes::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, list::Ptr{Cint}, deg::Ptr{Cint})::Cvoid
end

function mc53gd(n, nnz, irn, icptr, mask, ls, xls, deg, list, nstrt, nstop, nodes, ncomp, icomp)
  @ccall libhsl.mc53gd_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, deg::Ptr{Cint}, list::Ptr{Cint}, nstrt::Ref{Cint}, nstop::Ref{Cint}, nodes::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint})::Cvoid
end

function mc53hd(n, nnz, nodes, nsup, nstrt, lstnum, nsvar, nz, seltvr, seltpr, irn, icptr, status, nlist, queue, prior, ifrnt, ielim, idist, weight, mxgain, mxnadj)
  @ccall libhsl.mc53hd_(n::Ref{Cint}, nnz::Ref{Cint}, nodes::Ref{Cint}, nsup::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, nsvar::Ptr{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Cint}, ifrnt::Ptr{Cint}, ielim::Ptr{Cint}, idist::Ptr{Cint}, weight::Ptr{Cint}, mxgain::Ref{Cint}, mxnadj::Ref{Cint})::Cvoid
end

function mc53jd(n, nl, list, key)
  @ccall libhsl.mc53jd_(n::Ref{Cint}, nl::Ref{Cint}, list::Ptr{Cint}, key::Ptr{Cint})::Cvoid
end

function mc53kd(n, nelt, nz, eltvar, eltptr, norder, last, iw, mxwave, rinfo, ndf)
  @ccall libhsl.mc53kd_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, norder::Ptr{Cint}, last::Ptr{Cint}, iw::Ptr{Cint}, mxwave::Ref{Cint}, rinfo::Ptr{Float64}, ndf::Ref{Cint})::Cvoid
end

function mc53ld(n, nnz, root, maxwid, irn, icptr, mask, ls, xls, nlvl, lwidth, ncomp, icomp)
  @ccall libhsl.mc53ld_(n::Ref{Cint}, nnz::Ref{Cint}, root::Ref{Cint}, maxwid::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, lwidth::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint})::Cvoid
end

function mc53md(n, nelt, nz, nsup, eltvar, eltptr, var, seltvr, seltpr, nsvar)
  @ccall libhsl.mc53md_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, var::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, nsvar::Ptr{Cint})::Cvoid
end

function mc53i(icntl)
  @ccall libhsl.mc53i_(icntl::Ptr{Cint})::Cvoid
end

function mc53a(icall, nelt, nvar, ivar, norder, liw, iw, icntl, info, rinfo)
  @ccall libhsl.mc53a_(icall::Ref{Cint}, nelt::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, norder::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc53b(ielt, nelt, nvar, ivar, eltptr, eltvar, lvar, ipos, info)
  @ccall libhsl.mc53b_(ielt::Ref{Cint}, nelt::Ref{Cint}, nvar::Ref{Cint}, ivar::Ptr{Cint}, eltptr::Ptr{Cint}, eltvar::Ptr{Cint}, lvar::Ref{Cint}, ipos::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function mc53c(n, nsup, nnz, nz, seltvr, seltpr, nsvar, irn, icptr, norder, iw, iw1, icomp, ncomp, icntl)
  @ccall libhsl.mc53c_(n::Ref{Cint}, nsup::Ref{Cint}, nnz::Ref{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, nsvar::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, norder::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, icomp::Ptr{Cint}, ncomp::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function mc53d(n, nnz, irn, ip, ncomp, icomp, ls, xls, grdnbr)
  @ccall libhsl.mc53d_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, grdnbr::Ptr{Cint})::Cvoid
end

function mc53e(n, nnz, root, irn, ip, ls, xls, nlvl, ncomp, icomp, grdnbr)
  @ccall libhsl.mc53e_(n::Ref{Cint}, nnz::Ref{Cint}, root::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, grdnbr::Ptr{Cint})::Cvoid
end

function mc53f(n, nnz, irn, icptr, mask, ls, xls, nstrt, nstop, nodes, ncomp, icomp, list, deg)
  @ccall libhsl.mc53f_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nstrt::Ref{Cint}, nstop::Ref{Cint}, nodes::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint}, list::Ptr{Cint}, deg::Ptr{Cint})::Cvoid
end

function mc53g(n, nnz, irn, icptr, mask, ls, xls, deg, list, nstrt, nstop, nodes, ncomp, icomp)
  @ccall libhsl.mc53g_(n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, deg::Ptr{Cint}, list::Ptr{Cint}, nstrt::Ref{Cint}, nstop::Ref{Cint}, nodes::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint})::Cvoid
end

function mc53h(n, nnz, nodes, nsup, nstrt, lstnum, nsvar, nz, seltvr, seltpr, irn, icptr, status, nlist, queue, prior, ifrnt, ielim, idist, weight, mxgain, mxnadj)
  @ccall libhsl.mc53h_(n::Ref{Cint}, nnz::Ref{Cint}, nodes::Ref{Cint}, nsup::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, nsvar::Ptr{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Cint}, ifrnt::Ptr{Cint}, ielim::Ptr{Cint}, idist::Ptr{Cint}, weight::Ptr{Cint}, mxgain::Ref{Cint}, mxnadj::Ref{Cint})::Cvoid
end

function mc53j(n, nl, list, key)
  @ccall libhsl.mc53j_(n::Ref{Cint}, nl::Ref{Cint}, list::Ptr{Cint}, key::Ptr{Cint})::Cvoid
end

function mc53k(n, nelt, nz, eltvar, eltptr, norder, last, iw, mxwave, rinfo, ndf)
  @ccall libhsl.mc53k_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, norder::Ptr{Cint}, last::Ptr{Cint}, iw::Ptr{Cint}, mxwave::Ref{Cint}, rinfo::Ptr{Float32}, ndf::Ref{Cint})::Cvoid
end

function mc53l(n, nnz, root, maxwid, irn, icptr, mask, ls, xls, nlvl, lwidth, ncomp, icomp)
  @ccall libhsl.mc53l_(n::Ref{Cint}, nnz::Ref{Cint}, root::Ref{Cint}, maxwid::Ref{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, mask::Ptr{Cint}, ls::Ptr{Cint}, xls::Ptr{Cint}, nlvl::Ref{Cint}, lwidth::Ref{Cint}, ncomp::Ref{Cint}, icomp::Ptr{Cint})::Cvoid
end

function mc53m(n, nelt, nz, nsup, eltvar, eltptr, var, seltvr, seltpr, nsvar)
  @ccall libhsl.mc53m_(n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, var::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, nsvar::Ptr{Cint})::Cvoid
end
