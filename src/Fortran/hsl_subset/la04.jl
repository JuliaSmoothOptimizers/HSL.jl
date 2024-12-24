function la04ar(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset.la04a_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float32}, c::Ptr{Float32},
                              bnd::Ptr{Float32}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                              cntl::Ptr{Float32}, ix::Ptr{Int32}, jx::Ptr{Int32}, x::Ptr{Float32},
                              z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                              ws::Ptr{Float32}, lws::Ref{Int32}, iws::Ptr{Int32},
                              liws::Ref{Int32})::Cvoid
end

function la04ar(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset.la04ad_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float64}, c::Ptr{Float64},
                               bnd::Ptr{Float64}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float64}, ix::Ptr{Int32}, jx::Ptr{Int32}, x::Ptr{Float64},
                               z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                               ws::Ptr{Float64}, lws::Ref{Int32}, iws::Ptr{Int32},
                               liws::Ref{Int32})::Cvoid
end

function la04ar(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset.la04aq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float128}, c::Ptr{Float128},
                               bnd::Ptr{Float128}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float128}, ix::Ptr{Int32}, jx::Ptr{Int32},
                               x::Ptr{Float128}, z::Ptr{Float128}, g::Ptr{Float128},
                               rinfo::Ptr{Float128}, ws::Ptr{Float128}, lws::Ref{Int32},
                               iws::Ptr{Int32}, liws::Ref{Int32})::Cvoid
end

function la04ar(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset_64.la04a_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    c::Ptr{Float32}, bnd::Ptr{Float32}, kb::Ref{Int64},
                                    lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float32},
                                    ix::Ptr{Int64}, jx::Ptr{Int64}, x::Ptr{Float32},
                                    z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                                    ws::Ptr{Float32}, lws::Ref{Int64}, iws::Ptr{Int64},
                                    liws::Ref{Int64})::Cvoid
end

function la04ar(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset_64.la04ad_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     c::Ptr{Float64}, bnd::Ptr{Float64}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float64},
                                     ix::Ptr{Int64}, jx::Ptr{Int64}, x::Ptr{Float64},
                                     z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                                     ws::Ptr{Float64}, lws::Ref{Int64}, iws::Ptr{Int64},
                                     liws::Ref{Int64})::Cvoid
end

function la04ar(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, x, z, g, rinfo, ws, lws, iws, liws)
  @ccall libhsl_subset_64.la04aq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     c::Ptr{Float128}, bnd::Ptr{Float128}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float128},
                                     ix::Ptr{Int64}, jx::Ptr{Int64}, x::Ptr{Float128},
                                     z::Ptr{Float128}, g::Ptr{Float128}, rinfo::Ptr{Float128},
                                     ws::Ptr{Float128}, lws::Ref{Int64}, iws::Ptr{Int64},
                                     liws::Ref{Int64})::Cvoid
end

function la04ir(::Type{Float32}, ::Type{Int32}, cntl)
  @ccall libhsl_subset.la04i_(cntl::Ptr{Float32})::Cvoid
end

function la04ir(::Type{Float64}, ::Type{Int32}, cntl)
  @ccall libhsl_subset.la04id_(cntl::Ptr{Float64})::Cvoid
end

function la04ir(::Type{Float128}, ::Type{Int32}, cntl)
  @ccall libhsl_subset.la04iq_(cntl::Ptr{Float128})::Cvoid
end

function la04ir(::Type{Float32}, ::Type{Int64}, cntl)
  @ccall libhsl_subset_64.la04i_64_(cntl::Ptr{Float32})::Cvoid
end

function la04ir(::Type{Float64}, ::Type{Int64}, cntl)
  @ccall libhsl_subset_64.la04id_64_(cntl::Ptr{Float64})::Cvoid
end

function la04ir(::Type{Float128}, ::Type{Int64}, cntl)
  @ccall libhsl_subset_64.la04iq_64_(cntl::Ptr{Float128})::Cvoid
end

function la04br(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset.la04b_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, bnd::Ptr{Float32}, kb::Ref{Int32},
                              cntl::Ptr{Float32}, ix::Ptr{Int32}, g::Ptr{Float32},
                              rinfo::Ptr{Float32}, iw::Ptr{Int32}, irow::Ptr{Int32},
                              pv::Ptr{Float32}, y::Ptr{Float32})::Cvoid
end

function la04br(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset.la04bd_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, bnd::Ptr{Float64}, kb::Ref{Int32},
                               cntl::Ptr{Float64}, ix::Ptr{Int32}, g::Ptr{Float64},
                               rinfo::Ptr{Float64}, iw::Ptr{Int32}, irow::Ptr{Int32},
                               pv::Ptr{Float64}, y::Ptr{Float64})::Cvoid
