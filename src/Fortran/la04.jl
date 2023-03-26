function la04ad(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, ix, jx, x, z, g, rinfo,
                ws, lws, iws, liws)
    @ccall libhsl.la04ad_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float64}, c::Ptr{Float64},
                          bnd::Ptr{Float64}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                          cntl::Ptr{Float64}, ix::Ptr{Cint}, jx::Ptr{Cint}, x::Ptr{Float64},
                          z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                          ws::Ptr{Float64}, lws::Ref{Cint}, iws::Ptr{Cint},
                          liws::Ref{Cint})::Cvoid
end

function la04id(cntl)
    @ccall libhsl.la04id_(cntl::Ptr{Float64})::Cvoid
end

function la04bd(a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo, iw, irow, pv, y)
    @ccall libhsl.la04bd_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, bnd::Ptr{Float64}, kb::Ref{Cint},
                          cntl::Ptr{Float64}, ix::Ptr{Cint}, g::Ptr{Float64},
                          rinfo::Ptr{Float64}, iw::Ptr{Cint}, irow::Ptr{Cint},
                          pv::Ptr{Float64}, y::Ptr{Float64})::Cvoid
end

function la04cd(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, ix, jx, g, rinfo, x, z,
                ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
    @ccall libhsl.la04cd_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float64}, c::Ptr{Float64},
                          bnd::Ptr{Float64}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                          cntl::Ptr{Float64}, ix::Ptr{Cint}, jx::Ptr{Cint}, g::Ptr{Float64},
                          rinfo::Ptr{Float64}, x::Ptr{Float64}, z::Ptr{Float64},
                          ba::Ptr{Float64}, ib::Ref{Cint}, indb::Ptr{Cint}, ipb::Ptr{Cint},
                          iwb::Ptr{Cint}, v::Ptr{Float64}, w::Ptr{Float64}, y::Ptr{Float64},
                          yy::Ptr{Float64}, i15::Ptr{Cint}, c15::Ptr{Float64},
                          iseed::Ref{Cint})::Cvoid
end

function la04dd(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, x, ix, jx, z, g, rinfo,
                ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
    @ccall libhsl.la04dd_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float64}, c::Ptr{Float64},
                          bnd::Ptr{Float64}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                          cntl::Ptr{Float64}, x::Ptr{Float64}, ix::Ptr{Cint}, jx::Ptr{Cint},
                          z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                          ba::Ptr{Float64}, indb::Ptr{Cint}, ipb::Ptr{Cint}, iwb::Ptr{Cint},
                          w::Ptr{Float64}, v::Ptr{Float64}, ir::Ptr{Cint}, y::Ptr{Float64},
                          yy::Ptr{Float64}, ib::Ref{Cint}, i15::Ptr{Cint},
                          c15::Ptr{Float64})::Cvoid
end

function la04ed(a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba, indb, ipb, iwb, w, y,
                ib, trans, i15, c15)
    @ccall libhsl.la04ed_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float64}, x::Ptr{Float64},
                          dx::Ref{Float64}, ix::Ptr{Cint}, jin::Ref{Cint},
                          rinfo::Ptr{Float64}, ba::Ptr{Float64}, indb::Ptr{Cint},
                          ipb::Ptr{Cint}, iwb::Ptr{Cint}, w::Ptr{Float64}, y::Ptr{Float64},
                          ib::Ref{Cint}, trans::Ref{Cint}, i15::Ptr{Cint},
                          c15::Ptr{Float64})::Cvoid
end

function la04sd(a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs, ws, jcn)
    @ccall libhsl.la04sd_(a::Ptr{Float64}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                          m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float64}, c::Ptr{Float64},
                          bnd::Ptr{Float64}, kb::Ref{Cint}, sigma::Ref{Float64},
                          rs::Ptr{Float64}, cs::Ptr{Float64}, ws::Ptr{Float64},
                          jcn::Ptr{Cint})::Cvoid
end

