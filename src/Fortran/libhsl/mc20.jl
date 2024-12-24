function mc20ad(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.mc20ad_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function mc20bd(nc, maxa, a, inum, jptr)
  @ccall libhsl.mc20bd_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint})::Cvoid
end

function mc20a(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.mc20a_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function mc20b(nc, maxa, a, inum, jptr)
  @ccall libhsl.mc20b_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint})::Cvoid
end
