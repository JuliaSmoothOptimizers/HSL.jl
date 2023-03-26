function mc46ad(nr, nc, la, yesa, index, a, ipr, jpc, iw, inform)
    @ccall libhsl.mc46ad_(nr::Ref{Cint}, nc::Ref{Cint}, la::Ref{Cint}, yesa::Ref{Cint},
                          index::Ptr{Cint}, a::Ptr{Float64}, ipr::Ptr{Cint}, jpc::Ptr{Cint},
                          iw::Ptr{Cint}, inform::Ref{Cint})::Cvoid
end

function mc46a(nr, nc, la, yesa, index, a, ipr, jpc, iw, inform)
    @ccall libhsl.mc46a_(nr::Ref{Cint}, nc::Ref{Cint}, la::Ref{Cint}, yesa::Ref{Cint},
                         index::Ptr{Cint}, a::Ptr{Float32}, ipr::Ptr{Cint}, jpc::Ptr{Cint},
                         iw::Ptr{Cint}, inform::Ref{Cint})::Cvoid
end
