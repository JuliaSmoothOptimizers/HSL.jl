function pa16ad(a, n, root, e, w, f, ig)
  @ccall libhsl.pa16ad_(a::Ptr{ComplexF64}, n::Ref{Cint}, root::Ptr{ComplexF64}, e::Ptr{Float64}, w::Ptr{ComplexF64}, f::Ptr{Float64}, ig::Ptr{Cint})::Cvoid
end

function pa16bd(a, n, root, d)
  @ccall libhsl.pa16bd_(a::Ptr{ComplexF64}, n::Ref{Cint}, root::Ptr{ComplexF64}, d::Ptr{ComplexF64})::Cvoid
end

function pa16cd(a, n, root, e, w, f, ig, cr)
  @ccall libhsl.pa16cd_(a::Ptr{ComplexF64}, n::Ref{Cint}, root::Ptr{ComplexF64}, e::Ptr{Float64}, w::Ptr{ComplexF64}, f::Ptr{Float64}, ig::Ptr{Cint}, cr::Ptr{Float64})::Cvoid
end

function pa16dd(z, n, a)
  @ccall libhsl.pa16dd_(z::Ref{ComplexF64}, n::Ref{Cint}, a::Ptr{ComplexF64})::ComplexF64
end

function pa16a(a, n, root, e, w, f, ig)
  @ccall libhsl.pa16a_(a::Ptr{ComplexF32}, n::Ref{Cint}, root::Ptr{ComplexF32}, e::Ptr{Float32}, w::Ptr{ComplexF32}, f::Ptr{Float32}, ig::Ptr{Cint})::Cvoid
end

function pa16b(a, n, root, d)
  @ccall libhsl.pa16b_(a::Ptr{ComplexF32}, n::Ref{Cint}, root::Ptr{ComplexF32}, d::Ptr{ComplexF32})::Cvoid
end

function pa16c(a, n, root, e, w, f, ig, cr)
  @ccall libhsl.pa16c_(a::Ptr{ComplexF32}, n::Ref{Cint}, root::Ptr{ComplexF32}, e::Ptr{Float32}, w::Ptr{ComplexF32}, f::Ptr{Float32}, ig::Ptr{Cint}, cr::Ptr{Float32})::Cvoid
end

function pa16d(z, n, a)
  @ccall libhsl.pa16d_(z::Ref{ComplexF32}, n::Ref{Cint}, a::Ptr{ComplexF32})::ComplexF32
end
