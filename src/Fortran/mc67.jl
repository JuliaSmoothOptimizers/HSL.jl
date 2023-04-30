function mc67id(icntl)
    @ccall libhsl.mc67id_(icntl::Ptr{Cint})::Cvoid
end

function mc67ad(n, ljcn, jcn, rowptr, perm, liw, iw, icntl, info, rinfo)
    @ccall libhsl.mc67ad_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                          perm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                          info::Ptr{Cint}, rinfo::Ptr{Float64})::Cvoid
end

function mc67bd(n, ljcn, jcn, rowptr, second, numsec, numft, perm, invpm, start, next,
                tgain, icntl, npass)
    @ccall libhsl.mc67bd_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                          second::Ptr{Cint}, numsec::Ptr{Cint}, numft::Ptr{Cint},
                          perm::Ptr{Cint}, invpm::Ptr{Cint}, start::Ptr{Cint},
                          next::Ptr{Cint}, tgain::Ref{Float64}, icntl::Ptr{Cint},
                          npass::Ref{Cint})::Cvoid
end

function mc67cd(n, ljcn, jcn, rowptr, diag, gains, numft, perm, invpm, steps, first, tgain,
                icntl, npass)
    @ccall libhsl.mc67cd_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                          diag::Ptr{Cint}, gains::Ptr{Cint}, numft::Ptr{Cint},
                          perm::Ptr{Cint}, invpm::Ptr{Cint}, steps::Ptr{Cint},
                          first::Ptr{Cint}, tgain::Ref{Float64}, icntl::Ptr{Cint},
                          npass::Ref{Cint})::Cvoid
end

function mc67dd(n, ljcn, jcn, rowptr, perm, invpm, front)
    @ccall libhsl.mc67dd_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                          perm::Ptr{Cint}, invpm::Ptr{Cint}, front::Ref{Float64})::Cvoid
end

function mc67i(icntl)
    @ccall libhsl.mc67i_(icntl::Ptr{Cint})::Cvoid
end

function mc67a(n, ljcn, jcn, rowptr, perm, liw, iw, icntl, info, rinfo)
    @ccall libhsl.mc67a_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                         perm::Ptr{Cint}, liw::Ref{Cint}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                         info::Ptr{Cint}, rinfo::Ptr{Float32})::Cvoid
end

function mc67b(n, ljcn, jcn, rowptr, second, numsec, numft, perm, invpm, start, next, tgain,
               icntl, npass)
    @ccall libhsl.mc67b_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                         second::Ptr{Cint}, numsec::Ptr{Cint}, numft::Ptr{Cint},
                         perm::Ptr{Cint}, invpm::Ptr{Cint}, start::Ptr{Cint},
                         next::Ptr{Cint}, tgain::Ref{Float32}, icntl::Ptr{Cint},
                         npass::Ref{Cint})::Cvoid
end

function mc67c(n, ljcn, jcn, rowptr, diag, gains, numft, perm, invpm, steps, first, tgain,
               icntl, npass)
    @ccall libhsl.mc67c_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                         diag::Ptr{Cint}, gains::Ptr{Cint}, numft::Ptr{Cint},
                         perm::Ptr{Cint}, invpm::Ptr{Cint}, steps::Ptr{Cint},
                         first::Ptr{Cint}, tgain::Ref{Float32}, icntl::Ptr{Cint},
                         npass::Ref{Cint})::Cvoid
end

function mc67d(n, ljcn, jcn, rowptr, perm, invpm, front)
    @ccall libhsl.mc67d_(n::Ref{Cint}, ljcn::Ref{Cint}, jcn::Ptr{Cint}, rowptr::Ptr{Cint},
                         perm::Ptr{Cint}, invpm::Ptr{Cint}, front::Ref{Float32})::Cvoid
end
