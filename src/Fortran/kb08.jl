function kb08ad(count, n, index)
    @ccall libhsl.kb08ad_(count::Ptr{Float64}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end

function kb08ai(count, n, index)
    @ccall libhsl.kb08ai_(count::Ptr{Cint}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end

function kb08a(count, n, index)
    @ccall libhsl.kb08a_(count::Ptr{Float32}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end
