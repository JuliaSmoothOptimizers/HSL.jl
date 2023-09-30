function fd15ad(t)
  @ccall libhsl.fd15ad_(t::Ref{UInt8}, 1::Csize_t)::Float64
end

function fd15a(t)
  @ccall libhsl.fd15a_(t::Ref{UInt8}, 1::Csize_t)::Float32
end
