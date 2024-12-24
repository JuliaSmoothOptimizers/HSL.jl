function fd05ad(inum)
  @ccall libhsl.fd05ad_(inum::Ref{Cint})::Float64
end

function fd05a(inum)
  @ccall libhsl.fd05a_(inum::Ref{Cint})::Float32
end
