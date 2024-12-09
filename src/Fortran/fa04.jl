function fa04bd(max, nrand)
  @ccall libhsl.fa04bd_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa04bd_64(max, nrand)
  @ccall libhsl_subset_64.fa04bd_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa04cd(igen)
  @ccall libhsl.fa04cd_(igen::Ref{Cint})::Cvoid
end

function fa04cd_64(igen)
  @ccall libhsl_subset_64.fa04cd_64_(igen::Ref{Int64})::Cvoid
end

function fa04dd(igen)
  @ccall libhsl.fa04dd_(igen::Ref{Cint})::Cvoid
end

function fa04dd_64(igen)
  @ccall libhsl_subset_64.fa04dd_64_(igen::Ref{Int64})::Cvoid
end

function fa04ad(i)
  @ccall libhsl.fa04ad_(i::Ref{Cint})::Float64
end

function fa04ad_64(i)
  @ccall libhsl_subset_64.fa04ad_64_(i::Ref{Int64})::Float64
end

function fa04b(max, nrand)
  @ccall libhsl.fa04b_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa04b_64(max, nrand)
  @ccall libhsl_subset_64.fa04b_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa04c(igen)
  @ccall libhsl.fa04c_(igen::Ref{Cint})::Cvoid
end

function fa04c_64(igen)
  @ccall libhsl_subset_64.fa04c_64_(igen::Ref{Int64})::Cvoid
end

function fa04d(igen)
  @ccall libhsl.fa04d_(igen::Ref{Cint})::Cvoid
end

function fa04d_64(igen)
  @ccall libhsl_subset_64.fa04d_64_(igen::Ref{Int64})::Cvoid
end

function fa04a(i)
  @ccall libhsl.fa04a_(i::Ref{Cint})::Float32
end

function fa04a_64(i)
  @ccall libhsl_subset_64.fa04a_64_(i::Ref{Int64})::Float32
end
