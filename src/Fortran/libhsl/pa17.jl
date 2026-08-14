function pa17ad(a, n, root, e, w, ig)
  @ccall libhsl.pa17ad_(a::Ptr{Float64}, n::Ref{Cint}, root::Ptr{ComplexF64}, e::Ptr{Float64},
                        w::Ptr{Float64}, ig::Ptr{Cint})::Cvoid
end

function pa17bd(a, n, root, d)
  @ccall libhsl.pa17bd_(a::Ptr{Float64}, n::Ref{Cint}, root::Ptr{ComplexF64},
                        d::Ptr{Float64})::Cvoid
end

function pa17cd(a, n, root, e, w, ig, cr)
  @ccall libhsl.pa17cd_(a::Ptr{Float64}, n::Ref{Cint}, root::Ptr{ComplexF64}, e::Ptr{Float64},
                        w::Ptr{Float64}, ig::Ptr{Cint}, cr::Ptr{Float64})::Cvoid
end

function pa17dd(result, z, n, a)
  @ccall libhsl.pa17dd_(result::Ref{ComplexF64}, z::Ref{ComplexF64}, n::Ref{Cint},
                        a::Ptr{Float64})::Cvoid
end
