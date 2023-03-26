function mf71ad(n, kase, x, est, w, keep)
    @ccall libhsl.mf71ad_(n::Ref{Cint}, kase::Ref{Cint}, x::Ptr{ComplexF64},
                          est::Ref{Float64}, w::Ptr{ComplexF64}, keep::Ptr{Cint})::Cvoid
end

function mf71a(n, kase, x, est, w, keep)
    @ccall libhsl.mf71a_(n::Ref{Cint}, kase::Ref{Cint}, x::Ptr{ComplexF32},
                         est::Ref{Float32}, w::Ptr{ComplexF32}, keep::Ptr{Cint})::Cvoid
end
