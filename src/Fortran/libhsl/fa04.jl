function fa04bd(max, nrand)
  @ccall libhsl.fa04bd_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa04cd(igen)
  @ccall libhsl.fa04cd_(igen::Ref{Cint})::Cvoid
end

function fa04dd(igen)
  @ccall libhsl.fa04dd_(igen::Ref{Cint})::Cvoid
end

function fa04ad(i)
  @ccall libhsl.fa04ad_(i::Ref{Cint})::Float64
end

function fa04b(max, nrand)
  @ccall libhsl.fa04b_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa04c(igen)
  @ccall libhsl.fa04c_(igen::Ref{Cint})::Cvoid
end

function fa04d(igen)
  @ccall libhsl.fa04d_(igen::Ref{Cint})::Cvoid
end

function fa04a(i)
  @ccall libhsl.fa04a_(i::Ref{Cint})::Float32
end
