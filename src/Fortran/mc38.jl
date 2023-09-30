function mc38ad(m, n, ne, colptr, rowind, yesa, values, tcolp, trow, tval)
  @ccall libhsl.mc38ad_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, colptr::Ptr{Cint},
                        rowind::Ptr{Cint}, yesa::Ref{Cint}, values::Ptr{Float64}, tcolp::Ptr{Cint},
                        trow::Ptr{Cint}, tval::Ptr{Float64})::Cvoid
end

function mc38a(m, n, ne, colptr, rowind, yesa, values, tcolp, trow, tval)
  @ccall libhsl.mc38a_(m::Ref{Cint}, n::Ref{Cint}, ne::Ref{Cint}, colptr::Ptr{Cint},
                       rowind::Ptr{Cint}, yesa::Ref{Cint}, values::Ptr{Float32}, tcolp::Ptr{Cint},
                       trow::Ptr{Cint}, tval::Ptr{Float32})::Cvoid
end
