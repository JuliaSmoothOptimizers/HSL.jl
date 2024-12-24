function mc54ar(::Type{Float32}, ::Type{Int32}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset.mc54a_(icntl::Ptr{Int32}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Int32},
                              n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, ind::Ptr{Int32},
                              value::Ptr{Float32}, iw::Ptr{Int32}, info::Ptr{Int32}, 72::Csize_t,
                              8::Csize_t)::Cvoid
end

function mc54ar(::Type{Float64}, ::Type{Int32}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset.mc54ad_(icntl::Ptr{Int32}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Int32},
                               n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, ind::Ptr{Int32},
                               value::Ptr{Float64}, iw::Ptr{Int32}, info::Ptr{Int32}, 72::Csize_t,
                               8::Csize_t)::Cvoid
end

function mc54ar(::Type{Float128}, ::Type{Int32}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset.mc54aq_(icntl::Ptr{Int32}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Int32},
                               n::Ref{Int32}, ne::Ref{Int32}, ip::Ptr{Int32}, ind::Ptr{Int32},
                               value::Ptr{Float128}, iw::Ptr{Int32}, info::Ptr{Int32}, 72::Csize_t,
                               8::Csize_t)::Cvoid
end

function mc54ar(::Type{Float32}, ::Type{Int64}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset_64.mc54a_64_(icntl::Ptr{Int64}, title::Ptr{UInt8}, key::Ptr{UInt8},
                                    m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                    ind::Ptr{Int64}, value::Ptr{Float32}, iw::Ptr{Int64},
                                    info::Ptr{Int64}, 72::Csize_t, 8::Csize_t)::Cvoid
end

function mc54ar(::Type{Float64}, ::Type{Int64}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset_64.mc54ad_64_(icntl::Ptr{Int64}, title::Ptr{UInt8}, key::Ptr{UInt8},
                                     m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     ind::Ptr{Int64}, value::Ptr{Float64}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, 72::Csize_t, 8::Csize_t)::Cvoid
end

function mc54ar(::Type{Float128}, ::Type{Int64}, icntl, title, key, m, n, ne, ip, ind, value, iw,
                info)
  @ccall libhsl_subset_64.mc54aq_64_(icntl::Ptr{Int64}, title::Ptr{UInt8}, key::Ptr{UInt8},
                                     m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     ind::Ptr{Int64}, value::Ptr{Float128}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, 72::Csize_t, 8::Csize_t)::Cvoid
end

function mc54br(::Type{Float32}, ::Type{Int32}, n, ind, fmtind, lunit)
  @ccall libhsl_subset.mc54b_(n::Ref{Int32}, ind::Ptr{Int32}, fmtind::Ptr{UInt8}, lunit::Ref{Int32},
                              16::Csize_t)::Cvoid
end

function mc54br(::Type{Float64}, ::Type{Int32}, n, ind, fmtind, lunit)
  @ccall libhsl_subset.mc54bd_(n::Ref{Int32}, ind::Ptr{Int32}, fmtind::Ptr{UInt8},
                               lunit::Ref{Int32}, 16::Csize_t)::Cvoid
end

function mc54br(::Type{Float128}, ::Type{Int32}, n, ind, fmtind, lunit)
  @ccall libhsl_subset.mc54bq_(n::Ref{Int32}, ind::Ptr{Int32}, fmtind::Ptr{UInt8},
                               lunit::Ref{Int32}, 16::Csize_t)::Cvoid
end

function mc54br(::Type{Float32}, ::Type{Int64}, n, ind, fmtind, lunit)
  @ccall libhsl_subset_64.mc54b_64_(n::Ref{Int64}, ind::Ptr{Int64}, fmtind::Ptr{UInt8},
                                    lunit::Ref{Int64}, 16::Csize_t)::Cvoid
end

function mc54br(::Type{Float64}, ::Type{Int64}, n, ind, fmtind, lunit)
  @ccall libhsl_subset_64.mc54bd_64_(n::Ref{Int64}, ind::Ptr{Int64}, fmtind::Ptr{UInt8},
                                     lunit::Ref{Int64}, 16::Csize_t)::Cvoid
end

function mc54br(::Type{Float128}, ::Type{Int64}, n, ind, fmtind, lunit)
  @ccall libhsl_subset_64.mc54bq_64_(n::Ref{Int64}, ind::Ptr{Int64}, fmtind::Ptr{UInt8},
                                     lunit::Ref{Int64}, 16::Csize_t)::Cvoid
end

function mc54cr(::Type{Float32}, ::Type{Int32}, n, a, fmta, lunit)
  @ccall libhsl_subset.mc54c_(n::Ref{Int32}, a::Ptr{Float32}, fmta::Ptr{UInt8}, lunit::Ref{Int32},
                              20::Csize_t)::Cvoid
end

function mc54cr(::Type{Float64}, ::Type{Int32}, n, a, fmta, lunit)
  @ccall libhsl_subset.mc54cd_(n::Ref{Int32}, a::Ptr{Float64}, fmta::Ptr{UInt8}, lunit::Ref{Int32},
                               20::Csize_t)::Cvoid
end

function mc54cr(::Type{Float128}, ::Type{Int32}, n, a, fmta, lunit)
  @ccall libhsl_subset.mc54cq_(n::Ref{Int32}, a::Ptr{Float128}, fmta::Ptr{UInt8}, lunit::Ref{Int32},
                               20::Csize_t)::Cvoid
end

function mc54cr(::Type{Float32}, ::Type{Int64}, n, a, fmta, lunit)
  @ccall libhsl_subset_64.mc54c_64_(n::Ref{Int64}, a::Ptr{Float32}, fmta::Ptr{UInt8},
                                    lunit::Ref{Int64}, 20::Csize_t)::Cvoid
end

function mc54cr(::Type{Float64}, ::Type{Int64}, n, a, fmta, lunit)
  @ccall libhsl_subset_64.mc54cd_64_(n::Ref{Int64}, a::Ptr{Float64}, fmta::Ptr{UInt8},
                                     lunit::Ref{Int64}, 20::Csize_t)::Cvoid
end

function mc54cr(::Type{Float128}, ::Type{Int64}, n, a, fmta, lunit)
  @ccall libhsl_subset_64.mc54cq_64_(n::Ref{Int64}, a::Ptr{Float128}, fmta::Ptr{UInt8},
                                     lunit::Ref{Int64}, 20::Csize_t)::Cvoid
end

function mc54dr(::Type{Float32}, ::Type{Int32}, n, nlin, fmt)
  @ccall libhsl_subset.mc54d_(n::Ref{Int32}, nlin::Ref{Int32}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54dr(::Type{Float64}, ::Type{Int32}, n, nlin, fmt)
  @ccall libhsl_subset.mc54dd_(n::Ref{Int32}, nlin::Ref{Int32}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54dr(::Type{Float128}, ::Type{Int32}, n, nlin, fmt)
  @ccall libhsl_subset.mc54dq_(n::Ref{Int32}, nlin::Ref{Int32}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54dr(::Type{Float32}, ::Type{Int64}, n, nlin, fmt)
  @ccall libhsl_subset_64.mc54d_64_(n::Ref{Int64}, nlin::Ref{Int64}, fmt::Ptr{UInt8},
                                    16::Csize_t)::Cvoid
end

function mc54dr(::Type{Float64}, ::Type{Int64}, n, nlin, fmt)
  @ccall libhsl_subset_64.mc54dd_64_(n::Ref{Int64}, nlin::Ref{Int64}, fmt::Ptr{UInt8},
                                     16::Csize_t)::Cvoid
end

function mc54dr(::Type{Float128}, ::Type{Int64}, n, nlin, fmt)
  @ccall libhsl_subset_64.mc54dq_64_(n::Ref{Int64}, nlin::Ref{Int64}, fmt::Ptr{UInt8},
                                     16::Csize_t)::Cvoid
end

function mc54er(::Type{Float32}, ::Type{Int32}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset.mc54e_(dec::Ref{Int32}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                              valcrd::Ref{Int32}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54er(::Type{Float64}, ::Type{Int32}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset.mc54ed_(dec::Ref{Int32}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                               valcrd::Ref{Int32}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54er(::Type{Float128}, ::Type{Int32}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset.mc54eq_(dec::Ref{Int32}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                               valcrd::Ref{Int32}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54er(::Type{Float32}, ::Type{Int64}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset_64.mc54e_64_(dec::Ref{Int64}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                                    valcrd::Ref{Int64}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54er(::Type{Float64}, ::Type{Int64}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset_64.mc54ed_64_(dec::Ref{Int64}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                                     valcrd::Ref{Int64}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54er(::Type{Float128}, ::Type{Int64}, dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset_64.mc54eq_64_(dec::Ref{Int64}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                                     valcrd::Ref{Int64}, 20::Csize_t, 20::Csize_t)::Cvoid
end
