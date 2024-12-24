function mc20ar(::Type{Float32}, ::Type{Int32}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset.mc20a_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float32}, inum::Ptr{Int32},
                              jptr::Ptr{Int32}, jnum::Ptr{Int32}, jdisp::Ref{Int32})::Cvoid
end

function mc20ar(::Type{Float64}, ::Type{Int32}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset.mc20ad_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float64}, inum::Ptr{Int32},
                               jptr::Ptr{Int32}, jnum::Ptr{Int32}, jdisp::Ref{Int32})::Cvoid
end

function mc20ar(::Type{Float128}, ::Type{Int32}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset.mc20aq_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float128}, inum::Ptr{Int32},
                               jptr::Ptr{Int32}, jnum::Ptr{Int32}, jdisp::Ref{Int32})::Cvoid
end

function mc20ar(::Type{Float32}, ::Type{Int64}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset_64.mc20a_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float32},
                                    inum::Ptr{Int64}, jptr::Ptr{Int64}, jnum::Ptr{Int64},
                                    jdisp::Ref{Int64})::Cvoid
end

function mc20ar(::Type{Float64}, ::Type{Int64}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset_64.mc20ad_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float64},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64}, jnum::Ptr{Int64},
                                     jdisp::Ref{Int64})::Cvoid
end

function mc20ar(::Type{Float128}, ::Type{Int64}, nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl_subset_64.mc20aq_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float128},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64}, jnum::Ptr{Int64},
                                     jdisp::Ref{Int64})::Cvoid
end

function mc20br(::Type{Float32}, ::Type{Int32}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset.mc20b_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float32}, inum::Ptr{Int32},
                              jptr::Ptr{Int32})::Cvoid
end

function mc20br(::Type{Float64}, ::Type{Int32}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset.mc20bd_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float64}, inum::Ptr{Int32},
                               jptr::Ptr{Int32})::Cvoid
end

function mc20br(::Type{Float128}, ::Type{Int32}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset.mc20bq_(nc::Ref{Int32}, maxa::Ref{Int32}, a::Ptr{Float128}, inum::Ptr{Int32},
                               jptr::Ptr{Int32})::Cvoid
end

function mc20br(::Type{Float32}, ::Type{Int64}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset_64.mc20b_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float32},
                                    inum::Ptr{Int64}, jptr::Ptr{Int64})::Cvoid
end

function mc20br(::Type{Float64}, ::Type{Int64}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset_64.mc20bd_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float64},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64})::Cvoid
end

function mc20br(::Type{Float128}, ::Type{Int64}, nc, maxa, a, inum, jptr)
  @ccall libhsl_subset_64.mc20bq_64_(nc::Ref{Int64}, maxa::Ref{Int64}, a::Ptr{Float128},
                                     inum::Ptr{Int64}, jptr::Ptr{Int64})::Cvoid
end
