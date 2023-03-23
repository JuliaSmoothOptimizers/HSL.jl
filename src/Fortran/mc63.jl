function mc63id(icntl)
  @ccall libhsl.mc63id_(icntl::Ptr{Cint})::Cvoid
end

function mc63ad(direct, n, nelt, ne, eltvar, eltptr, order, perm, nsup, vars, svar, wt, liw, iw, lw, w, icntl, info, rinfo)
  @ccall libhsl.mc63ad_(direct::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, order::Ptr{Cint}, perm::Ptr{Cint}, nsup::Ref{Cint}, vars::Ptr{Cint}, svar::Ptr{Cint}, wt::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc63bd(icntl, n, nsup, nelt, ne, eltvar, eltptr, vars, order, iw, info, rinfo)
  @ccall libhsl.mc63bd_(icntl::Ref{Cint}, n::Ref{Cint}, nsup::Ref{Cint}, nelt::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, vars::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc63cd(direct, n, nelt, nz, nsup, eltvar, eltptr, irn, lenirn, ip, lenip, svar, seltvr, seltpr, iw, m, icntl, ierr, nne)
  @ccall libhsl.mc63cd_(direct::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, irn::Ptr{Cint}, lenirn::Ref{Cint}, ip::Ptr{Cint}, lenip::Ref{Cint}, svar::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, iw::Ptr{Cint}, m::Ref{Cint}, icntl::Ptr{Cint}, ierr::Ref{Cint}, nne::Ref{Cint})::Cvoid
end

function mc63dd(nelt, nsup, nne, ne, eltvar, eltptr, vars, irn, icptr, order, iw, iw1, w, icntl, wt)
  @ccall libhsl.mc63dd_(nelt::Ref{Cint}, nsup::Ref{Cint}, nne::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, vars::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, w::Ptr{Float64}, icntl::Ptr{Cint}, wt::Ptr{Float64})::Cvoid
end

function mc63ed(nelt, nne, nodes, nsup, nstrt, lstnum, vars, ne, eltvar, eltptr, irn, icptr, status, nlist, queue, prior, ifrnt, ielim, dist, unnum, weight)
  @ccall libhsl.mc63ed_(nelt::Ref{Cint}, nne::Ref{Cint}, nodes::Ref{Cint}, nsup::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, vars::Ptr{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Float64}, ifrnt::Ptr{Cint}, ielim::Ptr{Cint}, dist::Ptr{Cint}, unnum::Ptr{Cint}, weight::Ptr{Float64})::Cvoid
end

function mc63fd(nsup, nelt, nz, seltvr, seltpr, iperm, key, list)
  @ccall libhsl.mc63fd_(nsup::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, iperm::Ptr{Cint}, key::Ptr{Cint}, list::Ptr{Cint})::Cvoid
end

function mc63gd(n, list, key)
  @ccall libhsl.mc63gd_(n::Ref{Cint}, list::Ptr{Cint}, key::Ptr{Cint})::Cvoid
end

function mc63i(icntl)
  @ccall libhsl.mc63i_(icntl::Ptr{Cint})::Cvoid
end

function mc63a(direct, n, nelt, ne, eltvar, eltptr, order, perm, nsup, vars, svar, wt, liw, iw, lw, w, icntl, info, rinfo)
  @ccall libhsl.mc63a_(direct::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, order::Ptr{Cint}, perm::Ptr{Cint}, nsup::Ref{Cint}, vars::Ptr{Cint}, svar::Ptr{Cint}, wt::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc63b(icntl, n, nsup, nelt, ne, eltvar, eltptr, vars, order, iw, info, rinfo)
  @ccall libhsl.mc63b_(icntl::Ref{Cint}, n::Ref{Cint}, nsup::Ref{Cint}, nelt::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, vars::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc63c(direct, n, nelt, nz, nsup, eltvar, eltptr, irn, lenirn, ip, lenip, svar, seltvr, seltpr, iw, m, icntl, ierr, nne)
  @ccall libhsl.mc63c_(direct::Ref{Cint}, n::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, nsup::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, irn::Ptr{Cint}, lenirn::Ref{Cint}, ip::Ptr{Cint}, lenip::Ref{Cint}, svar::Ptr{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, iw::Ptr{Cint}, m::Ref{Cint}, icntl::Ptr{Cint}, ierr::Ref{Cint}, nne::Ref{Cint})::Cvoid
end

function mc63d(nelt, nsup, nne, ne, eltvar, eltptr, vars, irn, icptr, order, iw, iw1, w, icntl, wt)
  @ccall libhsl.mc63d_(nelt::Ref{Cint}, nsup::Ref{Cint}, nne::Ref{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, vars::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, iw1::Ptr{Cint}, w::Ptr{Float32}, icntl::Ptr{Cint}, wt::Ptr{Float32})::Cvoid
end

function mc63e(nelt, nne, nodes, nsup, nstrt, lstnum, vars, ne, eltvar, eltptr, irn, icptr, status, nlist, queue, prior, ifrnt, ielim, dist, unnum, weight)
  @ccall libhsl.mc63e_(nelt::Ref{Cint}, nne::Ref{Cint}, nodes::Ref{Cint}, nsup::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, vars::Ptr{Cint}, ne::Ref{Cint}, eltvar::Ptr{Cint}, eltptr::Ptr{Cint}, irn::Ptr{Cint}, icptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Float32}, ifrnt::Ptr{Cint}, ielim::Ptr{Cint}, dist::Ptr{Cint}, unnum::Ptr{Cint}, weight::Ptr{Float32})::Cvoid
end

function mc63f(nsup, nelt, nz, seltvr, seltpr, iperm, key, list)
  @ccall libhsl.mc63f_(nsup::Ref{Cint}, nelt::Ref{Cint}, nz::Ref{Cint}, seltvr::Ptr{Cint}, seltpr::Ptr{Cint}, iperm::Ptr{Cint}, key::Ptr{Cint}, list::Ptr{Cint})::Cvoid
end

function mc63g(n, list, key)
  @ccall libhsl.mc63g_(n::Ref{Cint}, list::Ptr{Cint}, key::Ptr{Cint})::Cvoid
end
