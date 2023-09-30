function mc36ad(nmax, nzmax, title, elt, nrow, ncol, nnzero, colptr, rowind, values, maxrhs, nrhs,
                nzrhs, rhsptr, rhsind, rhsval, guess, soln, iw, icntl, info)
  @ccall libhsl.mc36ad_(nmax::Ref{Cint}, nzmax::Ref{Cint}, title::Ptr{UInt8}, elt::Ref{Cint},
                        nrow::Ref{Cint}, ncol::Ref{Cint}, nnzero::Ref{Cint}, colptr::Ptr{Cint},
                        rowind::Ptr{Cint}, values::Ptr{Float64}, maxrhs::Ref{Cint}, nrhs::Ref{Cint},
                        nzrhs::Ref{Cint}, rhsptr::Ptr{Cint}, rhsind::Ptr{Cint},
                        rhsval::Ptr{Float64}, guess::Ptr{Float64}, soln::Ptr{Float64},
                        iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint})::Cvoid
end

function mc36bd(n, ind, fmtind, lunit)
  @ccall libhsl.mc36bd_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc36cd(n, a, fmta, lunit)
  @ccall libhsl.mc36cd_(n::Ref{Cint}, a::Ptr{Float64}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc36a(nmax, nzmax, title, elt, nrow, ncol, nnzero, colptr, rowind, values, maxrhs, nrhs,
               nzrhs, rhsptr, rhsind, rhsval, guess, soln, iw, icntl, info)
  @ccall libhsl.mc36a_(nmax::Ref{Cint}, nzmax::Ref{Cint}, title::Ptr{UInt8}, elt::Ref{Cint},
                       nrow::Ref{Cint}, ncol::Ref{Cint}, nnzero::Ref{Cint}, colptr::Ptr{Cint},
                       rowind::Ptr{Cint}, values::Ptr{Float32}, maxrhs::Ref{Cint}, nrhs::Ref{Cint},
                       nzrhs::Ref{Cint}, rhsptr::Ptr{Cint}, rhsind::Ptr{Cint}, rhsval::Ptr{Float32},
                       guess::Ptr{Float32}, soln::Ptr{Float32}, iw::Ptr{Cint}, icntl::Ptr{Cint},
                       info::Ptr{Cint})::Cvoid
end

function mc36b(n, ind, fmtind, lunit)
  @ccall libhsl.mc36b_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end

function mc36c(n, a, fmta, lunit)
  @ccall libhsl.mc36c_(n::Ref{Cint}, a::Ptr{Float32}, fmta::Ptr{UInt8}, lunit::Ref{Cint})::Cvoid
end
