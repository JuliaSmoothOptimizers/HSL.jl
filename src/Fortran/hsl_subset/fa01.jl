function fa01br(::Type{Float32}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa01b_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa01br(::Type{Float64}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa01bd_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa01br(::Type{Float128}, ::Type{Int32}, max, nrand)
  @ccall libhsl_subset.fa01bq_(max::Ref{Int32}, nrand::Ref{Int32})::Cvoid
end

function fa01br(::Type{Float32}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa01b_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa01br(::Type{Float64}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa01bd_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa01br(::Type{Float128}, ::Type{Int64}, max, nrand)
  @ccall libhsl_subset_64.fa01bq_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa01cr(::Type{Float32}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01c_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01cr(::Type{Float64}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01cd_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01cr(::Type{Float128}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01cq_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01cr(::Type{Float32}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01c_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01cr(::Type{Float64}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01cd_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01cr(::Type{Float128}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01cq_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01dr(::Type{Float32}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01d_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01dr(::Type{Float64}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01dd_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01dr(::Type{Float128}, ::Type{Int32}, il, ir)
  @ccall libhsl_subset.fa01dq_(il::Ref{Int32}, ir::Ref{Int32})::Cvoid
end

function fa01dr(::Type{Float32}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01d_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01dr(::Type{Float64}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01dd_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01dr(::Type{Float128}, ::Type{Int64}, il, ir)
  @ccall libhsl_subset_64.fa01dq_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01ar(::Type{Float32}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa01a_(i::Ref{Int32})::Float32
end

function fa01ar(::Type{Float64}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa01ad_(i::Ref{Int32})::Float64
end

function fa01ar(::Type{Float128}, ::Type{Int32}, i)
  @ccall libhsl_subset.fa01aq_(i::Ref{Int32})::Float128
end

function fa01ar(::Type{Float32}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa01a_64_(i::Ref{Int64})::Float32
end

function fa01ar(::Type{Float64}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa01ad_64_(i::Ref{Int64})::Float64
end

function fa01ar(::Type{Float128}, ::Type{Int64}, i)
  @ccall libhsl_subset_64.fa01aq_64_(i::Ref{Int64})::Float128
end
