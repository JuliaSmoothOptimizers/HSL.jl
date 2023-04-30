function mc37ad(n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt, laelt, aelt, iw, icntl,
                info)
    @ccall libhsl.mc37ad_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                          a::Ptr{Float64}, ip::Ptr{Cint}, lielt::Ref{Cint},
                          numelt::Ref{Cint}, ptrelt::Ptr{Cint}, ielt::Ptr{Cint},
                          laelt::Ref{Cint}, aelt::Ptr{Float64}, iw::Ptr{Cint},
                          icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc37bd(n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt, aelt, laelt)
    @ccall libhsl.mc37bd_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float64}, irn::Ptr{Cint},
                          jcn::Ptr{Cint}, ip::Ptr{Cint}, numelt::Ref{Cint},
                          ptrelt::Ptr{Cint}, ielt::Ptr{Cint}, lielt::Ref{Cint},
                          aelt::Ptr{Float64}, laelt::Ref{Cint})::Cvoid
end

function mc37a(n, ne, irn, jcn, a, ip, lielt, numelt, ptrelt, ielt, laelt, aelt, iw, icntl,
               info)
    @ccall libhsl.mc37a_(n::Ref{Cint}, ne::Ref{Cint}, irn::Ptr{Cint}, jcn::Ptr{Cint},
                         a::Ptr{Float32}, ip::Ptr{Cint}, lielt::Ref{Cint},
                         numelt::Ref{Cint}, ptrelt::Ptr{Cint}, ielt::Ptr{Cint},
                         laelt::Ref{Cint}, aelt::Ptr{Float32}, iw::Ptr{Cint},
                         icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc37b(n, ne, a, irn, jcn, ip, numelt, ptrelt, ielt, lielt, aelt, laelt)
    @ccall libhsl.mc37b_(n::Ref{Cint}, ne::Ref{Cint}, a::Ptr{Float32}, irn::Ptr{Cint},
                         jcn::Ptr{Cint}, ip::Ptr{Cint}, numelt::Ref{Cint},
                         ptrelt::Ptr{Cint}, ielt::Ptr{Cint}, lielt::Ref{Cint},
                         aelt::Ptr{Float32}, laelt::Ref{Cint})::Cvoid
end
