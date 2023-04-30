function fd15ad(t)
    @ccall libhsl.fd15ad_(t::Ref{UInt8})::Float64
end

function fd15a(t)
    @ccall libhsl.fd15a_(t::Ref{UInt8})::Float32
end
