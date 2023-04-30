function fa14bd(ix, max, nrand)
    @ccall libhsl.fa14bd_(ix::Ref{Cint}, max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa14cd(ix, igen)
    @ccall libhsl.fa14cd_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14dd(ix, igen)
    @ccall libhsl.fa14dd_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14id(ix)
    @ccall libhsl.fa14id_(ix::Ref{Cint})::Cvoid
end

function fa14ad(ix, i)
    @ccall libhsl.fa14ad_(ix::Ref{Cint}, i::Ref{Cint})::Float64
end

function fa14b(ix, max, nrand)
    @ccall libhsl.fa14b_(ix::Ref{Cint}, max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa14c(ix, igen)
    @ccall libhsl.fa14c_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14d(ix, igen)
    @ccall libhsl.fa14d_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14i(ix)
    @ccall libhsl.fa14i_(ix::Ref{Cint})::Cvoid
end

function fa14a(ix, i)
    @ccall libhsl.fa14a_(ix::Ref{Cint}, i::Ref{Cint})::Float32
end
