function fa01bd(max, nrand)
  @ccall libhsl.fa01bd_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa01cd(il, ir)
  @ccall libhsl.fa01cd_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01dd(il, ir)
  @ccall libhsl.fa01dd_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01ad(i)
  @ccall libhsl.fa01ad_(i::Ref{Cint})::Float64
end

function fa01b(max, nrand)
  @ccall libhsl.fa01b_(max::Ref{Cint}, nrand::Ref{Cint})::Cvoid
end

function fa01c(il, ir)
  @ccall libhsl.fa01c_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01d(il, ir)
  @ccall libhsl.fa01d_(il::Ref{Cint}, ir::Ref{Cint})::Cvoid
end

function fa01a(i)
  @ccall libhsl.fa01a_(i::Ref{Cint})::Float32
end
