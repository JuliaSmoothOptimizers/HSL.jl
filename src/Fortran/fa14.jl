function fa14bd(ix, max, nrand)
  @ccall libhsl.fa14bd_(ix::Ref{Cint}, max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa14bd_64(ix, max, nrand)
  @ccall libhsl_subset_64.fa14bd_64_(ix::Ref{Int64}, max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa14cd(ix, igen)
  @ccall libhsl.fa14cd_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14cd_64(ix, igen)
  @ccall libhsl_subset_64.fa14cd_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14dd(ix, igen)
  @ccall libhsl.fa14dd_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14dd_64(ix, igen)
  @ccall libhsl_subset_64.fa14dd_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14id(ix)
  @ccall libhsl.fa14id_(ix::Ref{Cint})::Cvoid
end

function fa14id_64(ix)
  @ccall libhsl_subset_64.fa14id_64_(ix::Ref{Int64})::Cvoid
end

function fa14ad(ix, i)
  @ccall libhsl.fa14ad_(ix::Ref{Cint}, i::Ref{Cint})::Float64
end

function fa14ad_64(ix, i)
  @ccall libhsl_subset_64.fa14ad_64_(ix::Ref{Int64}, i::Ref{Int64})::Float64
end

function fa14b(ix, max, nrand)
  @ccall libhsl.fa14b_(ix::Ref{Cint}, max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa14b_64(ix, max, nrand)
  @ccall libhsl_subset_64.fa14b_64_(ix::Ref{Int64}, max::Ref{Int64}, nrand::Ref{Int64})::Cvoid
end

function fa14c(ix, igen)
  @ccall libhsl.fa14c_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14c_64(ix, igen)
  @ccall libhsl_subset_64.fa14c_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14d(ix, igen)
  @ccall libhsl.fa14d_(ix::Ref{Cint}, igen::Ref{Cint})::Cvoid
end

function fa14d_64(ix, igen)
  @ccall libhsl_subset_64.fa14d_64_(ix::Ref{Int64}, igen::Ref{Int64})::Cvoid
end

function fa14i(ix)
  @ccall libhsl.fa14i_(ix::Ref{Cint})::Cvoid
end

function fa14i_64(ix)
  @ccall libhsl_subset_64.fa14i_64_(ix::Ref{Int64})::Cvoid
end

function fa14a(ix, i)
  @ccall libhsl.fa14a_(ix::Ref{Cint}, i::Ref{Cint})::Float32
end

function fa14a_64(ix, i)
  @ccall libhsl_subset_64.fa14a_64_(ix::Ref{Int64}, i::Ref{Int64})::Float32
end
