function ma67ad(n, ne, a, irn, jcn, lfact, fact, lifact, ifact, cntl, icntl, rinfo, info)
    @ccall libhsl.ma67ad_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64},
                          lifact::Ref{Cint}, ifact::Ptr{Cint}, cntl::Ptr{Float64},
                          icntl::Ptr{Cint}, rinfo::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma67cd(n, lfact, fact, lifact, ifact, w, rhs, iw1, icntl)
    @ccall libhsl.ma67cd_(n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64},
                          lifact::Ref{Cint}, ifact::Ptr{Cint}, w::Ptr{Float64},
                          rhs::Ptr{Float64}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma67dd(n, ne, a, irn, jcn, lfact, fact, fr, lifact, ifact, ifr, ipe, count, nv,
                next, prev, last, svar, perm, pos, ipr, icntl, info)
    @ccall libhsl.ma67dd_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64},
                          fr::Ref{Cint}, lifact::Ref{Cint}, ifact::Ptr{Cint},
                          ifr::Ref{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint}, nv::Ptr{Cint},
                          next::Ptr{Cint}, prev::Ptr{Cint}, last::Ptr{Cint},
                          svar::Ptr{Cint}, perm::Ptr{Cint}, pos::Ptr{Cint}, ipr::Ptr{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67ed(n, ne, a, irn, jcn, ifact, ipe, count, nv, flag, ifr, icntl, info)
    @ccall libhsl.ma67ed_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, ifact::Ptr{Cint}, ipe::Ptr{Cint},
                          count::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint}, ifr::Ref{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67fd(m2, n2, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67fd_(m2::Ref{Cint}, n2::Ref{Cint}, a::Ptr{Float64}, iw::Ptr{Cint},
                          cntl::Ptr{Float64}, icntl::Ptr{Cint}, npiv::Ref{Cint},
                          nzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma67gd(n, ne, a, irn, jcn, pos, dup, fact, ipr, ifact, perm)
    @ccall libhsl.ma67gd_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, pos::Ptr{Cint}, dup::Ref{Cint},
                          fact::Ptr{Float64}, ipr::Ptr{Cint}, ifact::Ptr{Cint},
                          perm::Ptr{Cint})::Cvoid
end

function ma67hd(n, lfact, fact, fr, ipe, lifact, ifact, ifr, count, nv, next, prev, last,
                ipr, pos, svars, cost, icntl, cntl, rinfo, info)
    @ccall libhsl.ma67hd_(n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64}, fr::Ref{Cint},
                          ipe::Ptr{Cint}, lifact::Ref{Cint}, ifact::Ptr{Cint},
                          ifr::Ref{Cint}, count::Ptr{Cint}, nv::Ptr{Cint}, next::Ptr{Cint},
                          prev::Ptr{Cint}, last::Ptr{Cint}, ipr::Ptr{Cint}, pos::Ptr{Cint},
                          svars::Ptr{Cint}, cost::Ptr{Cint}, icntl::Ptr{Cint},
                          cntl::Ptr{Float64}, rinfo::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma67id(cntl, icntl)
    @ccall libhsl.ma67id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma67jd(n, ipe, ifact, lifact, ifr, ladd, info)
    @ccall libhsl.ma67jd_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                          ifr::Ref{Cint}, ladd::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67kd(fact, from, lfrom, nr, nc, to, lto)
    @ccall libhsl.ma67kd_(fact::Ptr{Float64}, from::Ref{Cint}, lfrom::Ref{Cint},
                          nr::Ref{Cint}, nc::Ref{Cint}, to::Ref{Cint},
                          lto::Ref{Cint})::Cvoid
end

function ma67ld(iis, jjs, n, lfact, fact, fr1, fr, ipe, lifact, ifact, ifr, count, nv,
                icntl, info)
    @ccall libhsl.ma67ld_(iis::Ref{Cint}, jjs::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint},
                          fact::Ptr{Float64}, fr1::Ref{Cint}, fr::Ref{Cint}, ipe::Ptr{Cint},
                          lifact::Ref{Cint}, ifact::Ptr{Cint}, ifr::Ref{Cint},
                          count::Ptr{Cint}, nv::Ptr{Cint}, icntl::Ptr{Cint},
                          info::Ptr{Cint})::Cvoid
end

function ma67md(is, js, n, lfact, fact, fr, ipe, lifact, ifact, ifr, count, cost, nv, next,
                prev, last, ipr, icntl, info)
    @ccall libhsl.ma67md_(is::Ref{Cint}, js::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint},
                          fact::Ptr{Float64}, fr::Ref{Cint}, ipe::Ptr{Cint},
                          lifact::Ref{Cint}, ifact::Ptr{Cint}, ifr::Ref{Cint},
                          count::Ptr{Cint}, cost::Ptr{Cint}, nv::Ptr{Cint}, next::Ptr{Cint},
                          prev::Ptr{Cint}, last::Ptr{Cint}, ipr::Ptr{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67nd(n, ipe, ifact, lifact, nv, next, prev, last, flag, var, svar)
    @ccall libhsl.ma67nd_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                          nv::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint}, last::Ptr{Cint},
                          flag::Ptr{Cint}, var::Ptr{Cint}, svar::Ptr{Cint})::Cvoid
