function ma72ad(icall, nvar, maxind, ivar, totelt, ndomn, idomn, nguard, lguard, iguard, iw, jcntl, jnfo)
  @ccall libhsl.ma72ad_(icall::Ref{Cint}, nvar::Ref{Cint}, maxind::Ref{Cint}, ivar::Ptr{Cint}, totelt::Ref{Cint}, ndomn::Ref{Cint}, idomn::Ref{Cint}, nguard::Ptr{Cint}, lguard::Ref{Cint}, iguard::Ptr{Cint}, iw::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72bd(nrhsb, ndf, nfvar, last, lx, x, liw, iw, lw, w, isave, jcntl, jnfo)
  @ccall libhsl.ma72bd_(nrhsb::Ref{Cint}, ndf::Ref{Cint}, nfvar::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float64}, isave::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72cd(job, nrhsc, lx, x, lw, w, liw, iw, isave, jcntl, jnfo)
  @ccall libhsl.ma72cd_(job::Ref{Cint}, nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float64}, lw::Ref{Cint}, w::Ptr{Float64}, liw::Ref{Cint}, iw::Ptr{Cint}, isave::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72dd(bufr, lbufr, ibufr, libufr, ifile, irec, mkey, isave, lp, icntl8, jnfo)
  @ccall libhsl.ma72dd_(bufr::Ptr{Float64}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, icntl8::Ref{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72ed(last, ndf, nfront, lhed)
  @ccall libhsl.ma72ed_(last::Ptr{Cint}, ndf::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint})::Cvoid
end

function ma72a(icall, nvar, maxind, ivar, totelt, ndomn, idomn, nguard, lguard, iguard, iw, jcntl, jnfo)
  @ccall libhsl.ma72a_(icall::Ref{Cint}, nvar::Ref{Cint}, maxind::Ref{Cint}, ivar::Ptr{Cint}, totelt::Ref{Cint}, ndomn::Ref{Cint}, idomn::Ref{Cint}, nguard::Ptr{Cint}, lguard::Ref{Cint}, iguard::Ptr{Cint}, iw::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72b(nrhsb, ndf, nfvar, last, lx, x, liw, iw, lw, w, isave, jcntl, jnfo)
  @ccall libhsl.ma72b_(nrhsb::Ref{Cint}, ndf::Ref{Cint}, nfvar::Ref{Cint}, last::Ptr{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float32}, isave::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72c(job, nrhsc, lx, x, lw, w, liw, iw, isave, jcntl, jnfo)
  @ccall libhsl.ma72c_(job::Ref{Cint}, nrhsc::Ref{Cint}, lx::Ref{Cint}, x::Ptr{Float32}, lw::Ref{Cint}, w::Ptr{Float32}, liw::Ref{Cint}, iw::Ptr{Cint}, isave::Ptr{Cint}, jcntl::Ptr{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72d(bufr, lbufr, ibufr, libufr, ifile, irec, mkey, isave, lp, icntl8, jnfo)
  @ccall libhsl.ma72d_(bufr::Ptr{Float32}, lbufr::Ref{Cint}, ibufr::Ptr{Cint}, libufr::Ref{Cint}, ifile::Ptr{Cint}, irec::Ptr{Cint}, mkey::Ptr{Cint}, isave::Ptr{Cint}, lp::Ref{Cint}, icntl8::Ref{Cint}, jnfo::Ptr{Cint})::Cvoid
end

function ma72e(last, ndf, nfront, lhed)
  @ccall libhsl.ma72e_(last::Ptr{Cint}, ndf::Ref{Cint}, nfront::Ref{Cint}, lhed::Ptr{Cint})::Cvoid
end
