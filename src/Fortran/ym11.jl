function ym11ic(icntl, iseed)
    @ccall libhsl.ym11ic_(icntl::Ptr{Cint}, iseed::Ref{Cint})::Cvoid
end

function ym11ac(m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key, iseed)
    @ccall libhsl.ym11ac_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                          irn::Ptr{Cint}, a::Ptr{ComplexF32}, jcolst::Ptr{Cint},
                          iw::Ptr{Cint}, icntl::Ptr{Cint}, key::Ptr{UInt8},
                          iseed::Ref{Cint})::Cvoid
end

function ym11bc(n, m, perm, invprm, iseed)
    @ccall libhsl.ym11bc_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint},
                          iseed::Ref{Cint})::Cvoid
end

function ym11id(icntl, iseed)
    @ccall libhsl.ym11id_(icntl::Ptr{Cint}, iseed::Ref{Cint})::Cvoid
end

function ym11ad(m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key, iseed)
    @ccall libhsl.ym11ad_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                          irn::Ptr{Cint}, a::Ptr{Float64}, jcolst::Ptr{Cint}, iw::Ptr{Cint},
                          icntl::Ptr{Cint}, key::Ptr{UInt8}, iseed::Ref{Cint})::Cvoid
end

function ym11bd(n, m, perm, invprm, iseed)
    @ccall libhsl.ym11bd_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint},
                          iseed::Ref{Cint})::Cvoid
end

function ym11ii(icntl, iseed)
    @ccall libhsl.ym11ii_(icntl::Ptr{Cint}, iseed::Ref{Cint})::Cvoid
end

function ym11ai(m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key, iseed)
    @ccall libhsl.ym11ai_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                          irn::Ptr{Cint}, a::Ptr{Cint}, jcolst::Ptr{Cint}, iw::Ptr{Cint},
                          icntl::Ptr{Cint}, key::Ptr{UInt8}, iseed::Ref{Cint})::Cvoid
end

function ym11bi(n, m, perm, invprm, iseed)
    @ccall libhsl.ym11bi_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint},
                          iseed::Ref{Cint})::Cvoid
end

function ym11i(icntl, iseed)
    @ccall libhsl.ym11i_(icntl::Ptr{Cint}, iseed::Ref{Cint})::Cvoid
end

function ym11a(m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key, iseed)
    @ccall libhsl.ym11a_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                         irn::Ptr{Cint}, a::Ptr{Float32}, jcolst::Ptr{Cint}, iw::Ptr{Cint},
                         icntl::Ptr{Cint}, key::Ptr{UInt8}, iseed::Ref{Cint})::Cvoid
end

function ym11b(n, m, perm, invprm, iseed)
    @ccall libhsl.ym11b_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint},
                         iseed::Ref{Cint})::Cvoid
end

function ym11iz(icntl, iseed)
    @ccall libhsl.ym11iz_(icntl::Ptr{Cint}, iseed::Ref{Cint})::Cvoid
end

function ym11az(m, n, nzin, nzout, irn, a, jcolst, iw, icntl, key, iseed)
    @ccall libhsl.ym11az_(m::Ref{Cint}, n::Ref{Cint}, nzin::Ref{Cint}, nzout::Ref{Cint},
                          irn::Ptr{Cint}, a::Ptr{ComplexF64}, jcolst::Ptr{Cint},
                          iw::Ptr{Cint}, icntl::Ptr{Cint}, key::Ptr{UInt8},
                          iseed::Ref{Cint})::Cvoid
end

function ym11bz(n, m, perm, invprm, iseed)
    @ccall libhsl.ym11bz_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint},
                          iseed::Ref{Cint})::Cvoid
end
