function mc24ad(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl.mc24ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, lenrl::Ptr{Cint}, w::Ptr{Float64})::Cvoid
end

function mc24a(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl.mc24a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, lenrl::Ptr{Cint}, w::Ptr{Float32})::Cvoid
end