end

function la04br(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset.la04bq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, bnd::Ptr{Float128}, kb::Ref{Int32},
                               cntl::Ptr{Float128}, ix::Ptr{Int32}, g::Ptr{Float128},
                               rinfo::Ptr{Float128}, iw::Ptr{Int32}, irow::Ptr{Int32},
                               pv::Ptr{Float128}, y::Ptr{Float128})::Cvoid
end

function la04br(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset_64.la04b_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, bnd::Ptr{Float32},
                                    kb::Ref{Int64}, cntl::Ptr{Float32}, ix::Ptr{Int64},
                                    g::Ptr{Float32}, rinfo::Ptr{Float32}, iw::Ptr{Int64},
                                    irow::Ptr{Int64}, pv::Ptr{Float32}, y::Ptr{Float32})::Cvoid
end

function la04br(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset_64.la04bd_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64},
                                     bnd::Ptr{Float64}, kb::Ref{Int64}, cntl::Ptr{Float64},
                                     ix::Ptr{Int64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                                     iw::Ptr{Int64}, irow::Ptr{Int64}, pv::Ptr{Float64},
                                     y::Ptr{Float64})::Cvoid
end

function la04br(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, bnd, kb, cntl, ix, g, rinfo,
                iw, irow, pv, y)
  @ccall libhsl_subset_64.la04bq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64},
                                     bnd::Ptr{Float128}, kb::Ref{Int64}, cntl::Ptr{Float128},
                                     ix::Ptr{Int64}, g::Ptr{Float128}, rinfo::Ptr{Float128},
                                     iw::Ptr{Int64}, irow::Ptr{Int64}, pv::Ptr{Float128},
                                     y::Ptr{Float128})::Cvoid
end

function la04cr(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset.la04c_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float32}, c::Ptr{Float32},
                              bnd::Ptr{Float32}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                              cntl::Ptr{Float32}, ix::Ptr{Int32}, jx::Ptr{Int32}, g::Ptr{Float32},
                              rinfo::Ptr{Float32}, x::Ptr{Float32}, z::Ptr{Float32},
                              ba::Ptr{Float32}, ib::Ref{Int32}, indb::Ptr{Int32}, ipb::Ptr{Int32},
                              iwb::Ptr{Int32}, v::Ptr{Float32}, w::Ptr{Float32}, y::Ptr{Float32},
                              yy::Ptr{Float32}, i15::Ptr{Int32}, c15::Ptr{Float32},
                              iseed::Ref{Int32})::Cvoid
end

function la04cr(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset.la04cd_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float64}, c::Ptr{Float64},
                               bnd::Ptr{Float64}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float64}, ix::Ptr{Int32}, jx::Ptr{Int32}, g::Ptr{Float64},
                               rinfo::Ptr{Float64}, x::Ptr{Float64}, z::Ptr{Float64},
                               ba::Ptr{Float64}, ib::Ref{Int32}, indb::Ptr{Int32}, ipb::Ptr{Int32},
                               iwb::Ptr{Int32}, v::Ptr{Float64}, w::Ptr{Float64}, y::Ptr{Float64},
                               yy::Ptr{Float64}, i15::Ptr{Int32}, c15::Ptr{Float64},
                               iseed::Ref{Int32})::Cvoid
end

function la04cr(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset.la04cq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float128}, c::Ptr{Float128},
                               bnd::Ptr{Float128}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float128}, ix::Ptr{Int32}, jx::Ptr{Int32},
                               g::Ptr{Float128}, rinfo::Ptr{Float128}, x::Ptr{Float128},
                               z::Ptr{Float128}, ba::Ptr{Float128}, ib::Ref{Int32},
                               indb::Ptr{Int32}, ipb::Ptr{Int32}, iwb::Ptr{Int32}, v::Ptr{Float128},
                               w::Ptr{Float128}, y::Ptr{Float128}, yy::Ptr{Float128},
                               i15::Ptr{Int32}, c15::Ptr{Float128}, iseed::Ref{Int32})::Cvoid
end

