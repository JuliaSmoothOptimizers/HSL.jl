function ma46ad(nels, nnods, neqns, ipielt, ielt, lielt, ivar, nb, keepa, lkeepa, iw, liw, icntl,
                rinfo, info)
  @ccall libhsl.ma46ad_(nels::Ref{Cint}, nnods::Ref{Cint}, neqns::Ref{Cint}, ipielt::Ptr{Cint},
                        ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint}, nb::Ref{Cint},
                        keepa::Ptr{Cint}, lkeepa::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        icntl::Ptr{Cint}, rinfo::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma46bd(ibl, nels, nnods, ipielt, ielt, lielt, ivar, keepa, lkeepa, keepb, lkeepb, elmat, a,
                la, ad, lad, iw, liw, cntl, icntl, rinfo, info)
  @ccall libhsl.ma46bd_(ibl::Ref{Cint}, nels::Ref{Cint}, nnods::Ref{Cint}, ipielt::Ptr{Cint},
                        ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint}, keepa::Ptr{Cint},
                        lkeepa::Ref{Cint}, keepb::Ptr{Cint}, lkeepb::Ref{Cint}, elmat::Ptr{Float64},
                        a::Ptr{Float64}, la::Ref{Cint}, ad::Ptr{Float64}, lad::Ref{Cint},
                        iw::Ptr{Cint}, liw::Ref{Cint}, cntl::Ptr{Float64}, icntl::Ptr{Cint},
                        rinfo::Ptr{Float64}, info::Ptr{Cint})::Cvoid
end

function ma46cd(ivar, nnods, keepa, lkeepa, keepb, lkeepb, a, la, b, ldb, nrhs, iw, liw, rw, lrw,
                icntl, info)
  @ccall libhsl.ma46cd_(ivar::Ptr{Cint}, nnods::Ref{Cint}, keepa::Ptr{Cint}, lkeepa::Ref{Cint},
                        keepb::Ptr{Cint}, lkeepb::Ref{Cint}, a::Ptr{Float64}, la::Ref{Cint},
                        b::Ptr{Float64}, ldb::Ref{Cint}, nrhs::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, rw::Ptr{Float64}, lrw::Ref{Cint}, icntl::Ptr{Cint},
                        info::Ptr{Cint})::Cvoid
end

function ma46dd(n, perm, invp)
  @ccall libhsl.ma46dd_(n::Ref{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint})::Cvoid
end

function ma46ed(nels, nnods, nelnod, xelnod, elnod, xnodel, nodel, offset)
  @ccall libhsl.ma46ed_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                        elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint},
                        offset::Ptr{Cint})::Cvoid
end

function ma46fd(nels, nnods, nelnod, maxnel, maxmrk, delta, xelnod, elnod, xnodel, nodel, ncompr,
                perm, invp, xflnod, flnod, xfnodl, fnodl, head, qsize, elmlnk, flag, storel, marker)
  @ccall libhsl.ma46fd_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, maxnel::Ref{Cint},
                        maxmrk::Ref{Cint}, delta::Ref{Cint}, xelnod::Ptr{Cint}, elnod::Ptr{Cint},
                        xnodel::Ptr{Cint}, nodel::Ptr{Cint}, ncompr::Ref{Cint}, perm::Ptr{Cint},
                        invp::Ptr{Cint}, xflnod::Ptr{Cint}, flnod::Ptr{Cint}, xfnodl::Ptr{Cint},
                        fnodl::Ptr{Cint}, head::Ptr{Cint}, qsize::Ptr{Cint}, elmlnk::Ptr{Cint},
                        flag::Ptr{Cint}, storel::Ptr{Cint}, marker::Ptr{Cint})::Cvoid
end

function ma46gd(nnods, nels, nelnod, xelnod, elnod, xnodel, nodel, perm, invp, parent, child, sibl,
                newinv)
  @ccall libhsl.ma46gd_(nnods::Ref{Cint}, nels::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                        elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint}, perm::Ptr{Cint},
                        invp::Ptr{Cint}, parent::Ptr{Cint}, child::Ptr{Cint}, sibl::Ptr{Cint},
                        newinv::Ptr{Cint})::Cvoid
end

