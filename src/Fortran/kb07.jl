function kb07ad(count, n, index)
  @ccall libhsl.kb07ad_(count::Ptr{Float64}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end

function kb07ad_64(count, n, index)
  @ccall libhsl_subset_64.kb07ad_64_(count::Ptr{Float64}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end

function kb07ai(count, n, index)
  @ccall libhsl.kb07ai_(count::Ptr{Cint}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end

function kb07ai_64(count, n, index)
  @ccall libhsl_subset_64.kb07ai_64_(count::Ptr{Int64}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end

function kb07a(count, n, index)
  @ccall libhsl.kb07a_(count::Ptr{Float32}, n::Ref{Cint}, index::Ptr{Cint})::Cvoid
end

function kb07a_64(count, n, index)
  @ccall libhsl_subset_64.kb07a_64_(count::Ptr{Float32}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end
