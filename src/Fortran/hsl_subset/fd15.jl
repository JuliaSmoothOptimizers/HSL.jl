function fd15ar(::Type{Float32}, ::Type{Int32}, t)
  @ccall libhsl_subset.fd15a_(t::Ref{UInt8}, 1::Csize_t)::Float32
end

function fd15ar(::Type{Float64}, ::Type{Int32}, t)
  @ccall libhsl_subset.fd15ad_(t::Ref{UInt8}, 1::Csize_t)::Float64
end

function fd15ar(::Type{Float128}, ::Type{Int32}, t)
  @ccall libhsl_subset.fd15aq_(t::Ref{UInt8}, 1::Csize_t)::Float128
end

function fd15ar(::Type{Float32}, ::Type{Int64}, t)
  @ccall libhsl_subset_64.fd15a_64_(t::Ref{UInt8}, 1::Csize_t)::Float32
end

function fd15ar(::Type{Float64}, ::Type{Int64}, t)
  @ccall libhsl_subset_64.fd15ad_64_(t::Ref{UInt8}, 1::Csize_t)::Float64
end

function fd15ar(::Type{Float128}, ::Type{Int64}, t)
  @ccall libhsl_subset_64.fd15aq_64_(t::Ref{UInt8}, 1::Csize_t)::Float128
end