function ma46hd(nels, nnods, nelnod, xelnod, elnod, xnodel, nodel, perm, invp, etpar, xnod, colcnt,
                varcnt, rowcnt, prvlf, prvnbr, set, marker, nchild, weight, varwgh, fdesc, level)
  @ccall libhsl.ma46hd_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                        elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint}, perm::Ptr{Cint},
                        invp::Ptr{Cint}, etpar::Ptr{Cint}, xnod::Ptr{Cint}, colcnt::Ptr{Cint},
                        varcnt::Ptr{Cint}, rowcnt::Ptr{Cint}, prvlf::Ptr{Cint}, prvnbr::Ptr{Cint},
                        set::Ptr{Cint}, marker::Ptr{Cint}, nchild::Ptr{Cint}, weight::Ptr{Cint},
                        varwgh::Ptr{Cint}, fdesc::Ptr{Cint}, level::Ptr{Cint})::Cvoid
end

function ma46id(cntl, icntl)
  @ccall libhsl.ma46id_(cntl::Ptr{Float64}, icntl::Ptr{Cint})::Cvoid
end

function ma46jd(nnods, nodpar, colcnt, nchild, nsuper, xsuper, suppar, xsibl, sibl)
  @ccall libhsl.ma46jd_(nnods::Ref{Cint}, nodpar::Ptr{Cint}, colcnt::Ptr{Cint}, nchild::Ptr{Cint},
                        nsuper::Ref{Cint}, xsuper::Ptr{Cint}, suppar::Ptr{Cint}, xsibl::Ptr{Cint},
                        sibl::Ptr{Cint})::Cvoid
end

function ma46kd(nsuper, nnods, option, xsibl, sibl, xsuper, suplen, supsze, xnod, superm, delta,
                index, work)
  @ccall libhsl.ma46kd_(nsuper::Ref{Cint}, nnods::Ref{Cint}, option::Ref{Cint}, xsibl::Ptr{Cint},
                        sibl::Ptr{Cint}, xsuper::Ptr{Cint}, suplen::Ptr{Cint}, supsze::Ptr{Cint},
                        xnod::Ptr{Cint}, superm::Ptr{Cint}, delta::Ptr{Cint}, index::Ptr{Cint},
                        work::Ptr{Cint})::Cvoid
end

function ma46ld(nnods, nsuper, xsuper, xsibl, sibl, perm, invp, superm, nwperm, nxsup, nxsibl,
                nsibl, suinvp, error)
  @ccall libhsl.ma46ld_(nnods::Ref{Cint}, nsuper::Ref{Cint}, xsuper::Ptr{Cint}, xsibl::Ptr{Cint},
                        sibl::Ptr{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint}, superm::Ptr{Cint},
                        nwperm::Ptr{Cint}, nxsup::Ptr{Cint}, nxsibl::Ptr{Cint}, nsibl::Ptr{Cint},
                        suinvp::Ptr{Cint}, error::Ref{Cint})::Cvoid
end

function ma46md(nsuper, nactiv, nacteq, nnods, nels, nelnod, lielt, ipielt, ielt, ivar, xnodel,
                nodel, xsibl, sibl, supsze, oldspl, superm, perm, invp, nb, maxsup, maxfrt, nofsub,
                nzerof, nzstck, dpstck, nelact, lkeepb, la, xelseq, elseq, xblock, xsuper, suplen,
                bsperm, rinfo, mask)
  @ccall libhsl.ma46md_(nsuper::Ref{Cint}, nactiv::Ref{Cint}, nacteq::Ref{Cint}, nnods::Ref{Cint},
                        nels::Ref{Cint}, nelnod::Ref{Cint}, lielt::Ref{Cint}, ipielt::Ptr{Cint},
                        ielt::Ptr{Cint}, ivar::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint},
                        xsibl::Ptr{Cint}, sibl::Ptr{Cint}, supsze::Ptr{Cint}, oldspl::Ptr{Cint},
                        superm::Ptr{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint}, nb::Ref{Cint},
                        maxsup::Ref{Cint}, maxfrt::Ref{Cint}, nofsub::Ref{Cint}, nzerof::Ref{Cint},
                        nzstck::Ref{Cint}, dpstck::Ref{Cint}, nelact::Ref{Cint}, lkeepb::Ref{Cint},
                        la::Ref{Cint}, xelseq::Ptr{Cint}, elseq::Ptr{Cint}, xblock::Ptr{Cint},
                        xsuper::Ptr{Cint}, suplen::Ptr{Cint}, bsperm::Ptr{Cint},
                        rinfo::Ptr{Float64}, mask::Ptr{Cint})::Cvoid
