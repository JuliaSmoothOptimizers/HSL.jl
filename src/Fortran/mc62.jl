function mc62id(icntl)
  @ccall libhsl.mc62id_(icntl::Ptr{Cint})::Cvoid
end

function mc62ad(m, n, nz, jcn, rowptr, irn, colptr, lelim, order, wt, liw, iw, w, icntl, info, rinfo)
  @ccall libhsl.mc62ad_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, lelim::Ptr{Cint}, order::Ptr{Cint}, wt::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc62bd(m, n, nz, jcn, rowptr, lelim, order, iw, icntlb, infob, rinfob)
  @ccall libhsl.mc62bd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, lelim::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, icntlb::Ptr{Cint}, infob::Ref{Cint}, rinfob::Ptr{Float64})::Cvoid
end

function mc62cd(m, n, nz, jcn, rowptr, irn, colptr, lindex, index, ip, iw, icntlc, infoc)
  @ccall libhsl.mc62cd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, lindex::Ref{Cint}, index::Ptr{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, icntlc::Ptr{Cint}, infoc::Ptr{Cint})::Cvoid
end

function mc62dd(m, n, nne, ne, irn, colptr, jcn, rowptr, index, ip, order, liw, iw, w, icntl, weight, mxnlvl, lelim)
  @ccall libhsl.mc62dd_(m::Ref{Cint}, n::Ref{Cint}, nne::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, index::Ptr{Cint}, ip::Ptr{Cint}, order::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float64}, icntl::Ptr{Cint}, weight::Ptr{Float64}, mxnlvl::Ref{Cint}, lelim::Ptr{Cint})::Cvoid
end

function mc62ed(m, n, nodes, nstrt, lstnum, ne, irn, colptr, jcn, rowptr, status, nlist, queue, prior, cfrnt, lenc, weight, lelim)
  @ccall libhsl.mc62ed_(m::Ref{Cint}, n::Ref{Cint}, nodes::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Float64}, cfrnt::Ptr{Cint}, lenc::Ptr{Cint}, weight::Ptr{Float64}, lelim::Ptr{Cint})::Cvoid
end

function mc62fd(m, n, nz, jcn, rowptr, irn, colptr, norder, lenc, next, prev, first, work)
  @ccall libhsl.mc62fd_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, norder::Ptr{Cint}, lenc::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint}, first::Ptr{Cint}, work::Ptr{Cint})::Cvoid
end

function mc62i(icntl)
  @ccall libhsl.mc62i_(icntl::Ptr{Cint})::Cvoid
end

function mc62a(m, n, nz, jcn, rowptr, irn, colptr, lelim, order, wt, liw, iw, w, icntl, info, rinfo)
  @ccall libhsl.mc62a_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, lelim::Ptr{Cint}, order::Ptr{Cint}, wt::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc62b(m, n, nz, jcn, rowptr, lelim, order, iw, icntlb, infob, rinfob)
  @ccall libhsl.mc62b_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, lelim::Ptr{Cint}, order::Ptr{Cint}, iw::Ptr{Cint}, icntlb::Ptr{Cint}, infob::Ref{Cint}, rinfob::Ptr{Float32})::Cvoid
end

function mc62c(m, n, nz, jcn, rowptr, irn, colptr, lindex, index, ip, iw, icntlc, infoc)
  @ccall libhsl.mc62c_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, lindex::Ref{Cint}, index::Ptr{Cint}, ip::Ptr{Cint}, iw::Ptr{Cint}, icntlc::Ptr{Cint}, infoc::Ptr{Cint})::Cvoid
end

function mc62d(m, n, nne, ne, irn, colptr, jcn, rowptr, index, ip, order, liw, iw, w, icntl, weight, mxnlvl, lelim)
  @ccall libhsl.mc62d_(m::Ref{Cint}, n::Ref{Cint}, nne::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, index::Ptr{Cint}, ip::Ptr{Cint}, order::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, w::Ptr{Float32}, icntl::Ptr{Cint}, weight::Ptr{Float32}, mxnlvl::Ref{Cint}, lelim::Ptr{Cint})::Cvoid
end

function mc62e(m, n, nodes, nstrt, lstnum, ne, irn, colptr, jcn, rowptr, status, nlist, queue, prior, cfrnt, lenc, weight, lelim)
  @ccall libhsl.mc62e_(m::Ref{Cint}, n::Ref{Cint}, nodes::Ref{Cint}, nstrt::Ref{Cint}, lstnum::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, status::Ptr{Cint}, nlist::Ptr{Cint}, queue::Ptr{Cint}, prior::Ptr{Float32}, cfrnt::Ptr{Cint}, lenc::Ptr{Cint}, weight::Ptr{Float32}, lelim::Ptr{Cint})::Cvoid
end

function mc62f(m, n, nz, jcn, rowptr, irn, colptr, norder, lenc, next, prev, first, work)
  @ccall libhsl.mc62f_(m::Ref{Cint}, n::Ref{Cint}, nz::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint}, irn::Ptr{Cint}, colptr::Ptr{Cint}, norder::Ptr{Cint}, lenc::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint}, first::Ptr{Cint}, work::Ptr{Cint})::Cvoid
end
