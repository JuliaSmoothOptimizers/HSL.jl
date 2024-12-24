function mc61id(icntl, cntl)
  @ccall libhsl.mc61id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function mc61ad(job, n, lirn, irn, icptr, perm, liw, iw, w, icntl, cntl, info, rinfo)
  @ccall libhsl.mc61ad_(job::Ref{Cint}, n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                        icptr::Ptr{Cint}, perm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                        w::Ptr{Float64}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint},
                        rinfo::Ptr{Float64})::Cvoid
end

function mc61i(icntl, cntl)
  @ccall libhsl.mc61i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function mc61a(job, n, lirn, irn, icptr, perm, liw, iw, w, icntl, cntl, info, rinfo)
  @ccall libhsl.mc61a_(job::Ref{Cint}, n::Ref{Cint}, lirn::Ref{Cint}, irn::Ptr{Cint},
                       icptr::Ptr{Cint}, perm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint},
                       w::Ptr{Float32}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint},
                       rinfo::Ptr{Float32})::Cvoid
end