end

function ma46nd(js, ipfndx, fsize, fstvar, lstvar, nchild, sibl, xnod, nnods, xfindx, findx, nsuper,
                nofsub, link, nodmap, neqns, mask, nactiv, error)
  @ccall libhsl.ma46nd_(js::Ref{Cint}, ipfndx::Ref{Cint}, fsize::Ref{Cint}, fstvar::Ref{Cint},
                        lstvar::Ref{Cint}, nchild::Ref{Cint}, sibl::Ptr{Cint}, xnod::Ptr{Cint},
                        nnods::Ref{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, nsuper::Ref{Cint},
                        nofsub::Ref{Cint}, link::Ptr{Cint}, nodmap::Ptr{Cint}, neqns::Ref{Cint},
                        mask::Ptr{Cint}, nactiv::Ref{Cint}, error::Ref{Cint})::Cvoid
end

function ma46od(js, lstvar, bsinvp, xnod, nnods, ipielt, nels, ielt, lielt, elseq, numel, nfound,
                link, nodmap, neqns, mask)
  @ccall libhsl.ma46od_(js::Ref{Cint}, lstvar::Ref{Cint}, bsinvp::Ptr{Cint}, xnod::Ptr{Cint},
                        nnods::Ref{Cint}, ipielt::Ptr{Cint}, nels::Ref{Cint}, ielt::Ptr{Cint},
                        lielt::Ref{Cint}, elseq::Ptr{Cint}, numel::Ref{Cint}, nfound::Ref{Cint},
                        link::Ptr{Cint}, nodmap::Ptr{Cint}, neqns::Ref{Cint},
                        mask::Ptr{Cint})::Cvoid
end

function ma46pd(js, lstvar, link, nacteq, xfindx, nsuper, findx, nofsub, marker)
  @ccall libhsl.ma46pd_(js::Ref{Cint}, lstvar::Ref{Cint}, link::Ptr{Cint}, nacteq::Ref{Cint},
                        xfindx::Ptr{Cint}, nsuper::Ref{Cint}, findx::Ptr{Cint}, nofsub::Ref{Cint},
                        marker::Ptr{Cint})::Cvoid
end

function ma46qd(f, nchild, sibl, xfindx, nsuper, findx, nofsub, marker, nacteq, frtmat, genelm,
                lstack, stkred, locind)
  @ccall libhsl.ma46qd_(f::Ref{Cint}, nchild::Ref{Cint}, sibl::Ptr{Cint}, xfindx::Ptr{Cint},
                        nsuper::Ref{Cint}, findx::Ptr{Cint}, nofsub::Ref{Cint}, marker::Ptr{Cint},
                        nacteq::Ref{Cint}, frtmat::Ptr{Float64}, genelm::Ptr{Float64},
                        lstack::Ref{Cint}, stkred::Ref{Cint}, locind::Ptr{Cint})::Cvoid
end

function ma46rd(f, numel, elseq, ipielt, nels, ielt, lielt, ivar, xnod, bsinvp, nnods, marker,
                nacteq, frtmat, elmat, locind)
  @ccall libhsl.ma46rd_(f::Ref{Cint}, numel::Ref{Cint}, elseq::Ptr{Cint}, ipielt::Ptr{Cint},
                        nels::Ref{Cint}, ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint},
                        xnod::Ptr{Cint}, bsinvp::Ptr{Cint}, nnods::Ref{Cint}, marker::Ptr{Cint},
                        nacteq::Ref{Cint}, frtmat::Ptr{Float64}, elmat::Ptr{Float64},
                        locind::Ptr{Cint})::Cvoid
end

