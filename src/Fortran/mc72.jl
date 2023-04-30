function mc72ac(a, ia, n, r, c, w, lp, ifail)
    @ccall libhsl.mc72ac_(a::Ptr{ComplexF32}, ia::Ref{Cint}, n::Ref{Cint}, r::Ptr{Float32},
                          c::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Cint},
                          ifail::Ref{Cint})::Cvoid
end

function mc72ad(a, ia, n, r, c, w, lp, ifail)
    @ccall libhsl.mc72ad_(a::Ptr{Float64}, ia::Ref{Cint}, n::Ref{Cint}, r::Ptr{Float64},
                          c::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Cint},
                          ifail::Ref{Cint})::Cvoid
end

function mc72a(a, ia, n, r, c, w, lp, ifail)
    @ccall libhsl.mc72a_(a::Ptr{Float32}, ia::Ref{Cint}, n::Ref{Cint}, r::Ptr{Float32},
                         c::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Cint},
                         ifail::Ref{Cint})::Cvoid
end

function mc72az(a, ia, n, r, c, w, lp, ifail)
    @ccall libhsl.mc72az_(a::Ptr{ComplexF64}, ia::Ref{Cint}, n::Ref{Cint}, r::Ptr{Float64},
                          c::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Cint},
                          ifail::Ref{Cint})::Cvoid
end