end

function ma67od(m1, m2, n1, n2, n3, la, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67od_(m1::Ref{Cint}, m2::Ref{Cint}, n1::Ref{Cint}, n2::Ref{Cint},
                          n3::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64}, iw::Ptr{Cint},
                          cntl::Ptr{Float64}, icntl::Ptr{Cint}, npiv::Ref{Cint},
                          nzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma67pd(is, n, lfact, fact, fr1, fr, ipe, lifact, ifact, ifr, count, nv, icntl,
                info)
    @ccall libhsl.ma67pd_(is::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float64},
                          fr1::Ref{Cint}, fr::Ref{Cint}, ipe::Ptr{Cint}, lifact::Ref{Cint},
                          ifact::Ptr{Cint}, ifr::Ref{Cint}, count::Ptr{Cint}, nv::Ptr{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67qd(n, a, la, iw, liw, w, rhs, iw1, icntl)
    @ccall libhsl.ma67qd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint},
                          liw::Ref{Cint}, w::Ptr{Float64}, rhs::Ptr{Float64},
                          iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma67rd(n, a, la, iw, liw, w, rhs, iw1, icntl)
    @ccall libhsl.ma67rd_(n::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint},
                          liw::Ref{Cint}, w::Ptr{Float64}, rhs::Ptr{Float64},
                          iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma67sd(n, ipe, ifact, lifact, ifr, fact, lfact, fr, ladd, info)
    @ccall libhsl.ma67sd_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                          ifr::Ref{Cint}, fact::Ptr{Float64}, lfact::Ref{Cint},
                          fr::Ref{Cint}, ladd::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67td(m1, m2, n12, n3, la, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67td_(m1::Ref{Cint}, m2::Ref{Cint}, n12::Ref{Cint}, n3::Ref{Cint},
                          la::Ref{Cint}, a::Ptr{Float64}, iw::Ptr{Cint}, cntl::Ptr{Float64},
                          icntl::Ptr{Cint}, npiv::Ref{Cint}, nzero::Ref{Cint},
                          info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function ma67ud(a, la, iw, liw, icntl)
    @ccall libhsl.ma67ud_(a::Ptr{Float64}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                          icntl::Ptr{Cint})::Cvoid
end

function ma67vd(fact, lfact, fr, from, len, info)
    @ccall libhsl.ma67vd_(fact::Ptr{Float64}, lfact::Ref{Cint}, fr::Ref{Cint},
                          from::Ref{Cint}, len::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67wd(fact, lfact, ifact, lifact, nrlbdu)
    @ccall libhsl.ma67wd_(fact::Ptr{Float64}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                          lifact::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function ma67yd(ifact, lifact, ifr, from, info)
    @ccall libhsl.ma67yd_(ifact::Ptr{Cint}, lifact::Ref{Cint}, ifr::Ref{Cint},
                          from::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67zd(ms, cost, next, prev, ipr)
    @ccall libhsl.ma67zd_(ms::Ref{Cint}, cost::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint},
                          ipr::Ptr{Cint})::Cvoid
end

function ma67a(n, ne, a, irn, jcn, lfact, fact, lifact, ifact, cntl, icntl, rinfo, info)
    @ccall libhsl.ma67a_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32},
                         lifact::Ref{Cint}, ifact::Ptr{Cint}, cntl::Ptr{Float32},
                         icntl::Ptr{Cint}, rinfo::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma67c(n, lfact, fact, lifact, ifact, w, rhs, iw1, icntl)
    @ccall libhsl.ma67c_(n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32},
                         lifact::Ref{Cint}, ifact::Ptr{Cint}, w::Ptr{Float32},
                         rhs::Ptr{Float32}, iw1::Ptr{Cint}, icntl::Ptr{Cint})::Cvoid
end

function ma67d(n, ne, a, irn, jcn, lfact, fact, fr, lifact, ifact, ifr, ipe, count, nv,
               next, prev, last, svar, perm, pos, ipr, icntl, info)
    @ccall libhsl.ma67d_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32},
                         fr::Ref{Cint}, lifact::Ref{Cint}, ifact::Ptr{Cint}, ifr::Ref{Cint},
                         ipe::Ptr{Cint}, count::Ptr{Cint}, nv::Ptr{Cint}, next::Ptr{Cint},
                         prev::Ptr{Cint}, last::Ptr{Cint}, svar::Ptr{Cint}, perm::Ptr{Cint},
                         pos::Ptr{Cint}, ipr::Ptr{Cint}, icntl::Ptr{Cint},
                         info::Ptr{Cint})::Cvoid
end

function ma67e(n, ne, a, irn, jcn, ifact, ipe, count, nv, flag, ifr, icntl, info)
    @ccall libhsl.ma67e_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, ifact::Ptr{Cint}, ipe::Ptr{Cint}, count::Ptr{Cint},
                         nv::Ptr{Cint}, flag::Ptr{Cint}, ifr::Ref{Cint}, icntl::Ptr{Cint},
                         info::Ptr{Cint})::Cvoid