function la04cr(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset_64.la04c_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    c::Ptr{Float32}, bnd::Ptr{Float32}, kb::Ref{Int64},
                                    lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float32},
                                    ix::Ptr{Int64}, jx::Ptr{Int64}, g::Ptr{Float32},
                                    rinfo::Ptr{Float32}, x::Ptr{Float32}, z::Ptr{Float32},
                                    ba::Ptr{Float32}, ib::Ref{Int64}, indb::Ptr{Int64},
                                    ipb::Ptr{Int64}, iwb::Ptr{Int64}, v::Ptr{Float32},
                                    w::Ptr{Float32}, y::Ptr{Float32}, yy::Ptr{Float32},
                                    i15::Ptr{Int64}, c15::Ptr{Float32}, iseed::Ref{Int64})::Cvoid
end

function la04cr(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset_64.la04cd_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     c::Ptr{Float64}, bnd::Ptr{Float64}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float64},
                                     ix::Ptr{Int64}, jx::Ptr{Int64}, g::Ptr{Float64},
                                     rinfo::Ptr{Float64}, x::Ptr{Float64}, z::Ptr{Float64},
                                     ba::Ptr{Float64}, ib::Ref{Int64}, indb::Ptr{Int64},
                                     ipb::Ptr{Int64}, iwb::Ptr{Int64}, v::Ptr{Float64},
                                     w::Ptr{Float64}, y::Ptr{Float64}, yy::Ptr{Float64},
                                     i15::Ptr{Int64}, c15::Ptr{Float64}, iseed::Ref{Int64})::Cvoid
end

function la04cr(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                ix, jx, g, rinfo, x, z, ba, ib, indb, ipb, iwb, v, w, y, yy, i15, c15, iseed)
  @ccall libhsl_subset_64.la04cq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     c::Ptr{Float128}, bnd::Ptr{Float128}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float128},
                                     ix::Ptr{Int64}, jx::Ptr{Int64}, g::Ptr{Float128},
                                     rinfo::Ptr{Float128}, x::Ptr{Float128}, z::Ptr{Float128},
                                     ba::Ptr{Float128}, ib::Ref{Int64}, indb::Ptr{Int64},
                                     ipb::Ptr{Int64}, iwb::Ptr{Int64}, v::Ptr{Float128},
                                     w::Ptr{Float128}, y::Ptr{Float128}, yy::Ptr{Float128},
                                     i15::Ptr{Int64}, c15::Ptr{Float128}, iseed::Ref{Int64})::Cvoid
end

function la04dr(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset.la04d_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float32}, c::Ptr{Float32},
                              bnd::Ptr{Float32}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                              cntl::Ptr{Float32}, x::Ptr{Float32}, ix::Ptr{Int32}, jx::Ptr{Int32},
                              z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                              ba::Ptr{Float32}, indb::Ptr{Int32}, ipb::Ptr{Int32}, iwb::Ptr{Int32},
                              w::Ptr{Float32}, v::Ptr{Float32}, ir::Ptr{Int32}, y::Ptr{Float32},
                              yy::Ptr{Float32}, ib::Ref{Int32}, i15::Ptr{Int32},
                              c15::Ptr{Float32})::Cvoid
end

function la04dr(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset.la04dd_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float64}, c::Ptr{Float64},
                               bnd::Ptr{Float64}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float64}, x::Ptr{Float64}, ix::Ptr{Int32}, jx::Ptr{Int32},
                               z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                               ba::Ptr{Float64}, indb::Ptr{Int32}, ipb::Ptr{Int32}, iwb::Ptr{Int32},
                               w::Ptr{Float64}, v::Ptr{Float64}, ir::Ptr{Int32}, y::Ptr{Float64},
                               yy::Ptr{Float64}, ib::Ref{Int32}, i15::Ptr{Int32},
                               c15::Ptr{Float64})::Cvoid
end

function la04dr(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset.la04dq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float128}, c::Ptr{Float128},
                               bnd::Ptr{Float128}, kb::Ref{Int32}, lb::Ref{Int32}, job::Ref{Int32},
                               cntl::Ptr{Float128}, x::Ptr{Float128}, ix::Ptr{Int32},
                               jx::Ptr{Int32}, z::Ptr{Float128}, g::Ptr{Float128},
                               rinfo::Ptr{Float128}, ba::Ptr{Float128}, indb::Ptr{Int32},
                               ipb::Ptr{Int32}, iwb::Ptr{Int32}, w::Ptr{Float128}, v::Ptr{Float128},
                               ir::Ptr{Int32}, y::Ptr{Float128}, yy::Ptr{Float128}, ib::Ref{Int32},
                               i15::Ptr{Int32}, c15::Ptr{Float128})::Cvoid
end

