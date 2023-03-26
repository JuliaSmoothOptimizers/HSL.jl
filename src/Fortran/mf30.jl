function mf30ad(n, ne, a, irn, icn, s, w, lp, ifail)
    @ccall libhsl.mf30ad_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF64}, irn::Ptr{Cint},
                          icn::Ptr{Cint}, s::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Cint},
                          ifail::Ref{Cint})::Cvoid
end

function mf30a(n, ne, a, irn, icn, s, w, lp, ifail)
    @ccall libhsl.mf30a_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{ComplexF32}, irn::Ptr{Cint},
                         icn::Ptr{Cint}, s::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Cint},
                         ifail::Ref{Cint})::Cvoid
end
