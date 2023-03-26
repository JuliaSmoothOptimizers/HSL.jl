function mf64id(icntl)
    @ccall libhsl.mf64id_(icntl::Ptr{Cint})::Cvoid
end

function mf64ad(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
    @ccall libhsl.mf64ad_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint},
                          irn::Ptr{Cint}, a::Ptr{ComplexF64}, num::Ref{Cint},
                          cperm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, ldw::Ref{Cint},
                          dw::Ptr{Float64}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mf64bd(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
    @ccall libhsl.mf64bd_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                          a::Ptr{ComplexF64}, iperm::Ptr{Cint}, num::Ref{Cint},
                          jperm::Ptr{Cint}, pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint},
                          d::Ptr{Float64})::Cvoid
end

function mf64i(icntl)
    @ccall libhsl.mf64i_(icntl::Ptr{Cint})::Cvoid
end

function mf64a(job, n, ne, ip, irn, a, num, cperm, liw, iw, ldw, dw, icntl, info)
    @ccall libhsl.mf64a_(job::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint},
                         irn::Ptr{Cint}, a::Ptr{ComplexF32}, num::Ref{Cint},
                         cperm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, ldw::Ref{Cint},
                         dw::Ptr{Float32}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mf64b(n, ne, ip, irn, a, iperm, num, jperm, pr, q, l, d)
    @ccall libhsl.mf64b_(n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, irn::Ptr{Cint},
                         a::Ptr{ComplexF32}, iperm::Ptr{Cint}, num::Ref{Cint},
                         jperm::Ptr{Cint}, pr::Ptr{Cint}, q::Ptr{Cint}, l::Ptr{Cint},
                         d::Ptr{Float32})::Cvoid
end