function la04dr(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset_64.la04d_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    c::Ptr{Float32}, bnd::Ptr{Float32}, kb::Ref{Int64},
                                    lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float32},
                                    x::Ptr{Float32}, ix::Ptr{Int64}, jx::Ptr{Int64},
                                    z::Ptr{Float32}, g::Ptr{Float32}, rinfo::Ptr{Float32},
                                    ba::Ptr{Float32}, indb::Ptr{Int64}, ipb::Ptr{Int64},
                                    iwb::Ptr{Int64}, w::Ptr{Float32}, v::Ptr{Float32},
                                    ir::Ptr{Int64}, y::Ptr{Float32}, yy::Ptr{Float32},
                                    ib::Ref{Int64}, i15::Ptr{Int64}, c15::Ptr{Float32})::Cvoid
end

function la04dr(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset_64.la04dd_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     c::Ptr{Float64}, bnd::Ptr{Float64}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float64},
                                     x::Ptr{Float64}, ix::Ptr{Int64}, jx::Ptr{Int64},
                                     z::Ptr{Float64}, g::Ptr{Float64}, rinfo::Ptr{Float64},
                                     ba::Ptr{Float64}, indb::Ptr{Int64}, ipb::Ptr{Int64},
                                     iwb::Ptr{Int64}, w::Ptr{Float64}, v::Ptr{Float64},
                                     ir::Ptr{Int64}, y::Ptr{Float64}, yy::Ptr{Float64},
                                     ib::Ref{Int64}, i15::Ptr{Int64}, c15::Ptr{Float64})::Cvoid
end

function la04dr(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, lb, job, cntl,
                x, ix, jx, z, g, rinfo, ba, indb, ipb, iwb, w, v, ir, y, yy, ib, i15, c15)
  @ccall libhsl_subset_64.la04dq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     c::Ptr{Float128}, bnd::Ptr{Float128}, kb::Ref{Int64},
                                     lb::Ref{Int64}, job::Ref{Int64}, cntl::Ptr{Float128},
                                     x::Ptr{Float128}, ix::Ptr{Int64}, jx::Ptr{Int64},
                                     z::Ptr{Float128}, g::Ptr{Float128}, rinfo::Ptr{Float128},
                                     ba::Ptr{Float128}, indb::Ptr{Int64}, ipb::Ptr{Int64},
                                     iwb::Ptr{Int64}, w::Ptr{Float128}, v::Ptr{Float128},
                                     ir::Ptr{Int64}, y::Ptr{Float128}, yy::Ptr{Float128},
                                     ib::Ref{Int64}, i15::Ptr{Int64}, c15::Ptr{Float128})::Cvoid
end

function la04er(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset.la04e_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float32}, x::Ptr{Float32},
                              dx::Ref{Float32}, ix::Ptr{Int32}, jin::Ref{Int32},
                              rinfo::Ptr{Float32}, ba::Ptr{Float32}, indb::Ptr{Int32},
                              ipb::Ptr{Int32}, iwb::Ptr{Int32}, w::Ptr{Float32}, y::Ptr{Float32},
                              ib::Ref{Int32}, trans::Ref{Cint}, i15::Ptr{Int32},
                              c15::Ptr{Float32})::Cvoid
end

function la04er(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset.la04ed_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float64}, x::Ptr{Float64},
                               dx::Ref{Float64}, ix::Ptr{Int32}, jin::Ref{Int32},
                               rinfo::Ptr{Float64}, ba::Ptr{Float64}, indb::Ptr{Int32},
                               ipb::Ptr{Int32}, iwb::Ptr{Int32}, w::Ptr{Float64}, y::Ptr{Float64},
                               ib::Ref{Int32}, trans::Ref{Cint}, i15::Ptr{Int32},
                               c15::Ptr{Float64})::Cvoid
end

function la04er(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset.la04eq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float128}, x::Ptr{Float128},
                               dx::Ref{Float128}, ix::Ptr{Int32}, jin::Ref{Int32},
                               rinfo::Ptr{Float128}, ba::Ptr{Float128}, indb::Ptr{Int32},
                               ipb::Ptr{Int32}, iwb::Ptr{Int32}, w::Ptr{Float128}, y::Ptr{Float128},
                               ib::Ref{Int32}, trans::Ref{Cint}, i15::Ptr{Int32},
                               c15::Ptr{Float128})::Cvoid
end

function la04er(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset_64.la04e_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    x::Ptr{Float32}, dx::Ref{Float32}, ix::Ptr{Int64},
                                    jin::Ref{Int64}, rinfo::Ptr{Float32}, ba::Ptr{Float32},
                                    indb::Ptr{Int64}, ipb::Ptr{Int64}, iwb::Ptr{Int64},
                                    w::Ptr{Float32}, y::Ptr{Float32}, ib::Ref{Int64},
                                    trans::Ref{Cint}, i15::Ptr{Int64}, c15::Ptr{Float32})::Cvoid
