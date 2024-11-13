function HSL.ma27iq(icntl, cntl)
  @ccall libhsl_subset.ma27iq_(icntl::Ptr{Cint}, cntl::Ptr{Float128})::Cvoid
end

function HSL.ma27aq(n, nz, irn, icn, iw, liw, ikeep, iw1, nsteps, iflag, icntl, cntl, info, ops)
  @ccall libhsl_subset.ma27aq_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, ikeep::Ptr{Cint}, iw1::Ptr{Cint}, nsteps::Ref{Cint},
                        iflag::Ref{Cint}, icntl::Ptr{Cint}, cntl::Ptr{Float128}, info::Ptr{Cint},
                        ops::Ref{Float128})::Cvoid
end

function HSL.ma27bq(n, nz, irn, icn, a, la, iw, liw, ikeep, nsteps, maxfrt, iw1, icntl, cntl, info)
  @ccall libhsl_subset.ma27bq_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        a::Ptr{Float128},
                        la::Ref{Cint}, iw::Ptr{Cint}, liw::Ref{Cint}, ikeep::Ptr{Cint},
                        nsteps::Ref{Cint}, maxfrt::Ref{Cint}, iw1::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float128}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27cq(n, a, la, iw, liw, w, maxfrt, rhs, iw1, nsteps, icntl, info)
  @ccall libhsl_subset.ma27cq_(n::Ref{Cint}, a::Ptr{Float128}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint},
                        w::Ptr{Float128}, maxfrt::Ref{Cint}, rhs::Ptr{Float128}, iw1::Ptr{Cint},
                        nsteps::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27gq(n, nz, irn, icn, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset.ma27gq_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint},
                        lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint}, flag::Ptr{Cint},
                        iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27hq(n, ipe, iw, lw, iwfr, nv, nxt, lst, ipd, flag, iovflo, ncmpa, fratio)
  @ccall libhsl_subset.ma27hq_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        nv::Ptr{Cint}, nxt::Ptr{Cint}, lst::Ptr{Cint}, ipd::Ptr{Cint},
                        flag::Ptr{Cint}, iovflo::Ref{Cint}, ncmpa::Ref{Cint},
                        fratio::Ref{Float128})::Cvoid
end

function HSL.ma27uq(n, ipe, iw, lw, iwfr, ncmpa)
  @ccall libhsl_subset.ma27uq_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function HSL.ma27jq(n, nz, irn, icn, perm, iw, lw, ipe, iq, flag, iwfr, icntl, info)
  @ccall libhsl_subset.ma27jq_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        perm::Ptr{Cint},
                        iw::Ptr{Cint}, lw::Ref{Cint}, ipe::Ptr{Cint}, iq::Ptr{Cint},
                        flag::Ptr{Cint},
                        iwfr::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27kq(n, ipe, iw, lw, iwfr, ips, ipv, nv, flag, ncmpa)
  @ccall libhsl_subset.ma27kq_(n::Ref{Cint}, ipe::Ptr{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, iwfr::Ref{Cint},
                        ips::Ptr{Cint}, ipv::Ptr{Cint}, nv::Ptr{Cint}, flag::Ptr{Cint},
                        ncmpa::Ref{Cint})::Cvoid
end

function HSL.ma27lq(n, ipe, nv, ips, ne, na, nd, nsteps, nemin)
  @ccall libhsl_subset.ma27lq_(n::Ref{Cint}, ipe::Ptr{Cint}, nv::Ptr{Cint}, ips::Ptr{Cint}, ne::Ptr{Cint},
                        na::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint}, nemin::Ref{Cint})::Cvoid
end

function HSL.ma27mq(n, nz, irn, icn, perm, na, ne, nd, nsteps, lstki, lstkr, iw, info, ops)
  @ccall libhsl_subset.ma27mq_(n::Ref{Cint}, nz::Ref{Cint}, irn::Ptr{Cint}, icn::Ptr{Cint},
                        perm::Ptr{Cint},
                        na::Ptr{Cint}, ne::Ptr{Cint}, nd::Ptr{Cint}, nsteps::Ref{Cint},
                        lstki::Ptr{Cint}, lstkr::Ptr{Cint}, iw::Ptr{Cint}, info::Ptr{Cint},
                        ops::Ref{Float128})::Cvoid
end

