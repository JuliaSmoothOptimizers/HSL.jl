function mc77ic(icntl, cntl)
  @ccall libhsl.mc77ic_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function mc77ac(job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77ac_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, jcst::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{ComplexF32}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77nc(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77nc_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77oc(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77oc_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77pc(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77pc_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77qc(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77qc_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77bc(job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77bc_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{ComplexF32}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77rc(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77rc_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77sc(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77sc_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77tc(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77tc_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77uc(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77uc_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77cc(job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77cc_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF32}, lda::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77jc(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77jc_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77kc(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77kc_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77lc(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77lc_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77mc(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77mc_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77id(icntl, cntl)
  @ccall libhsl.mc77id_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function mc77ad(job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77ad_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, jcst::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float64}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77nd(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77nd_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77od(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77od_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77pd(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77pd_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77qd(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77qd_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77bd(job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77bd_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{Float64}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77rd(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77rd_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77sd(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77sd_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77td(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77td_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77ud(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77ud_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77cd(job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77cd_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77jd(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77jd_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77kd(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77kd_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77ld(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77ld_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77md(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77md_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77i(icntl, cntl)
  @ccall libhsl.mc77i_(icntl::Ptr{Cint}, cntl::Ptr{Float32})::Cvoid
end

function mc77a(job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77a_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, jcst::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                       liw::Ref{Cint}, dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77n(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77n_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77o(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77o_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77p(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77p_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77q(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77q_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77b(job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77b_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                       liw::Ref{Cint}, dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77r(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77r_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77s(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77s_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77t(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77t_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77u(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77u_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77c(job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77c_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       dw::Ptr{Float32}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float32}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

# function mc77j(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77j_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77k(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77k_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77l(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77l_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77m(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77m_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77iz(icntl, cntl)
  @ccall libhsl.mc77iz_(icntl::Ptr{Cint}, cntl::Ptr{Float64})::Cvoid
end

function mc77az(job, m, n, nnz, jcst, irn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77az_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, jcst::Ptr{Cint}, irn::Ptr{Cint}, a::Ptr{ComplexF64}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77nz(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77nz_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77oz(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77oz_(m, n, nnz, jcst, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77pz(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77pz_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77qz(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77qz_(n, nnz, jcst, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77bz(job, m, n, nnz, irn, jcn, a, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77bz_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, nnz::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint}, a::Ptr{ComplexF64}, iw::Ptr{Cint},
                        liw::Ref{Cint}, dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77rz(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77rz_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77sz(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77sz_(m, n, nnz, jcn, irn, a, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77tz(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77tz_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77uz(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77uz_(n, nnz, jcn, irn, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

function mc77cz(job, m, n, a, lda, iw, liw, dw, ldw, icntl, cntl, info, rinfo)
  @ccall libhsl.mc77cz_(job::Ref{Cint}, m::Ref{Cint}, n::Ref{Cint}, a::Ptr{ComplexF64}, lda::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        dw::Ptr{Float64}, ldw::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float64}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

# function mc77jz(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77jz_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77kz(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
#   @ccall libhsl.mc77kz_(m, n, a, lda, d, e, check, thresh, err, maxit, niter, iw, jw, dw, ew, info)
# end

# function mc77lz(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77lz_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end

# function mc77mz(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
#   @ccall libhsl.mc77mz_(n, a, de, check, thresh, err, maxit, niter, ijw, dew, info)
# end
