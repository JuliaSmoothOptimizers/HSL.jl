function fa01bd(max, nrand)
  @ccall libhsl.fa01bd_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa01bd_64(max, nrand)
  @ccall libhsl_subset_64.fa01bd_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa01cd(il, ir)
  @ccall libhsl.fa01cd_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01cd_64(il, ir)
  @ccall libhsl_subset_64.fa01cd_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01dd(il, ir)
  @ccall libhsl.fa01dd_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01dd_64(il, ir)
  @ccall libhsl_subset_64.fa01dd_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01ad(i)
  @ccall libhsl.fa01ad_(i::Ref{Cint})::Float64
end

function fa01ad_64(i)
  @ccall libhsl_subset_64.fa01ad_64_(i::Ref{Int64})::Float64
end

function fa01b(max, nrand)
  @ccall libhsl.fa01b_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa01b_64(max, nrand)
  @ccall libhsl_subset_64.fa01b_64_(max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa01c(il, ir)
  @ccall libhsl.fa01c_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01c_64(il, ir)
  @ccall libhsl_subset_64.fa01c_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01d(il, ir)
  @ccall libhsl.fa01d_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01d_64(il, ir)
  @ccall libhsl_subset_64.fa01d_64_(il::Ref{Int64}, ir::Ref{Int64})::Cvoid
end

function fa01a(i)
  @ccall libhsl.fa01a_(i::Ref{Cint})::Float32
end

function fa01a_64(i)
  @ccall libhsl_subset_64.fa01a_64_(i::Ref{Int64})::Float32
end