function HSL.ma27nq(n, nz, nz1, a, la, irn, icn, iw, liw, perm, iw2, icntl, info)
  @ccall libhsl_subset.ma27nq_(n::Ref{Cint}, nz::Ref{Cint}, nz1::Ref{Cint}, a::Ptr{Float128},
                        la::Ref{Cint},
                        irn::Ptr{Cint}, icn::Ptr{Cint}, iw::Ptr{Cint}, liw::Ref{Cint},
                        perm::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27oq(n, nz, a, la, iw, liw, perm, nstk, nsteps, maxfrt, nelim, iw2, icntl, cntl, info)
  @ccall libhsl_subset.ma27oq_(n::Ref{Cint}, nz::Ref{Cint}, a::Ptr{Float128}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint}, perm::Ptr{Cint}, nstk::Ptr{Cint}, nsteps::Ref{Cint},
                        maxfrt::Ref{Cint}, nelim::Ptr{Cint}, iw2::Ptr{Cint}, icntl::Ptr{Cint},
                        cntl::Ptr{Float128}, info::Ptr{Cint})::Cvoid
end

function HSL.ma27pq(a, iw, j1, j2, itop, ireal, ncmpbr, ncmpbi)
  @ccall libhsl_subset.ma27pq_(a::Ptr{Float128}, iw::Ptr{Cint}, j1::Ref{Cint}, j2::Ref{Cint},
                        itop::Ref{Cint}, ireal::Ref{Cint}, ncmpbr::Ref{Cint},
                        ncmpbi::Ref{Cint})::Cvoid
end

function HSL.ma27qq(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset.ma27qq_(n::Ref{Cint}, a::Ptr{Float128}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint},
                        w::Ptr{Float128}, maxfnt::Ref{Cint}, rhs::Ptr{Float128}, iw2::Ptr{Cint},
                        nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end

function HSL.ma27rq(n, a, la, iw, liw, w, maxfnt, rhs, iw2, nblk, latop, icntl)
  @ccall libhsl_subset.ma27rq_(n::Ref{Cint}, a::Ptr{Float128}, la::Ref{Cint}, iw::Ptr{Cint},
                        liw::Ref{Cint},
                        w::Ptr{Float128}, maxfnt::Ref{Cint}, rhs::Ptr{Float128}, iw2::Ptr{Cint},
                        nblk::Ref{Cint}, latop::Ref{Cint}, icntl::Ptr{Cint})::Cvoid
end


for (iname, aname, bname, cname, T) in ((:ma27iq, :ma27aq, :ma27bq, :ma27cq, :Float128),)
  @eval begin
    function HSL.Ma27(A::SparseMatrixCSC{$T})
      n = LinearAlgebra.checksquare(A)
      nz = nnz(A)
      irn, icn, a = findnz(A)
      la = 4 * nz
      liw = 2 * (2 * nz + 3 * n + 1)
      iw = Vector{Cint}(undef, liw)
      w = Vector{$T}(undef, 0)
      ikeep = Vector{Cint}(undef, 3 * n)
      iw1 = Vector{Cint}(undef, 2 * n)
      nsteps = Ref{Cint}(0)
      maxfrt = Ref{Cint}(1)
      iflag = 0
      icntl = Vector{Cint}(undef, 30)
      cntl = Vector{$T}(undef, 5)
      info = Vector{Cint}(undef, 20)
      ops = Ref{$T}(0)
      HSL.$iname(icntl, cntl)
      return HSL.Ma27{$T}(n, nz, Cint.(irn), Cint.(icn), a, la, iw, liw, w, ikeep, iw1,
                     nsteps, maxfrt, iflag, icntl, cntl, info, ops)
    end

    function HSL.ma27_update!(F::HSL.Ma27{$T}, A::SparseMatrixCSC{$T})
      copyto!(F.a, A.nzval) 
      return F
    end

    function HSL.ma27_analyze!(F::HSL.Ma27{$T})
      HSL.$aname(F.n, F.nz, F.irn, F.icn, F.iw, F.liw, F.ikeep, F.iw1, F.nsteps, F.iflag, F.icntl, F.cntl, F.info, F.ops)
      return F
    end

    function HSL.ma27_factorize!(F::HSL.Ma27{$T})
      HSL.$bname(F.n, F.nz, F.irn, F.icn, F.a, F.la, F.iw, F.liw, F.ikeep, F.nsteps, F.maxfrt, F.iw1, F.icntl, F.cntl, F.info)
      resize!(F.w, F.maxfrt[])
      return F
    end

    function HSL.ma27_solve!(F::HSL.Ma27{$T}, x::Vector{$T}, b::Vector{$T})
      copyto!(x, b)
      HSL.$cname(F.n, F.a, F.la, F.iw, F.liw, F.w, F.maxfrt, x, F.iw1, F.nsteps, F.icntl, F.info)
      return b
    end

    function HSL.ma27(A::SparseMatrixCSC{$T}, b::Vector{$T})
      F = HSL.Ma27(A)
      HSL.ma27_analyze!(F)
      HSL.ma27_factorize!(F)
      x = Vector{$T}(undef, A.n)
      HSL.ma27_solve!(F, x, b)
    end
  end
end
