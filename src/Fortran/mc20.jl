function mc20ad(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.mc20ad_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function mc20ad_64(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset_64.mc20ad_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float64},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64}, jnum::Ptr{Int64},
                                     jdisp::Ref{Int64})::Cvoid
end

function mc20bd(nc, maxa, a, inum, jptr)
  @ccall libhsl.mc20bd_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint})::Cvoid
end

function mc20bd_64(nc, maxa, a, inum, jptr)
  @ccall libhsl_subset_64.mc20bd_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float64},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64})::Cvoid
end

function mc20a(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.mc20a_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function mc20a_64(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset_64.mc20a_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float32},
                                    inum::Ptr{Int64}, jptr::Ptr{Int64}, jnum::Ptr{Int64},
                                    jdisp::Ref{Int64})::Cvoid
end

function mc20b(nc, maxa, a, inum, jptr)
  @ccall libhsl.mc20b_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint})::Cvoid
end

function mc20b_64(nc, maxa, a, inum, jptr)
  @ccall libhsl_subset_64.mc20b_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float32},
                                    inum::Ptr{Int64}, jptr::Ptr{Int64})::Cvoid
end
