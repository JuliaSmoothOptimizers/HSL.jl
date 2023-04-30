function kb05ad(count, n)
    @ccall libhsl.kb05ad_(count::Ptr{Float64}, n::Ref{Cint})::Cvoid
end

function kb05ai(count, n)
    @ccall libhsl.kb05ai_(count::Ptr{Cint}, n::Ref{Cint})::Cvoid
end

function kb05a(count, n)
    @ccall libhsl.kb05a_(count::Ptr{Float32}, n::Ref{Cint})::Cvoid
end
