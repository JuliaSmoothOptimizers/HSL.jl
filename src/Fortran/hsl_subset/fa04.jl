function fa04br(::Type{Float32}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa04b_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa04br(::Type{Float64}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa04bd_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa04br(::Type{Float128}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa04bq_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa04br(::Type{Float32}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa04b_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa04br(::Type{Float64}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa04bd_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa04br(::Type{Float128}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa04bq_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa04cr(::Type{Float32}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04c_(igen::Ref{Int32})::Cvoid
end

function fa04cr(::Type{Float64}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04cd_(igen::Ref{Int32})::Cvoid
end

function fa04cr(::Type{Float128}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04cq_(igen::Ref{Int32})::Cvoid
end

function fa04cr(::Type{Float32}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04c_64_(igen::Ref{Int64})::Cvoid
end

function fa04cr(::Type{Float64}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04cd_64_(igen::Ref{Int64})::Cvoid
end

function fa04cr(::Type{Float128}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04cq_64_(igen::Ref{Int64})::Cvoid
end

function fa04dr(::Type{Float32}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04d_(igen::Ref{Int32})::Cvoid
end

function fa04dr(::Type{Float64}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04dd_(igen::Ref{Int32})::Cvoid
end

function fa04dr(::Type{Float128}, ::Type{Int32}, igen)
  @ccall libhsl_subset.fa04dq_(igen::Ref{Int32})::Cvoid
end

function fa04dr(::Type{Float32}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04d_64_(igen::Ref{Int64})::Cvoid
end

function fa04dr(::Type{Float64}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04dd_64_(igen::Ref{Int64})::Cvoid
end

function fa04dr(::Type{Float128}, ::Type{Int64}, igen)
  @ccall libhsl_subset_64.fa04dq_64_(igen::Ref{Int64})::Cvoid
end

function fa04ar(::Type{Float32}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa04a_(i::Ref{Int32})::Float32
end

function fa04ar(::Type{Float64}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa04ad_(i::Ref{Int32})::Float64
end

function fa04ar(::Type{Float128}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa04aq_(i::Ref{Int32})::Float128
end

function fa04ar(::Type{Float32}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa04a_64_(i::Ref{Int64})::Float32
end

function fa04ar(::Type{Float64}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa04ad_64_(i::Ref{Int64})::Float64
end

function fa04ar(::Type{Float128}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa04aq_64_(i::Ref{Int64})::Float128
end