function ma46sd(js, xfindx, nsuper, findx, nofsub, frtmat, f, s, srow, k, accept, u, drop)
  @ccall libhsl.ma46sd_(js::Ref{Cint}, xfindx::Ptr{Cint}, nsuper::Ref{Cint}, findx::Ptr{Cint},
                        nofsub::Ref{Cint}, frtmat::Ptr{Float64}, f::Ref{Cint}, s::Ref{Cint},
                        srow::Ref{Cint}, k::Ref{Cint}, accept::Ref{Cint}, u::Ref{Float64},
                        drop::Ref{Float64})::Cvoid
end

function ma46td(nsuper, xfindx, findx, a, lpw, msglvl)
  @ccall libhsl.ma46td_(nsuper::Ref{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, a::Ptr{Float64},
                        lpw::Ref{Cint}, msglvl::Ref{Cint})::Cvoid
end

function ma46vd(nsuper, nacteq, nrhs, nofsub, sibl, xfindx, findx, bsperm, b, ldb, info, msglvl,
                output)
  @ccall libhsl.ma46vd_(nsuper::Ref{Cint}, nacteq::Ref{Cint}, nrhs::Ref{Cint}, nofsub::Ref{Cint},
                        sibl::Ptr{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, bsperm::Ptr{Cint},
                        b::Ptr{Float64}, ldb::Ref{Cint}, info::Ptr{Cint}, msglvl::Ref{Cint},
                        output::Ref{Cint})::Cvoid
end

function ma46xd(m, n, a, lda, lpw)
  @ccall libhsl.ma46xd_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float64}, lda::Ref{Cint},
                        lpw::Ref{Cint})::Cvoid
end

function ma46yd(n, sx, incx, sy, incy)
  @ccall libhsl.ma46yd_(n::Ref{Cint}, sx::Ptr{Cint}, incx::Ref{Cint}, sy::Ptr{Cint},
                        incy::Ref{Cint})::Cvoid
end

function ma46zd(nnods, perm, invp, newprm)
  @ccall libhsl.ma46zd_(nnods::Ref{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint},
                        newprm::Ptr{Cint})::Cvoid
end

function ma46a(nels, nnods, neqns, ipielt, ielt, lielt, ivar, nb, keepa, lkeepa, iw, liw, icntl,
               rinfo, info)
  @ccall libhsl.ma46a_(nels::Ref{Cint}, nnods::Ref{Cint}, neqns::Ref{Cint}, ipielt::Ptr{Cint},
                       ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint}, nb::Ref{Cint},
                       keepa::Ptr{Cint}, lkeepa::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                       icntl::Ptr{Cint}, rinfo::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma46b(ibl, nels, nnods, ipielt, ielt, lielt, ivar, keepa, lkeepa, keepb, lkeepb, elmat, a,
               la, ad, lad, iw, liw, cntl, icntl, rinfo, info)
  @ccall libhsl.ma46b_(ibl::Ref{Cint}, nels::Ref{Cint}, nnods::Ref{Cint}, ipielt::Ptr{Cint},
                       ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint}, keepa::Ptr{Cint},
                       lkeepa::Ref{Cint}, keepb::Ptr{Cint}, lkeepb::Ref{Cint}, elmat::Ptr{Float32},
                       a::Ptr{Float32}, la::Ref{Cint}, ad::Ptr{Float32}, lad::Ref{Cint},
                       iw::Ptr{Cint}, liw::Ref{Cint}, cntl::Ptr{Float32}, icntl::Ptr{Cint},
                       rinfo::Ptr{Float32}, info::Ptr{Cint})::Cvoid
end

function ma46c(ivar, nnods, keepa, lkeepa, keepb, lkeepb, a, la, b, ldb, nrhs, iw, liw, rw, lrw,
               icntl, info)
  @ccall libhsl.ma46c_(ivar::Ptr{Cint}, nnods::Ref{Cint}, keepa::Ptr{Cint}, lkeepa::Ref{Cint},
                       keepb::Ptr{Cint}, lkeepb::Ref{Cint}, a::Ptr{Float32}, la::Ref{Cint},
                       b::Ptr{Float32}, ldb::Ref{Cint}, nrhs::Ref{Cint}, iw::Ptr{Cint},
                       liw::Ref{Cint}, rw::Ptr{Float32}, lrw::Ref{Cint}, icntl::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function ma46d(n, perm, invp)
  @ccall libhsl.ma46d_(n::Ref{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint})::Cvoid
end

function ma46e(nels, nnods, nelnod, xelnod, elnod, xnodel, nodel, offset)
  @ccall libhsl.ma46e_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                       elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint},
                       offset::Ptr{Cint})::Cvoid
