function kb06ad(count, n)
  @ccall libhsl.kb06ad_(count::Ptr{Float64}, n::Ref{Cint})::Cvoid
end

function kb06ai(count, n)
  @ccall libhsl.kb06ai_(count::Ptr{Cint}, n::Ref{Cint})::Cvoid
end

function kb06a(count, n)
  @ccall libhsl.kb06a_(count::Ptr{Float32}, n::Ref{Cint})::Cvoid
end
