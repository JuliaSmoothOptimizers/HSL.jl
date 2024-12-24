function fa14br(::Type{Float32}, ::Type{Int32}, ix, max, nrand)
  @ccall libhsl_subset.fa14b_(ix::Ref{Int32}, max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa14br(::Type{Float64}, ::Type{Int32}, ix, max, nrand)
  @ccall libhsl_subset.fa14bd_(ix::Ref{Int32}, max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa14br(::Type{Float128}, ::Type{Int32}, ix, max, nrand)
  @ccall libhsl_subset.fa14bq_(ix::Ref{Int32}, max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa14br(::Type{Float32}, ::Type{Int64}, ix, max, nrand)
  @ccall libhsl_subset_64.fa14b_64_(ix::Ref{Int64}, max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa14br(::Type{Float64}, ::Type{Int64}, ix, max, nrand)
  @ccall libhsl_subset_64.fa14bd_64_(ix::Ref{Int64}, max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa14br(::Type{Float128}, ::Type{Int64}, ix, max, nrand)
  @ccall libhsl_subset_64.fa14bq_64_(ix::Ref{Int64}, max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa14cr(::Type{Float32}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14c_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14cr(::Type{Float64}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14cd_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14cr(::Type{Float128}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14cq_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14cr(::Type{Float32}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14c_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14cr(::Type{Float64}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14cd_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14cr(::Type{Float128}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14cq_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14dr(::Type{Float32}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14d_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14dr(::Type{Float64}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14dd_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14dr(::Type{Float128}, ::Type{Int32}, ix, igen)
  @ccall libhsl_subset.fa14dq_(ix::Ref{Int32}, igen::Ref{Int32})::Cvoid
end

function fa14dr(::Type{Float32}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14d_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14dr(::Type{Float64}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14dd_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14dr(::Type{Float128}, ::Type{Int64}, ix, igen)
  @ccall libhsl_subset_64.fa14dq_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14ir(::Type{Float32}, ::Type{Int32}, ix)
  @ccall libhsl_subset.fa14i_(ix::Ref{Int32})::Cvoid
end

function fa14ir(::Type{Float64}, ::Type{Int32}, ix)
  @ccall libhsl_subset.fa14id_(ix::Ref{Int32})::Cvoid
end

function fa14ir(::Type{Float128}, ::Type{Int32}, ix)
  @ccall libhsl_subset.fa14iq_(ix::Ref{Int32})::Cvoid
end

function fa14ir(::Type{Float32}, ::Type{Int64}, ix)
  @ccall libhsl_subset_64.fa14i_64_(ix::Ref{Int64})::Cvoid
end

function fa14ir(::Type{Float64}, ::Type{Int64}, ix)
  @ccall libhsl_subset_64.fa14id_64_(ix::Ref{Int64})::Cvoid
end

function fa14ir(::Type{Float128}, ::Type{Int64}, ix)
  @ccall libhsl_subset_64.fa14iq_64_(ix::Ref{Int64})::Cvoid
end

function fa14ar(::Type{Float32}, ::Type{Int32}, ix, i)
  @ccall libhsl_subset.fa14a_(ix::Ref{Int32}, i::Ref{Int32})::Float32
end

function fa14ar(::Type{Float64}, ::Type{Int32}, ix, i)
  @ccall libhsl_subset.fa14ad_(ix::Ref{Int32}, i::Ref{Int32})::Float64
end

function fa14ar(::Type{Float128}, ::Type{Int32}, ix, i)
  @ccall libhsl_subset.fa14aq_(ix::Ref{Int32}, i::Ref{Int32})::Float128
end

function fa14ar(::Type{Float32}, ::Type{Int64}, ix, i)
  @ccall libhsl_subset_64.fa14a_64_(ix::Ref{Int64}, i::Ref{Int64})::Float32
end

function fa14ar(::Type{Float64}, ::Type{Int64}, ix, i)
  @ccall libhsl_subset_64.fa14ad_64_(ix::Ref{Int64}, i::Ref{Int64})::Float64
end

function fa14ar(::Type{Float128}, ::Type{Int64}, ix, i)
  @ccall libhsl_subset_64.fa14aq_64_(ix::Ref{Int64}, i::Ref{Int64})::Float128
end
