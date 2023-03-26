function genbtf(nrows, ncols, colstr, rowidx, rowstr, colidx, w, rnto, cnto, nhrows, nhcols, hrzcmp, nsrows, sqcmpn, nvrows, nvcols, vrtcmp, rcmstr, ccmstr)
  @ccall libhsl.genbtf_(nrows::Ref{Cint}, ncols::Ref{Cint}, colstr::Ptr{Cint}, rowidx::Ptr{Cint}, rowstr::Ptr{Cint}, colidx::Ptr{Cint}, w::Ptr{Cint}, rnto::Ptr{Cint}, cnto::Ptr{Cint}, nhrows::Ref{Cint}, nhcols::Ref{Cint}, hrzcmp::Ref{Cint}, nsrows::Ref{Cint}, sqcmpn::Ref{Cint}, nvrows::Ref{Cint}, nvcols::Ref{Cint}, vrtcmp::Ref{Cint}, rcmstr::Ptr{Cint}, ccmstr::Ptr{Cint})::Cvoid
end
