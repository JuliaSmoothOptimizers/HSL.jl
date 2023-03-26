function ma48ad(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, iw, info, rinfo)
    @ccall libhsl.ma48ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                          keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                          iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma48bd(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, w, iw, info, rinfo)
    @ccall libhsl.ma48bd_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                          keep::Ptr{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                          w::Ptr{Float64}, iw::Ptr{Cint}, info::Ptr{Cint},
                          rinfo::Ptr{Float64})::Cvoid
end

function ma48cd(m, n, trans, job, la, a, irn, keep, cntl, icntl, rhs, x, error, w, iw, info)
    @ccall libhsl.ma48cd_(m::Ref{Cint}, n::Ref{Cint}, trans::Ref{Cint}, job::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint}, keep::Ptr{Cint},
                          cntl::Ptr{Float64}, icntl::Ptr{Cint}, rhs::Ptr{Float64},
                          x::Ptr{Float64}, error::Ptr{Float64}, w::Ptr{Float64},
                          iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma48dd(n, ne, la, a, aa, irn, irna, iptrd, iptro, nb, iblock, iptrl, iptru, rhs, x,
                trans, icntl5, w)
    @ccall libhsl.ma48dd_(n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                          aa::Ptr{Float64}, irn::Ptr{Cint}, irna::Ptr{Cint},
                          iptrd::Ptr{Cint}, iptro::Ptr{Cint}, nb::Ref{Cint},
                          iblock::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint},
                          rhs::Ptr{Float64}, x::Ptr{Float64}, trans::Ref{Cint},
                          icntl5::Ptr{Cint}, w::Ptr{Float64})::Cvoid
end

function ma48id(cntl, icntl)
    @ccall libhsl.ma48id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma48a(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, iw, info, rinfo)
    @ccall libhsl.ma48a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                         keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                         iw::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma48b(m, n, ne, job, la, a, irn, jcn, keep, cntl, icntl, w, iw, info, rinfo)
    @ccall libhsl.ma48b_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                         keep::Ptr{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                         w::Ptr{Float32}, iw::Ptr{Cint}, info::Ptr{Cint},
                         rinfo::Ptr{Float32})::Cvoid
end

function ma48c(m, n, trans, job, la, a, irn, keep, cntl, icntl, rhs, x, error, w, iw, info)
    @ccall libhsl.ma48c_(m::Ref{Cint}, n::Ref{Cint}, trans::Ref{Cint}, job::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, keep::Ptr{Cint},
                         cntl::Ptr{Float32}, icntl::Ptr{Cint}, rhs::Ptr{Float32},
                         x::Ptr{Float32}, error::Ptr{Float32}, w::Ptr{Float32},
                         iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma48d(n, ne, la, a, aa, irn, irna, iptrd, iptro, nb, iblock, iptrl, iptru, rhs, x,
               trans, icntl5, w)
    @ccall libhsl.ma48d_(n::Ref{Cint}, ne::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                         aa::Ptr{Float32}, irn::Ptr{Cint}, irna::Ptr{Cint},
                         iptrd::Ptr{Cint}, iptro::Ptr{Cint}, nb::Ref{Cint},
                         iblock::Ptr{Cint}, iptrl::Ptr{Cint}, iptru::Ptr{Cint},
                         rhs::Ptr{Float32}, x::Ptr{Float32}, trans::Ref{Cint},
                         icntl5::Ptr{Cint}, w::Ptr{Float32})::Cvoid
end

function ma48i(cntl, icntl)
    @ccall libhsl.ma48i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end
