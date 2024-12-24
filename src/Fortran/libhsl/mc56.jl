function mc56ac(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, ne, lip, ip, lind, ind,
                lvalue, value, info)
  @ccall libhsl.mc56ac_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8},
                        dattyp::Ptr{UInt8}, positn::Ref{UInt8}, orgniz::Ref{UInt8}, m::Ref{Cint},
                        nvec::Ref{Cint}, ne::Ref{Cint}, lip::Ref{Cint}, ip::Ptr{Cint},
                        lind::Ref{Cint}, ind::Ptr{Cint}, lvalue::Ref{Cint}, value::Ptr{ComplexF32},
                        info::Ptr{Cint}, 72::Csize_t, 8::Csize_t, 8::Csize_t, 3::Csize_t,
                        1::Csize_t, 1::Csize_t)::Cvoid
end

function mc56ad(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, ne, lip, ip, lind, ind,
                lvalue, value, info)
  @ccall libhsl.mc56ad_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8},
                        dattyp::Ptr{UInt8}, positn::Ref{UInt8}, orgniz::Ref{UInt8}, m::Ref{Cint},
                        nvec::Ref{Cint}, ne::Ref{Cint}, lip::Ref{Cint}, ip::Ptr{Cint},
                        lind::Ref{Cint}, ind::Ptr{Cint}, lvalue::Ref{Cint}, value::Ptr{Float64},
                        info::Ptr{Cint}, 72::Csize_t, 8::Csize_t, 8::Csize_t, 3::Csize_t,
                        1::Csize_t, 1::Csize_t)::Cvoid
end

function mc56ai(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, ne, lip, ip, lind, ind,
                lvalue, value, info)
  @ccall libhsl.mc56ai_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8},
                        dattyp::Ptr{UInt8}, positn::Ref{UInt8}, orgniz::Ref{UInt8}, m::Ref{Cint},
                        nvec::Ref{Cint}, ne::Ref{Cint}, lip::Ref{Cint}, ip::Ptr{Cint},
                        lind::Ref{Cint}, ind::Ptr{Cint}, lvalue::Ref{Cint}, value::Ptr{Cint},
                        info::Ptr{Cint}, 72::Csize_t, 8::Csize_t, 8::Csize_t, 3::Csize_t,
                        1::Csize_t, 1::Csize_t)::Cvoid
end

function mc56a(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, ne, lip, ip, lind, ind,
               lvalue, value, info)
  @ccall libhsl.mc56a_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8},
                       dattyp::Ptr{UInt8}, positn::Ref{UInt8}, orgniz::Ref{UInt8}, m::Ref{Cint},
                       nvec::Ref{Cint}, ne::Ref{Cint}, lip::Ref{Cint}, ip::Ptr{Cint},
                       lind::Ref{Cint}, ind::Ptr{Cint}, lvalue::Ref{Cint}, value::Ptr{Float32},
                       info::Ptr{Cint}, 72::Csize_t, 8::Csize_t, 8::Csize_t, 3::Csize_t, 1::Csize_t,
                       1::Csize_t)::Cvoid
end

function mc56az(icntl, title, key, caseid, dattyp, positn, orgniz, m, nvec, ne, lip, ip, lind, ind,
                lvalue, value, info)
  @ccall libhsl.mc56az_(icntl::Ptr{Cint}, title::Ptr{UInt8}, key::Ptr{UInt8}, caseid::Ptr{UInt8},
                        dattyp::Ptr{UInt8}, positn::Ref{UInt8}, orgniz::Ref{UInt8}, m::Ref{Cint},
                        nvec::Ref{Cint}, ne::Ref{Cint}, lip::Ref{Cint}, ip::Ptr{Cint},
                        lind::Ref{Cint}, ind::Ptr{Cint}, lvalue::Ref{Cint}, value::Ptr{ComplexF64},
                        info::Ptr{Cint}, 72::Csize_t, 8::Csize_t, 8::Csize_t, 3::Csize_t,
                        1::Csize_t, 1::Csize_t)::Cvoid
end