end

function ma67f(m2, n2, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67f_(m2::Ref{Cint}, n2::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                         cntl::Ptr{Float32}, icntl::Ptr{Cint}, npiv::Ref{Cint},
                         nzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma67g(n, ne, a, irn, jcn, pos, dup, fact, ipr, ifact, perm)
    @ccall libhsl.ma67g_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, pos::Ptr{Cint}, dup::Ref{Cint}, fact::Ptr{Float32},
                         ipr::Ptr{Cint}, ifact::Ptr{Cint}, perm::Ptr{Cint})::Cvoid
end

function ma67h(n, lfact, fact, fr, ipe, lifact, ifact, ifr, count, nv, next, prev, last,
               ipr, pos, svars, cost, icntl, cntl, rinfo, info)
    @ccall libhsl.ma67h_(n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32}, fr::Ref{Cint},
                         ipe::Ptr{Cint}, lifact::Ref{Cint}, ifact::Ptr{Cint},
                         ifr::Ref{Cint}, count::Ptr{Cint}, nv::Ptr{Cint}, next::Ptr{Cint},
                         prev::Ptr{Cint}, last::Ptr{Cint}, ipr::Ptr{Cint}, pos::Ptr{Cint},
                         svars::Ptr{Cint}, cost::Ptr{Cint}, icntl::Ptr{Cint},
                         cntl::Ptr{Float32}, rinfo::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma67i(cntl, icntl)
    @ccall libhsl.ma67i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function ma67j(n, ipe, ifact, lifact, ifr, ladd, info)
    @ccall libhsl.ma67j_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                         ifr::Ref{Cint}, ladd::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67k(fact, from, lfrom, nr, nc, to, lto)
    @ccall libhsl.ma67k_(fact::Ptr{Float32}, from::Ref{Cint}, lfrom::Ref{Cint},
                         nr::Ref{Cint}, nc::Ref{Cint}, to::Ref{Cint}, lto::Ref{Cint})::Cvoid
end

function ma67l(iis, jjs, n, lfact, fact, fr1, fr, ipe, lifact, ifact, ifr, count, nv, icntl,
               info)
    @ccall libhsl.ma67l_(iis::Ref{Cint}, jjs::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint},
                         fact::Ptr{Float32}, fr1::Ref{Cint}, fr::Ref{Cint}, ipe::Ptr{Cint},
                         lifact::Ref{Cint}, ifact::Ptr{Cint}, ifr::Ref{Cint},
                         count::Ptr{Cint}, nv::Ptr{Cint}, icntl::Ptr{Cint},
                         info::Ptr{Cint})::Cvoid
end

function ma67m(is, js, n, lfact, fact, fr, ipe, lifact, ifact, ifr, count, cost, nv, next,
               prev, last, ipr, icntl, info)
    @ccall libhsl.ma67m_(is::Ref{Cint}, js::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint},
                         fact::Ptr{Float32}, fr::Ref{Cint}, ipe::Ptr{Cint},
                         lifact::Ref{Cint}, ifact::Ptr{Cint}, ifr::Ref{Cint},
                         count::Ptr{Cint}, cost::Ptr{Cint}, nv::Ptr{Cint}, next::Ptr{Cint},
                         prev::Ptr{Cint}, last::Ptr{Cint}, ipr::Ptr{Cint}, icntl::Ptr{Cint},
                         info::Ptr{Cint})::Cvoid
