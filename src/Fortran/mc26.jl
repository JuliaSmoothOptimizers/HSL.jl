function mc26id(icntl)
    @ccall libhsl.mc26id_(icntl::Ptr{Cint})::Cvoid
end

function mc26bd(m, n, a, ind, jptr, ata, lata, minata, iata, nzata, iptr, lenr, lenata)
    @ccall libhsl.mc26bd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, ind::Ptr{Cint},
                          jptr::Ptr{Cint}, ata::Ptr{Float64}, lata::Ref{Cint},
                          minata::Ref{Cint}, iata::Ptr{Cint}, nzata::Ref{Cint},
                          iptr::Ptr{Cint}, lenr::Ptr{Cint}, lenata::Ptr{Cint})::Cvoid
end

function mc26i(icntl)
    @ccall libhsl.mc26i_(icntl::Ptr{Cint})::Cvoid
end

function mc26b(m, n, a, ind, jptr, ata, lata, minata, iata, nzata, iptr, lenr, lenata)
    @ccall libhsl.mc26b_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, ind::Ptr{Cint},
                         jptr::Ptr{Cint}, ata::Ptr{Float32}, lata::Ref{Cint},
                         minata::Ref{Cint}, iata::Ptr{Cint}, nzata::Ref{Cint},
                         iptr::Ptr{Cint}, lenr::Ptr{Cint}, lenata::Ptr{Cint})::Cvoid
end
