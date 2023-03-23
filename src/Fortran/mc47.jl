function mc47id(icntl)
  @ccall libhsl.mc47id_(icntl::Ptr{Cint})::Cvoid
end

function mc47ad(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl.mc47ad_(n::Ref{Cint}, ne::Ref{Cint}, pe::Ptr{Cint}, iw::Ptr{Cint}, iwlen::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc47bd(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl.mc47bd_(n::Ref{Cint}, iwlen::Ref{Cint}, pe::Ptr{Cint}, pfree::Ref{Cint}, len::Ptr{Cint}, iw::Ptr{Cint}, nv::Ptr{Cint}, elen::Ptr{Cint}, last::Ptr{Cint}, degree::Ptr{Cint}, head::Ptr{Cint}, denxt::Ptr{Cint}, w::Ptr{Cint}, icntl::Ptr{Cint}, jnfo::Ptr{Cint}, rjnfo::Ptr{Float64})::Cvoid
end

function mc47i(icntl)
  @ccall libhsl.mc47i_(icntl::Ptr{Cint})::Cvoid
end

function mc47a(n, ne, pe, iw, iwlen, icntl, info, rinfo)
  @ccall libhsl.mc47a_(n::Ref{Cint}, ne::Ref{Cint}, pe::Ptr{Cint}, iw::Ptr{Cint}, iwlen::Ref{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc47b(n, iwlen, pe, pfree, len, iw, nv, elen, last, degree, head, denxt, w, icntl, jnfo, rjnfo)
  @ccall libhsl.mc47b_(n::Ref{Cint}, iwlen::Ref{Cint}, pe::Ptr{Cint}, pfree::Ref{Cint}, len::Ptr{Cint}, iw::Ptr{Cint}, nv::Ptr{Cint}, elen::Ptr{Cint}, last::Ptr{Cint}, degree::Ptr{Cint}, head::Ptr{Cint}, denxt::Ptr{Cint}, w::Ptr{Cint}, icntl::Ptr{Cint}, jnfo::Ptr{Cint}, rjnfo::Ptr{Float32})::Cvoid
end