end

function ma46f(nels, nnods, nelnod, maxnel, maxmrk, delta, xelnod, elnod, xnodel, nodel, ncompr,
               perm, invp, xflnod, flnod, xfnodl, fnodl, head, qsize, elmlnk, flag, storel, marker)
  @ccall libhsl.ma46f_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, maxnel::Ref{Cint},
                       maxmrk::Ref{Cint}, delta::Ref{Cint}, xelnod::Ptr{Cint}, elnod::Ptr{Cint},
                       xnodel::Ptr{Cint}, nodel::Ptr{Cint}, ncompr::Ref{Cint}, perm::Ptr{Cint},
                       invp::Ptr{Cint}, xflnod::Ptr{Cint}, flnod::Ptr{Cint}, xfnodl::Ptr{Cint},
                       fnodl::Ptr{Cint}, head::Ptr{Cint}, qsize::Ptr{Cint}, elmlnk::Ptr{Cint},
                       flag::Ptr{Cint}, storel::Ptr{Cint}, marker::Ptr{Cint})::Cvoid
end

function ma46g(nnods, nels, nelnod, xelnod, elnod, xnodel, nodel, perm, invp, parent, child, sibl,
               newinv)
  @ccall libhsl.ma46g_(nnods::Ref{Cint}, nels::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                       elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint}, perm::Ptr{Cint},
                       invp::Ptr{Cint}, parent::Ptr{Cint}, child::Ptr{Cint}, sibl::Ptr{Cint},
                       newinv::Ptr{Cint})::Cvoid
end

function ma46h(nels, nnods, nelnod, xelnod, elnod, xnodel, nodel, perm, invp, etpar, xnod, colcnt,
               varcnt, rowcnt, prvlf, prvnbr, set, marker, nchild, weight, varwgh, fdesc, level)
  @ccall libhsl.ma46h_(nels::Ref{Cint}, nnods::Ref{Cint}, nelnod::Ref{Cint}, xelnod::Ptr{Cint},
                       elnod::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint}, perm::Ptr{Cint},
                       invp::Ptr{Cint}, etpar::Ptr{Cint}, xnod::Ptr{Cint}, colcnt::Ptr{Cint},
                       varcnt::Ptr{Cint}, rowcnt::Ptr{Cint}, prvlf::Ptr{Cint}, prvnbr::Ptr{Cint},
                       set::Ptr{Cint}, marker::Ptr{Cint}, nchild::Ptr{Cint}, weight::Ptr{Cint},
                       varwgh::Ptr{Cint}, fdesc::Ptr{Cint}, level::Ptr{Cint})::Cvoid
end

function ma46i(cntl, icntl)
  @ccall libhsl.ma46i_(cntl::Ptr{Float32}, icntl::Ptr{Cint})::Cvoid
end

function ma46j(nnods, nodpar, colcnt, nchild, nsuper, xsuper, suppar, xsibl, sibl)
  @ccall libhsl.ma46j_(nnods::Ref{Cint}, nodpar::Ptr{Cint}, colcnt::Ptr{Cint}, nchild::Ptr{Cint},
                       nsuper::Ref{Cint}, xsuper::Ptr{Cint}, suppar::Ptr{Cint}, xsibl::Ptr{Cint},
                       sibl::Ptr{Cint})::Cvoid
end

function ma46k(nsuper, nnods, option, xsibl, sibl, xsuper, suplen, supsze, xnod, superm, delta,
               index, work)
  @ccall libhsl.ma46k_(nsuper::Ref{Cint}, nnods::Ref{Cint}, option::Ref{Cint}, xsibl::Ptr{Cint},
                       sibl::Ptr{Cint}, xsuper::Ptr{Cint}, suplen::Ptr{Cint}, supsze::Ptr{Cint},
                       xnod::Ptr{Cint}, superm::Ptr{Cint}, delta::Ptr{Cint}, index::Ptr{Cint},
                       work::Ptr{Cint})::Cvoid
end

