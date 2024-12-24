function mf36ad(nmax, nzmax, title, elt, nrow, ncol, nnzero, colptr, rowind, values, maxrhs, nrhs,
                nzrhs, rhsptr, rhsind, rhsval, guess, soln, iw, icntl, info)
  @ccall libhsl.mf36ad_(nmax::Ref{Cint}, nzmax::Ref{Cint}, title::Ptr{UInt8}, elt::Ref{Cint},
                        nrow::Ref{Cint}, ncol::Ref{Cint}, nnzero::Ref{Cint}, colptr::Ptr{Cint},
                        rowind::Ptr{Cint}, values::Ptr{ComplexF64}, maxrhs::Ref{Cint},
                        nrhs::Ref{Cint}, nzrhs::Ref{Cint}, rhsptr::Ptr{Cint}, rhsind::Ptr{Cint},
                        rhsval::Ptr{ComplexF64}, guess::Ptr{ComplexF64}, soln::Ptr{ComplexF64},
                        iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, 80::Csize_t)::Cvoid
end

function mf36bd(n, ind, fmtind, lunit)
  @ccall libhsl.mf36bd_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                        16::Csize_t)::Cvoid
end

function mf36cd(n, a, fmta, lunit)
  @ccall libhsl.mf36cd_(n::Ref{Cint}, a::Ptr{ComplexF64}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                        20::Csize_t)::Cvoid
end

function mf36a(nmax, nzmax, title, elt, nrow, ncol, nnzero, colptr, rowind, values, maxrhs, nrhs,
               nzrhs, rhsptr, rhsind, rhsval, guess, soln, iw, icntl, info)
  @ccall libhsl.mf36a_(nmax::Ref{Cint}, nzmax::Ref{Cint}, title::Ptr{UInt8}, elt::Ref{Cint},
                       nrow::Ref{Cint}, ncol::Ref{Cint}, nnzero::Ref{Cint}, colptr::Ptr{Cint},
                       rowind::Ptr{Cint}, values::Ptr{ComplexF32}, maxrhs::Ref{Cint},
                       nrhs::Ref{Cint}, nzrhs::Ref{Cint}, rhsptr::Ptr{Cint}, rhsind::Ptr{Cint},
                       rhsval::Ptr{ComplexF32}, guess::Ptr{ComplexF32}, soln::Ptr{ComplexF32},
                       iw::Ptr{Cint}, icntl::Ptr{Cint}, info::Ptr{Cint}, 80::Csize_t)::Cvoid
end

function mf36b(n, ind, fmtind, lunit)
  @ccall libhsl.mf36b_(n::Ref{Cint}, ind::Ptr{Cint}, fmtind::Ptr{UInt8}, lunit::Ref{Cint},
                       16::Csize_t)::Cvoid
end

function mf36c(n, a, fmta, lunit)
  @ccall libhsl.mf36c_(n::Ref{Cint}, a::Ptr{ComplexF32}, fmta::Ptr{UInt8}, lunit::Ref{Cint},
                       20::Csize_t)::Cvoid
end
