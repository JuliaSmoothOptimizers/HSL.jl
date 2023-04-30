function mc75id(icntl)
    @ccall libhsl.mc75id_(icntl::Ptr{Cint})::Cvoid
end

function mc75ad(n, nz, la, a, irn, jcn, cond, liw, iw, lw, w, icntl, info)
    @ccall libhsl.mc75ad_(n::Ref{Cint}, nz::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float64},
                          irn::Ptr{Cint}, jcn::Ptr{Cint}, cond::Ptr{Float64},
                          liw::Ref{Cint}, iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float64},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc75bd(n, r, w)
    @ccall libhsl.mc75bd_(n::Ref{Cint}, r::Ptr{Float64}, w::Ptr{Float64})::Cvoid
end

function mc75i(icntl)
    @ccall libhsl.mc75i_(icntl::Ptr{Cint})::Cvoid
end

function mc75a(n, nz, la, a, irn, jcn, cond, liw, iw, lw, w, icntl, info)
    @ccall libhsl.mc75a_(n::Ref{Cint}, nz::Ref{Cint}, la::Ref{Cint}, a::Ptr{Float32},
                         irn::Ptr{Cint}, jcn::Ptr{Cint}, cond::Ptr{Float32}, liw::Ref{Cint},
                         iw::Ptr{Cint}, lw::Ref{Cint}, w::Ptr{Float32}, icntl::Ptr{Cint},
                         info::Ptr{Cint})::Cvoid
end

function mc75b(n, r, w)
    @ccall libhsl.mc75b_(n::Ref{Cint}, r::Ptr{Float32}, w::Ptr{Float32})::Cvoid
end
