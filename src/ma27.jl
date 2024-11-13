export ma27

mutable struct Ma27{T}
  n::Cint
  nz::Cint
  irn::Vector{Cint}
  icn::Vector{Cint}
  a::Vector{T}
  la::Cint
  iw::Vector{Cint}
  liw::Cint
  w::Vector{T}
  ikeep::Vector{Cint}
  iw1::Vector{Cint}
  nsteps::Ref{Cint}
  maxfrt::Ref{Cint}
  iflag::Cint
  icntl::Vector{Cint}
  cntl::Vector{T}
  info::Vector{Cint}
  ops::Ref{T}
end

for (iname, aname, bname, cname, T) in ((:ma27i , :ma27a , :ma27b , :ma27c , :Float32),
                                        (:ma27id, :ma27ad, :ma27bd, :ma27cd, :Float64))
  @eval begin
    function Ma27(A::SparseMatrixCSC{$T})
      n = checksquare(A)
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
      $iname(icntl, cntl)
      return HSL.Ma27{$T}(n, nz, Cint.(irn), Cint.(icn), a, la, iw, liw, w, ikeep, iw1,
                          nsteps, maxfrt, iflag, icntl, cntl, info, ops)
    end

    function ma27_update!(F::Ma27{$T}, A::SparseMatrixCSC{$T})
      copyto!(F.a, A.nzval) 
      return F
    end

    function ma27_analyze!(F::Ma27{$T})
      $aname(F.n, F.nz, F.irn, F.icn, F.iw, F.liw, F.ikeep, F.iw1, F.nsteps, F.iflag, F.icntl, F.cntl, F.info, F.ops)
      return F
    end

    function ma27_factorize!(F::Ma27{$T})
      $bname(F.n, F.nz, F.irn, F.icn, F.a, F.la, F.iw, F.liw, F.ikeep, F.nsteps, F.maxfrt, F.iw1, F.icntl, F.cntl, F.info)
      resize!(F.w, F.maxfrt[])
      return F
    end

    function ma27_solve!(F::Ma27{$T}, x::Vector{$T}, b::Vector{$T})
      copyto!(x, b)
      $cname(F.n, F.a, F.la, F.iw, F.liw, F.w, F.maxfrt, x, F.iw1, F.nsteps, F.icntl, F.info)
      return b
    end

    function ma27(A::SparseMatrixCSC{$T}, b::Vector{$T})
      F = Ma27(A)
      ma27_analyze!(F)
      ma27_factorize!(F)
      x = Vector{$T}(undef, A.n)
      ma27_solve!(F, x, b)
    end
  end
end
