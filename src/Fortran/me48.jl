function me48ad(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, iw, info, rinfo)
    @ccall libhsl.me48ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                          keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                          iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ref{Float64})::Cvoid
end

function me48bd(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, w, iw, info, rinfo)
    @ccall libhsl.me48bd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                          keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                          w::Ptr{ComplexF64}, iw::Ptr{Cint}, info::Ptr{Cint},
                          rinfo::Ref{Float64})::Cvoid
end

function me48cd(m, n, kind, job, la, a, irn, keep, cntl, icntl, rhs, x, error, w, iw, info)
    @ccall libhsl.me48cd_(m::Ref{Cint}, n::Ref{Cint}, kind::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint},
                          keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                          rhs::Ptr{ComplexF64}, x::Ptr{ComplexF64}, error::Ptr{Float64},
                          w::Ptr{ComplexF64}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me48dd(n, ne, la, a, aa, irn, irna, iptrd, iptro, nb, iblock, iptrl, iptru, rhs, x,
                kind, icntl5, w)
    @ccall libhsl.me48dd_(n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{ComplexF64},
                          aa::Ptr{ComplexF64}, irn::Ptr{Cint}, irna::Ptr{Cint},
                          iptrd::Ptr{Cint}, iptro::Ptr{Cint}, nb::Ref{Cint},
                          iblock::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint},
                          rhs::Ptr{ComplexF64}, x::Ptr{ComplexF64}, kind::Ref{Cint},
                          icntl5::Ptr{Cint}, w::Ptr{ComplexF64})::Cvoid
end

function me48id(cntl, icntl)
    @ccall libhsl.me48id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function me48a(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, iw, info, rinfo)
    @ccall libhsl.me48a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                         keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                         iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ref{Float32})::Cvoid
end

function me48b(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, w, iw, info, rinfo)
    @ccall libhsl.me48b_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                         keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                         w::Ptr{ComplexF32}, iw::Ptr{Cint}, info::Ptr{Cint},
                         rinfo::Ref{Float32})::Cvoid
end

function me48c(m, n, kind, job, la, a, irn, keep, cntl, icntl, rhs, x, error, w, iw, info)
    @ccall libhsl.me48c_(m::Ref{Cint}, n::Ref{Cint}, kind::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint}, keep::Ptr{Cint},
                         cntl::Ptr{Float32}, icntl::Ptr{Cint}, rhs::Ptr{ComplexF32},
                         x::Ptr{ComplexF32}, error::Ptr{Float32}, w::Ptr{ComplexF32},
                         iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function me48d(n, ne, la, a, aa, irn, irna, iptrd, iptro, nb, iblock, iptrl, iptru, rhs, x,
               kind, icntl5, w)
    @ccall libhsl.me48d_(n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{ComplexF32},
                         aa::Ptr{ComplexF32}, irn::Ptr{Cint}, irna::Ptr{Cint},
                         iptrd::Ptr{Cint}, iptro::Ptr{Cint}, nb::Ref{Cint},
                         iblock::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint},
                         rhs::Ptr{ComplexF32}, x::Ptr{ComplexF32}, kind::Ref{Cint},
                         icntl5::Ptr{Cint}, w::Ptr{ComplexF32})::Cvoid
end

function me48i(cntl, icntl)
    @ccall libhsl.me48i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end
