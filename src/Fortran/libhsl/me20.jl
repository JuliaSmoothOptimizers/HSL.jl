function me20ad(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.me20ad_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function me20bd(nc, maxa, a, inum, jptr)
  @ccall libhsl.me20bd_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float64}, inum::Ptr{Cint},
                        jptr::Ptr{Cint})::Cvoid
end

function me20a(nc, maxa, a, inum, jptr, jnum, jdisp)
  @ccall libhsl.me20a_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint}, jnum::Ptr{Cint}, jdisp::Ref{Cint})::Cvoid
end

function me20b(nc, maxa, a, inum, jptr)
  @ccall libhsl.me20b_(nc::Ref{Cint}, maxa::Ref{Cint}, a::Ptr{Float32}, inum::Ptr{Cint},
                       jptr::Ptr{Cint})::Cvoid
end
