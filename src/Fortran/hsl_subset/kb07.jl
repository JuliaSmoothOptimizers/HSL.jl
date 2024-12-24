
function kb07ar(::Type{Float32}, ::Type{Int32}, count, n, index)
  @ccall libhsl_subset.kb07a_(count::Ptr{Float32}, n::Ref{Int32}, index::Ptr{Int32})::Cvoid
end

function kb07ar(::Type{Float64}, ::Type{Int32}, count, n, index)
  @ccall libhsl_subset.kb07ad_(count::Ptr{Float64}, n::Ref{Int32}, index::Ptr{Int32})::Cvoid
end

function kb07ar(::Type{Float128}, ::Type{Int32}, count, n, index)
  @ccall libhsl_subset.kb07aq_(count::Ptr{Float128}, n::Ref{Int32}, index::Ptr{Int32})::Cvoid
end

function kb07ar(::Type{Float32}, ::Type{Int64}, count, n, index)
  @ccall libhsl_subset_64.kb07a_64_(count::Ptr{Float32}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end

function kb07ar(::Type{Float64}, ::Type{Int64}, count, n, index)
  @ccall libhsl_subset_64.kb07ad_64_(count::Ptr{Float64}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end

function kb07ar(::Type{Float128}, ::Type{Int64}, count, n, index)
  @ccall libhsl_subset_64.kb07aq_64_(count::Ptr{Float128}, n::Ref{Int64}, index::Ptr{Int64})::Cvoid
end
