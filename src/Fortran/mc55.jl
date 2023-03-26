function mc55ac(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, nauxd, ip, ind, value, info)
  @ccall libhsl.mc55ac_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8}, dattyp::Ptr{UInt8}, positn::Ptr{UInt8}, orgniz::Ptr{UInt8}, m::Ref{Cint}, nvec::Ref{Cint}, nauxd::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{ComplexF32}, info::Ptr{Cint})::Cvoid
end

function mc55bc(n, ind, fmtind, lunit)
  @ccall libhsl.mc55bc_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55cc(n, a, fmta, lunit)
  @ccall libhsl.mc55cc_(n::Ref{Cint}, a::Ptr{ComplexF32}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55dc(n, fmt)
  @ccall libhsl.mc55dc_(n::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc55ec(dec, valfmi, valfmo)
  @ccall libhsl.mc55ec_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8})::Cvoid
end

function mc55ad(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, nauxd, ip, ind, value, info)
  @ccall libhsl.mc55ad_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8}, dattyp::Ptr{UInt8}, positn::Ptr{UInt8}, orgniz::Ptr{UInt8}, m::Ref{Cint}, nvec::Ref{Cint}, nauxd::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function mc55bd(n, ind, fmtind, lunit)
  @ccall libhsl.mc55bd_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55cd(n, a, fmta, lunit)
  @ccall libhsl.mc55cd_(n::Ref{Cint}, a::Ptr{Float64}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55dd(n, fmt)
  @ccall libhsl.mc55dd_(n::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc55ed(dec, valfmi, valfmo)
  @ccall libhsl.mc55ed_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8})::Cvoid
end

function mc55ai(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, nauxd, ip, ind, value, info)
  @ccall libhsl.mc55ai_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8}, dattyp::Ptr{UInt8}, positn::Ptr{UInt8}, orgniz::Ptr{UInt8}, m::Ref{Cint}, nvec::Ref{Cint}, nauxd::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc55bi(n, ind, fmtind, lunit)
  @ccall libhsl.mc55bi_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55ci(n, a, fmta, lunit)
  @ccall libhsl.mc55ci_(n::Ref{Cint}, a::Ptr{Cint}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55di(n, fmt)
  @ccall libhsl.mc55di_(n::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc55ei(neltvl, value, valfmo)
  @ccall libhsl.mc55ei_(neltvl::Ref{Cint}, value::Ptr{Cint}, valfmo::Ptr{UInt8})::Cvoid
end

function mc55a(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, nauxd, ip, ind, value, info)
  @ccall libhsl.mc55a_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8}, dattyp::Ptr{UInt8}, positn::Ptr{UInt8}, orgniz::Ptr{UInt8}, m::Ref{Cint}, nvec::Ref{Cint}, nauxd::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function mc55b(n, ind, fmtind, lunit)
  @ccall libhsl.mc55b_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55c(n, a, fmta, lunit)
  @ccall libhsl.mc55c_(n::Ref{Cint}, a::Ptr{Float32}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55d(n, fmt)
  @ccall libhsl.mc55d_(n::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc55e(dec, valfmi, valfmo)
  @ccall libhsl.mc55e_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8})::Cvoid
end

function mc55az(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, nauxd, ip, ind, value, info)
  @ccall libhsl.mc55az_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8}, dattyp::Ptr{UInt8}, positn::Ptr{UInt8}, orgniz::Ptr{UInt8}, m::Ref{Cint}, nvec::Ref{Cint}, nauxd::Ref{Cint}, ip::Ptr{Cint}, ind::Ptr{Cint}, value::Ptr{ComplexF64}, info::Ptr{Cint})::Cvoid
end

function mc55bz(n, ind, fmtind, lunit)
  @ccall libhsl.mc55bz_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55cz(n, a, fmta, lunit)
  @ccall libhsl.mc55cz_(n::Ref{Cint}, a::Ptr{ComplexF64}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc55dz(n, fmt)
  @ccall libhsl.mc55dz_(n::Ref{Cint}, fmt::Ptr{UInt8})::Cvoid
end

function mc55ez(dec, valfmi, valfmo)
  @ccall libhsl.mc55ez_(dec::Ref{Cint}, valfmi::Ptr{UInt8}, valfmo::Ptr{UInt8})::Cvoid
end
