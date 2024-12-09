function mc19ad(n, na, a, irn, icn, r, c, w)
  @ccall libhsl.mc19ad_(n::Ref{Cint}, na::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                        icn::Ptr{Cint}, r::Ptr{Float32}, c::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function mc19ad_64(n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset_64.mc19ad_64_(n::Ref{Int64}, na::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, r::Ptr{Float32},
                                     c::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function mc19a(n, na, a, irn, icn, r, c, w)
  @ccall libhsl.mc19a_(n::Ref{Cint}, na::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, icn::Ptr{Cint},
                       r::Ptr{Float32}, c::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end

function mc19a_64(n, na, a, irn, icn, r, c, w)
  @ccall libhsl_subset_64.mc19a_64_(n::Ref{Int64}, na::Ref{Int64}, a::Ptr{Float32}, irn::Ptr{Int64},
                                    icn::Ptr{Int64}, r::Ptr{Float32}, c::Ptr{Float32},
                                    w::Ptr{Float32})::Cvoid
end
