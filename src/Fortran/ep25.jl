function ep25id(n, mpi_comm, keep, rkeep)
  @ccall libhsl.ep25id_(n::Ref{Cint}, mpi_comm::Ref{Cint}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ep25ad(localn, el, er, acc, leig, lx, lalfa, lp, nlan, iflag, u, v, eig, jeig, neig, x, del, nu, alfa, beta, keep, rkeep)
  @ccall libhsl.ep25ad_(localn::Ref{Cint}, el::Ref{Float64}, er::Ref{Float64}, acc::Ref{Float64}, leig::Ref{Cint}, lx::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, nlan::Ref{Cint}, iflag::Ref{Cint}, u::Ptr{Float64}, v::Ptr{Float64}, eig::Ptr{Float64}, jeig::Ptr{Cint}, neig::Ref{Cint}, x::Ptr{Float64}, del::Ptr{Float64}, nu::Ptr{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, keep::Ptr{Cint}, rkeep::Ptr{Float64})::Cvoid
end

function ep25cd(j, lalfa, alfa, beta, e, enorm, err, bnd, match)
  @ccall libhsl.ep25cd_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, e::Ref{Float64}, enorm::Ref{Float64}, err::Ref{Float64}, bnd::Ref{Float64}, match::Ref{Cint})::Cvoid
end

function ep25dd(n, alfa, beta, x, del, nu, dr, nur)
  @ccall libhsl.ep25dd_(n::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, x::Ref{Float64}, del::Ref{Float64}, nu::Ref{Cint}, dr::Ref{Float64}, nur::Ref{Cint})::Cvoid
end

function ep25ed(localn, lalfa, lp, jlan, eig, jeig, neig, alfa, beta, ly, lz, iflag, y, w, z, keep)
  @ccall libhsl.ep25ed_(localn::Ref{Cint}, lalfa::Ref{Cint}, lp::Ref{Cint}, jlan::Ref{Cint}, eig::Ptr{Float64}, jeig::Ptr{Cint}, neig::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, ly::Ref{Cint}, lz::Ref{Cint}, iflag::Ref{Cint}, y::Ptr{Float64}, w::Ptr{Float64}, z::Ptr{Float64}, keep::Ptr{Cint})::Cvoid
end

function ep25gd(j, lalfa, alfa, beta, e, match, z)
  @ccall libhsl.ep25gd_(j::Ref{Cint}, lalfa::Ref{Cint}, alfa::Ptr{Float64}, beta::Ptr{Float64}, e::Ref{Float64}, match::Ref{Cint}, z::Ptr{Float64})::Cvoid
end

function ep25hd(sum, mpi_comm)
  @ccall libhsl.ep25hd_(sum::Ref{Float64}, mpi_comm::Ref{Cint})::Cvoid
end
