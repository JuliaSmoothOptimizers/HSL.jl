function mc54ac(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ac_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint},
                        n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint},
                        value::Ptr{ComplexF32}, iw::Ptr{Cint}, info::Ptr{Cint}, 72::Csize_t,
                        8::Csize_t)::Cvoid
end

function mc54bc(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bc_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                        16::Csize_t)::Cvoid
end

function mc54cc(n, a, fmta, lunit)
  @ccall libhsl.mc54cc_(n::Ref{Cint}, a::Ptr{ComplexF32}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mc54dc(n, nlin, fmt)
  @ccall libhsl.mc54dc_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54ec(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ec_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint},
                        20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54ad(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ad_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint},
                        n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint},
                        value::Ptr{Float64}, iw::Ptr{Cint}, info::Ptr{Cint}, 72::Csize_t,
                        8::Csize_t)::Cvoid
end

function mc54ad_64(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl_subset_64.mc54ad_64_(icntl::Ptr{Int64}, title::Ptr{UInt8}, key::Ptr{UInt8},
                                     m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                     ind::Ptr{Int64}, value::Ptr{Float64}, iw::Ptr{Int64},
                                     info::Ptr{Int64}, 72::Csize_t, 8::Csize_t)::Cvoid
end

function mc54bd(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bd_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                        16::Csize_t)::Cvoid
end

function mc54bd_64(n, ind, fmtind, lunit)
  @ccall libhsl_subset_64.mc54bd_64_(n::Ref{Int64}, ind::Ptr{Int64}, fmtind::Ptr{UInt8},
                                     lunit::Ref{Int64}, 16::Csize_t)::Cvoid
end

function mc54cd(n, a, fmta, lunit)
  @ccall libhsl.mc54cd_(n::Ref{Cint}, a::Ptr{Float64}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mc54cd_64(n, a, fmta, lunit)
  @ccall libhsl_subset_64.mc54cd_64_(n::Ref{Int64}, a::Ptr{Float64}, fmta::Ptr{UInt8},
                                     lunit::Ref{Int64}, 20::Csize_t)::Cvoid
end

function mc54dd(n, nlin, fmt)
  @ccall libhsl.mc54dd_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54dd_64(n, nlin, fmt)
  @ccall libhsl_subset_64.mc54dd_64_(n::Ref{Int64}, nlin::Ref{Int64}, fmt::Ptr{UInt8},
                                     16::Csize_t)::Cvoid
end

function mc54ed(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ed_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint},
                        20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54ed_64(dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset_64.mc54ed_64_(dec::Ref{Int64}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                                     valcrd::Ref{Int64}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54ai(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ai_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint},
                        n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint},
                        value::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint}, 72::Csize_t,
                        8::Csize_t)::Cvoid
end

function mc54bi(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bi_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                        16::Csize_t)::Cvoid
end

function mc54ci(n, a, fmta, lunit)
  @ccall libhsl.mc54ci_(n::Ref{Cint}, a::Ptr{Cint}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mc54di(n, nlin, fmt)
  @ccall libhsl.mc54di_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54ei(neltvl, value, valfmo, valcrd)
  @ccall libhsl.mc54ei_(neltvl::Ref{Cint}, value::Ptr{Cint}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mc54a(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54a_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint},
                       n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint},
                       value::Ptr{Float32}, iw::Ptr{Cint}, info::Ptr{Cint}, 72::Csize_t,
                       8::Csize_t)::Cvoid
end

function mc54a_64(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl_subset_64.mc54a_64_(icntl::Ptr{Int64}, title::Ptr{UInt8}, key::Ptr{UInt8},
                                    m::Ref{Int64}, n::Ref{Int64}, ne::Ref{Int64}, ip::Ptr{Int64},
                                    ind::Ptr{Int64}, value::Ptr{Float32}, iw::Ptr{Int64},
                                    info::Ptr{Int64}, 72::Csize_t, 8::Csize_t)::Cvoid
end

function mc54b(n, ind, fmtind, lunit)
  @ccall libhsl.mc54b_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                       16::Csize_t)::Cvoid
end

function mc54b_64(n, ind, fmtind, lunit)
  @ccall libhsl_subset_64.mc54b_64_(n::Ref{Int64}, ind::Ptr{Int64}, fmtind::Ptr{UInt8},
                                    lunit::Ref{Int64}, 16::Csize_t)::Cvoid
end

function mc54c(n, a, fmta, lunit)
  @ccall libhsl.mc54c_(n::Ref{Cint}, a::Ptr{Float32}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                       20::Csize_t)::Cvoid
end

function mc54c_64(n, a, fmta, lunit)
  @ccall libhsl_subset_64.mc54c_64_(n::Ref{Int64}, a::Ptr{Float32}, fmta::Ptr{UInt8},
                                    lunit::Ref{Int64}, 20::Csize_t)::Cvoid
end

function mc54d(n, nlin, fmt)
  @ccall libhsl.mc54d_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54d_64(n, nlin, fmt)
  @ccall libhsl_subset_64.mc54d_64_(n::Ref{Int64}, nlin::Ref{Int64}, fmt::Ptr{UInt8},
                                    16::Csize_t)::Cvoid
end

function mc54e(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54e_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint},
                       20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54e_64(dec, valfmi, valfmo, valcrd)
  @ccall libhsl_subset_64.mc54e_64_(dec::Ref{Int64}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8},
                                    valcrd::Ref{Int64}, 20::Csize_t, 20::Csize_t)::Cvoid
end

function mc54az(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54az_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint},
                        n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint},
                        value::Ptr{ComplexF64}, iw::Ptr{Cint}, info::Ptr{Cint}, 72::Csize_t,
                        8::Csize_t)::Cvoid
end

function mc54bz(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bz_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                        16::Csize_t)::Cvoid
end

function mc54cz(n, a, fmta, lunit)
  @ccall libhsl.mc54cz_(n::Ref{Cint}, a::Ptr{ComplexF64}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mc54dz(n, nlin, fmt)
  @ccall libhsl.mc54dz_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8}, 16::Csize_t)::Cvoid
end

function mc54ez(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ez_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint},
                        20::Csize_t, 20::Csize_t)::Cvoid
end