end

function la04er(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset_64.la04ed_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     x::Ptr{Float64}, dx::Ref{Float64}, ix::Ptr{Int64},
                                     jin::Ref{Int64}, rinfo::Ptr{Float64}, ba::Ptr{Float64},
                                     indb::Ptr{Int64}, ipb::Ptr{Int64}, iwb::Ptr{Int64},
                                     w::Ptr{Float64}, y::Ptr{Float64}, ib::Ref{Int64},
                                     trans::Ref{Cint}, i15::Ptr{Int64}, c15::Ptr{Float64})::Cvoid
end

function la04er(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, b, x, dx, ix, jin, rinfo, ba,
                indb, ipb, iwb, w, y, ib, trans, i15, c15)
  @ccall libhsl_subset_64.la04eq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     x::Ptr{Float128}, dx::Ref{Float128}, ix::Ptr{Int64},
                                     jin::Ref{Int64}, rinfo::Ptr{Float128}, ba::Ptr{Float128},
                                     indb::Ptr{Int64}, ipb::Ptr{Int64}, iwb::Ptr{Int64},
                                     w::Ptr{Float128}, y::Ptr{Float128}, ib::Ref{Int64},
                                     trans::Ref{Cint}, i15::Ptr{Int64}, c15::Ptr{Float128})::Cvoid
end

function la04sr(::Type{Float32}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset.la04s_(a::Ptr{Float32}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                              m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float32}, c::Ptr{Float32},
                              bnd::Ptr{Float32}, kb::Ref{Int32}, sigma::Ref{Float32},
                              rs::Ptr{Float32}, cs::Ptr{Float32}, ws::Ptr{Float32},
                              jcn::Ptr{Int32})::Cvoid
end

function la04sr(::Type{Float64}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset.la04sd_(a::Ptr{Float64}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float64}, c::Ptr{Float64},
                               bnd::Ptr{Float64}, kb::Ref{Int32}, sigma::Ref{Float64},
                               rs::Ptr{Float64}, cs::Ptr{Float64}, ws::Ptr{Float64},
                               jcn::Ptr{Int32})::Cvoid
end

function la04sr(::Type{Float128}, ::Type{Int32}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset.la04sq_(a::Ptr{Float128}, la::Ref{Int32}, irn::Ptr{Int32}, ip::Ptr{Int32},
                               m::Ref{Int32}, n::Ref{Int32}, b::Ptr{Float128}, c::Ptr{Float128},
                               bnd::Ptr{Float128}, kb::Ref{Int32}, sigma::Ref{Float128},
                               rs::Ptr{Float128}, cs::Ptr{Float128}, ws::Ptr{Float128},
                               jcn::Ptr{Int32})::Cvoid
end

function la04sr(::Type{Float32}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset_64.la04s_64_(a::Ptr{Float32}, la::Ref{Int64}, irn::Ptr{Int64},
                                    ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float32},
                                    c::Ptr{Float32}, bnd::Ptr{Float32}, kb::Ref{Int64},
                                    sigma::Ref{Float32}, rs::Ptr{Float32}, cs::Ptr{Float32},
                                    ws::Ptr{Float32}, jcn::Ptr{Int64})::Cvoid
end

function la04sr(::Type{Float64}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset_64.la04sd_64_(a::Ptr{Float64}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float64},
                                     c::Ptr{Float64}, bnd::Ptr{Float64}, kb::Ref{Int64},
                                     sigma::Ref{Float64}, rs::Ptr{Float64}, cs::Ptr{Float64},
                                     ws::Ptr{Float64}, jcn::Ptr{Int64})::Cvoid
end

function la04sr(::Type{Float128}, ::Type{Int64}, a, la, irn, ip, m, n, b, c, bnd, kb, sigma, rs, cs,
                ws, jcn)
  @ccall libhsl_subset_64.la04sq_64_(a::Ptr{Float128}, la::Ref{Int64}, irn::Ptr{Int64},
                                     ip::Ptr{Int64}, m::Ref{Int64}, n::Ref{Int64}, b::Ptr{Float128},
                                     c::Ptr{Float128}, bnd::Ptr{Float128}, kb::Ref{Int64},
                                     sigma::Ref{Float128}, rs::Ptr{Float128}, cs::Ptr{Float128},
                                     ws::Ptr{Float128}, jcn::Ptr{Int64})::Cvoid
end
