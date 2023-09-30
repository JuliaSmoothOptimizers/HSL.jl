function ym01bd(n, m, perm, invprm)
  @ccall libhsl.ym01bd_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end

function ym01b(n, m, perm, invprm)
  @ccall libhsl.ym01b_(n::Ref{Cint}, m::Ref{Cint}, perm::Ptr{Cint}, invprm::Ptr{Cint})::Cvoid
end
