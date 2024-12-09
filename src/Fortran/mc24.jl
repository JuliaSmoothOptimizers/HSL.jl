function mc24ad(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl.mc24ad_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float64}, licn::Ref{Cint},
                        lenr::Ptr{Cint}, lenrl::Ptr{Cint}, w::Ptr{Float64})::Cvoid
end

function mc24ad_64(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset_64.mc24ad_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float64},
                                     licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                     w::Ptr{Float64})::Cvoid
end

function mc24a(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl.mc24a_(n::Ref{Cint}, icn::Ptr{Cint}, a::Ptr{Float32}, licn::Ref{Cint},
                       lenr::Ptr{Cint}, lenrl::Ptr{Cint}, w::Ptr{Float32})::Cvoid
end

function mc24a_64(n, icn, a, licn, lenr, lenrl, w)
  @ccall libhsl_subset_64.mc24a_64_(n::Ref{Int64}, icn::Ptr{Int64}, a::Ptr{Float32},
                                    licn::Ref{Int64}, lenr::Ptr{Int64}, lenrl::Ptr{Int64},
                                    w::Ptr{Float32})::Cvoid
end