end

function ma67n(n, ipe, ifact, lifact, nv, next, prev, last, flag, var, svar)
    @ccall libhsl.ma67n_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                         nv::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint}, last::Ptr{Cint},
                         flag::Ptr{Cint}, var::Ptr{Cint}, svar::Ptr{Cint})::Cvoid
end

function ma67o(m1, m2, n1, n2, n3, la, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67o_(m1::Ref{Cint}, m2::Ref{Cint}, n1::Ref{Cint}, n2::Ref{Cint},
                         n3::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Cint},
                         cntl::Ptr{Float32}, icntl::Ptr{Cint}, npiv::Ref{Cint},
                         nzero::Ref{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma67p(is, n, lfact, fact, fr1, fr, ipe, lifact, ifact, ifr, count, nv, icntl, info)
    @ccall libhsl.ma67p_(is::Ref{Cint}, n::Ref{Cint}, lfact::Ref{Cint}, fact::Ptr{Float32},
                         fr1::Ref{Cint}, fr::Ref{Cint}, ipe::Ptr{Cint}, lifact::Ref{Cint},
                         ifact::Ptr{Cint}, ifr::Ref{Cint}, count::Ptr{Cint}, nv::Ptr{Cint},
                         icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67q(n, a, la, iw, liw, w, rhs, iw1, icntl)
    @ccall libhsl.ma67q_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint},
                         liw::Ref{Cint}, w::Ptr{Float32}, rhs::Ptr{Float32}, iw1::Ptr{Cint},
                         icntl::Ptr{Cint})::Cvoid
end

function ma67r(n, a, la, iw, liw, w, rhs, iw1, icntl)
    @ccall libhsl.ma67r_(n::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint},
                         liw::Ref{Cint}, w::Ptr{Float32}, rhs::Ptr{Float32}, iw1::Ptr{Cint},
                         icntl::Ptr{Cint})::Cvoid
end

function ma67s(n, ipe, ifact, lifact, ifr, fact, lfact, fr, ladd, info)
    @ccall libhsl.ma67s_(n::Ref{Cint}, ipe::Ptr{Cint}, ifact::Ptr{Cint}, lifact::Ref{Cint},
                         ifr::Ref{Cint}, fact::Ptr{Float32}, lfact::Ref{Cint},
                         fr::Ref{Cint}, ladd::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67t(m1, m2, n12, n3, la, a, iw, cntl, icntl, npiv, nzero, info, rinfo)
    @ccall libhsl.ma67t_(m1::Ref{Cint}, m2::Ref{Cint}, n12::Ref{Cint}, n3::Ref{Cint},
                         la::Ref{Cint}, a::Ptr{Float32}, iw::Ptr{Cint}, cntl::Ptr{Float32},
                         icntl::Ptr{Cint}, npiv::Ref{Cint}, nzero::Ref{Cint},
                         info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function ma67u(a, la, iw, liw, icntl)
    @ccall libhsl.ma67u_(a::Ptr{Float32}, la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                         icntl::Ptr{Cint})::Cvoid
end

function ma67v(fact, lfact, fr, from, len, info)
    @ccall libhsl.ma67v_(fact::Ptr{Float32}, lfact::Ref{Cint}, fr::Ref{Cint},
                         from::Ref{Cint}, len::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67w(fact, lfact, ifact, lifact, nrlbdu)
    @ccall libhsl.ma67w_(fact::Ptr{Float32}, lfact::Ref{Cint}, ifact::Ptr{Cint},
                         lifact::Ref{Cint}, nrlbdu::Ref{Cint})::Cvoid
end

function ma67y(ifact, lifact, ifr, from, info)
    @ccall libhsl.ma67y_(ifact::Ptr{Cint}, lifact::Ref{Cint}, ifr::Ref{Cint},
                         from::Ref{Cint}, info::Ptr{Cint})::Cvoid
end

function ma67z(ms, cost, next, prev, ipr)
    @ccall libhsl.ma67z_(ms::Ref{Cint}, cost::Ptr{Cint}, next::Ptr{Cint}, prev::Ptr{Cint},
                         ipr::Ptr{Cint})::Cvoid
end