function la04a(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, ix, jx, x, z, g, rinfo,
               ws, lws, iws, liws)
    @ccall libhsl.la04a_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float32}, c::Ptr{Float32},
                         bnd::Ptr{Float32}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                         cntl::Ptr{Float32}, ix::Ptr{Cint}, jx::Ptr{Cint}, x::Ptr{Float32},
                         z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                         ws::Ptr{Float32}, lws::Ref{Cint}, iws::Ptr{Cint},
                         liws::Ref{Cint})::Cvoid
end

function la04i(cntl)
    @ccall libhsl.la04i_(cntl::Ptr{Float32})::Cvoid
end

function la04b(a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo, iw, irow, pv, y)
    @ccall libhsl.la04b_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, bnd::Ptr{Float32}, kb::Ref{Cint},
                         cntl::Ptr{Float32}, ix::Ptr{Cint}, g::Ptr{Float32},
                         rinfo::Ptr{Float32}, iw::Ptr{Cint}, irow::Ptr{Cint},
                         pv::Ptr{Float32}, y::Ptr{Float32})::Cvoid
end

function la04c(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, ix, jx, g, rinfo, x, z,
               ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
    @ccall libhsl.la04c_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float32}, c::Ptr{Float32},
                         bnd::Ptr{Float32}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                         cntl::Ptr{Float32}, ix::Ptr{Cint}, jx::Ptr{Cint}, g::Ptr{Float32},
                         rinfo::Ptr{Float32}, x::Ptr{Float32}, z::Ptr{Float32},
                         ba::Ptr{Float32}, ib::Ref{Cint}, indb::Ptr{Cint}, ipb::Ptr{Cint},
                         iwb::Ptr{Cint}, v::Ptr{Float32}, w::Ptr{Float32}, y::Ptr{Float32},
                         yy::Ptr{Float32}, i15::Ptr{Cint}, c15::Ptr{Float32},
                         iseed::Ref{Cint})::Cvoid
end

function la04d(a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl, x, ix, jx, z, g, rinfo,
               ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
    @ccall libhsl.la04d_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float32}, c::Ptr{Float32},
                         bnd::Ptr{Float32}, kb::Ref{Cint}, lb::Ref{Cint}, job::Ref{Cint},
                         cntl::Ptr{Float32}, x::Ptr{Float32}, ix::Ptr{Cint}, jx::Ptr{Cint},
                         z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                         ba::Ptr{Float32}, indb::Ptr{Cint}, ipb::Ptr{Cint}, iwb::Ptr{Cint},
                         w::Ptr{Float32}, v::Ptr{Float32}, ir::Ptr{Cint}, y::Ptr{Float32},
                         yy::Ptr{Float32}, ib::Ref{Cint}, i15::Ptr{Cint},
                         c15::Ptr{Float32})::Cvoid
end

function la04e(a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba, indb, ipb, iwb, w, y, ib,
               trans, i15, c15)
    @ccall libhsl.la04e_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float32}, x::Ptr{Float32},
                         dx::Ref{Float32}, ix::Ptr{Cint}, jin::Ref{Cint},
                         rinfo::Ptr{Float32}, ba::Ptr{Float32}, indb::Ptr{Cint},
                         ipb::Ptr{Cint}, iwb::Ptr{Cint}, w::Ptr{Float32}, y::Ptr{Float32},
                         ib::Ref{Cint}, trans::Ref{Cint}, i15::Ptr{Cint},
                         c15::Ptr{Float32})::Cvoid
end

function la04s(a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs, ws, jcn)
    @ccall libhsl.la04s_(a::Ptr{Float32}, la::Ref{Cint}, irn::Ptr{Cint}, ip::Ptr{Cint},
                         m::Ref{Cint}, n::Ref{Cint}, b::Ptr{Float32}, c::Ptr{Float32},
                         bnd::Ptr{Float32}, kb::Ref{Cint}, sigma::Ref{Float32},
                         rs::Ptr{Float32}, cs::Ptr{Float32}, ws::Ptr{Float32},
                         jcn::Ptr{Cint})::Cvoid
end