function ma46l(nnods, nsuper, xsuper, xsibl, sibl, perm, invp, superm, nwperm, nxsup, nxsibl, nsibl,
               suinvp, error)
  @ccall libhsl.ma46l_(nnods::Ref{Cint}, nsuper::Ref{Cint}, xsuper::Ptr{Cint}, xsibl::Ptr{Cint},
                       sibl::Ptr{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint}, superm::Ptr{Cint},
                       nwperm::Ptr{Cint}, nxsup::Ptr{Cint}, nxsibl::Ptr{Cint}, nsibl::Ptr{Cint},
                       suinvp::Ptr{Cint}, error::Ref{Cint})::Cvoid
end

function ma46m(nsuper, nactiv, nacteq, nnods, nels, nelnod, lielt, ipielt, ielt, ivar, xnodel,
               nodel, xsibl, sibl, supsze, oldspl, superm, perm, invp, nb, maxsup, maxfrt, nofsub,
               nzerof, nzstck, dpstck, nelact, lkeepb, la, xelseq, elseq, xblock, xsuper, suplen,
               bsperm, rinfo, mask)
  @ccall libhsl.ma46m_(nsuper::Ref{Cint}, nactiv::Ref{Cint}, nacteq::Ref{Cint}, nnods::Ref{Cint},
                       nels::Ref{Cint}, nelnod::Ref{Cint}, lielt::Ref{Cint}, ipielt::Ptr{Cint},
                       ielt::Ptr{Cint}, ivar::Ptr{Cint}, xnodel::Ptr{Cint}, nodel::Ptr{Cint},
                       xsibl::Ptr{Cint}, sibl::Ptr{Cint}, supsze::Ptr{Cint}, oldspl::Ptr{Cint},
                       superm::Ptr{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint}, nb::Ref{Cint},
                       maxsup::Ref{Cint}, maxfrt::Ref{Cint}, nofsub::Ref{Cint}, nzerof::Ref{Cint},
                       nzstck::Ref{Cint}, dpstck::Ref{Cint}, nelact::Ref{Cint}, lkeepb::Ref{Cint},
                       la::Ref{Cint}, xelseq::Ptr{Cint}, elseq::Ptr{Cint}, xblock::Ptr{Cint},
                       xsuper::Ptr{Cint}, suplen::Ptr{Cint}, bsperm::Ptr{Cint}, rinfo::Ptr{Float32},
                       mask::Ptr{Cint})::Cvoid
end

