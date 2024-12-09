function mc30ad(n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl.mc30ad_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                        icn::Ptr{Cint}, s::Ptr{Float64}, w::Ptr{Float64}, lp::Ref{Cint},
                        ifail::Ref{Cint})::Cvoid
end

function mc30ad_64(n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset_64.mc30ad_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float64},
                                     irn::Ptr{Int64}, icn::Ptr{Int64}, s::Ptr{Float64},
                                     w::Ptr{Float64}, lp::Ref{Int64}, ifail::Ref{Int64})::Cvoid
end

function mc30a(n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl.mc30a_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint}, icn::Ptr{Cint},
                       s::Ptr{Float32}, w::Ptr{Float32}, lp::Ref{Cint}, ifail::Ref{Cint})::Cvoid
end

function mc30a_64(n, ne, a, irn, icn, s, w, lp, ifail)
  @ccall libhsl_subset_64.mc30a_64_(n::Ref{Int64}, ne::Ref{Int64}, a::Ptr{Float32}, irn::Ptr{Int64},
                                    icn::Ptr{Int64}, s::Ptr{Float32}, w::Ptr{Float32},
                                    lp::Ref{Int64}, ifail::Ref{Int64})::Cvoid
end
