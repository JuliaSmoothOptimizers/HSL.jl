function id05ad(inum)
  @ccall libhsl.id05ad_(inum::Ref{Cint})::Cint
end

function id05a(inum)
  @ccall libhsl.id05a_(inum::Ref{Cint})::Cint
end
