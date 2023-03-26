function mc54ac(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ac_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{ComplexF32}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc54bc(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bc_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54cc(n, a, fmta, lunit)
  @ccall libhsl.mc54cc_(n::Ref{Cint}, a::Ptr{ComplexF32}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54dc(n, nlin, fmt)
  @ccall libhsl.mc54dc_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc54ec(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ec_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint})::Cvoid
end

function mc54ad(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ad_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Float64}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc54bd(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bd_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54cd(n, a, fmta, lunit)
  @ccall libhsl.mc54cd_(n::Ref{Cint}, a::Ptr{Float64}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54dd(n, nlin, fmt)
  @ccall libhsl.mc54dd_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc54ed(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ed_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint})::Cvoid
end

function mc54ai(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54ai_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc54bi(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bi_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54ci(n, a, fmta, lunit)
  @ccall libhsl.mc54ci_(n::Ref{Cint}, a::Ptr{Cint}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54di(n, nlin, fmt)
  @ccall libhsl.mc54di_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc54ei(neltvl, value, valfmo, valcrd)
  @ccall libhsl.mc54ei_(neltvl::Ref{Cint}, value::Ptr{Cint}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint})::Cvoid
end

function mc54a(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54a_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Float32}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc54b(n, ind, fmtind, lunit)
  @ccall libhsl.mc54b_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54c(n, a, fmta, lunit)
  @ccall libhsl.mc54c_(n::Ref{Cint}, a::Ptr{Float32}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54d(n, nlin, fmt)
  @ccall libhsl.mc54d_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc54e(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54e_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint})::Cvoid
end

function mc54az(icntl, title, key, m, n, ne, ip, ind, value, iw, info)
  @ccall libhsl.mc54az_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{ComplexF64}, iw::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc54bz(n, ind, fmtind, lunit)
  @ccall libhsl.mc54bz_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54cz(n, a, fmta, lunit)
  @ccall libhsl.mc54cz_(n::Ref{Cint}, a::Ptr{ComplexF64}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc54dz(n, nlin, fmt)
  @ccall libhsl.mc54dz_(n::Ref{Cint}, nlin::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc54ez(dec, valfmi, valfmo, valcrd)
  @ccall libhsl.mc54ez_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8}, valcrd::Ref{Cint})::Cvoid
end