function ma46n(js, ipfndx, fsize, fstvar, lstvar, nchild, sibl, xnod, nnods, xfindx, findx, nsuper,
               nofsub, link, nodmap, neqns, mask, nactiv, error)
  @ccall libhsl.ma46n_(js::Ref{Cint}, ipfndx::Ref{Cint}, fsize::Ref{Cint}, fstvar::Ref{Cint},
                       lstvar::Ref{Cint}, nchild::Ref{Cint}, sibl::Ptr{Cint}, xnod::Ptr{Cint},
                       nnods::Ref{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, nsuper::Ref{Cint},
                       nofsub::Ref{Cint}, link::Ptr{Cint}, nodmap::Ptr{Cint}, neqns::Ref{Cint},
                       mask::Ptr{Cint}, nactiv::Ref{Cint}, error::Ref{Cint})::Cvoid
end

function ma46o(js, lstvar, bsinvp, xnod, nnods, ipielt, nels, ielt, lielt, elseq, numel, nfound,
               link, nodmap, neqns, mask)
  @ccall libhsl.ma46o_(js::Ref{Cint}, lstvar::Ref{Cint}, bsinvp::Ptr{Cint}, xnod::Ptr{Cint},
                       nnods::Ref{Cint}, ipielt::Ptr{Cint}, nels::Ref{Cint}, ielt::Ptr{Cint},
                       lielt::Ref{Cint}, elseq::Ptr{Cint}, numel::Ref{Cint}, nfound::Ref{Cint},
                       link::Ptr{Cint}, nodmap::Ptr{Cint}, neqns::Ref{Cint}, mask::Ptr{Cint})::Cvoid
end

function ma46p(js, lstvar, link, nacteq, xfindx, nsuper, findx, nofsub, marker)
  @ccall libhsl.ma46p_(js::Ref{Cint}, lstvar::Ref{Cint}, link::Ptr{Cint}, nacteq::Ref{Cint},
                       xfindx::Ptr{Cint}, nsuper::Ref{Cint}, findx::Ptr{Cint}, nofsub::Ref{Cint},
                       marker::Ptr{Cint})::Cvoid
end

function ma46q(f, nchild, sibl, xfindx, nsuper, findx, nofsub, marker, nacteq, frtmat, genelm,
               lstack, stkred, locind)
  @ccall libhsl.ma46q_(f::Ref{Cint}, nchild::Ref{Cint}, sibl::Ptr{Cint}, xfindx::Ptr{Cint},
                       nsuper::Ref{Cint}, findx::Ptr{Cint}, nofsub::Ref{Cint}, marker::Ptr{Cint},
                       nacteq::Ref{Cint}, frtmat::Ptr{Float32}, genelm::Ptr{Float32},
                       lstack::Ref{Cint}, stkred::Ref{Cint}, locind::Ptr{Cint})::Cvoid
end

function ma46r(f, numel, elseq, ipielt, nels, ielt, lielt, ivar, xnod, bsinvp, nnods, marker,
               nacteq, frtmat, elmat, locind)
  @ccall libhsl.ma46r_(f::Ref{Cint}, numel::Ref{Cint}, elseq::Ptr{Cint}, ipielt::Ptr{Cint},
                       nels::Ref{Cint}, ielt::Ptr{Cint}, lielt::Ref{Cint}, ivar::Ptr{Cint},
                       xnod::Ptr{Cint}, bsinvp::Ptr{Cint}, nnods::Ref{Cint}, marker::Ptr{Cint},
                       nacteq::Ref{Cint}, frtmat::Ptr{Float32}, elmat::Ptr{Float32},
                       locind::Ptr{Cint})::Cvoid
end

function ma46s(js, xfindx, nsuper, findx, nofsub, frtmat, f, s, srow, k, accept, u, drop)
  @ccall libhsl.ma46s_(js::Ref{Cint}, xfindx::Ptr{Cint}, nsuper::Ref{Cint}, findx::Ptr{Cint},
                       nofsub::Ref{Cint}, frtmat::Ptr{Float32}, f::Ref{Cint}, s::Ref{Cint},
                       srow::Ref{Cint}, k::Ref{Cint}, accept::Ref{Cint}, u::Ref{Float32},
                       drop::Ref{Float32})::Cvoid
end

function ma46t(nsuper, xfindx, findx, a, lpw, msglvl)
  @ccall libhsl.ma46t_(nsuper::Ref{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, a::Ptr{Float32},
                       lpw::Ref{Cint}, msglvl::Ref{Cint})::Cvoid
end

function ma46v(nsuper, nacteq, nrhs, nofsub, sibl, xfindx, findx, bsperm, b, ldb, info, msglvl,
               output)
  @ccall libhsl.ma46v_(nsuper::Ref{Cint}, nacteq::Ref{Cint}, nrhs::Ref{Cint}, nofsub::Ref{Cint},
                       sibl::Ptr{Cint}, xfindx::Ptr{Cint}, findx::Ptr{Cint}, bsperm::Ptr{Cint},
                       b::Ptr{Float32}, ldb::Ref{Cint}, info::Ptr{Cint}, msglvl::Ref{Cint},
                       output::Ref{Cint})::Cvoid
end

function ma46x(m, n, a, lda, lpw)
  @ccall libhsl.ma46x_(m::Ref{Cint}, n::Ref{Cint}, a::Ptr{Float32}, lda::Ref{Cint},
                       lpw::Ref{Cint})::Cvoid
end

function ma46y(n, sx, incx, sy, incy)
  @ccall libhsl.ma46y_(n::Ref{Cint}, sx::Ptr{Cint}, incx::Ref{Cint}, sy::Ptr{Cint},
                       incy::Ref{Cint})::Cvoid
end

function ma46z(nnods, perm, invp, newprm)
  @ccall libhsl.ma46z_(nnods::Ref{Cint}, perm::Ptr{Cint}, invp::Ptr{Cint}, newprm::Ptr{Cint})::Cvoid
end
