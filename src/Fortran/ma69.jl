function ma69ad(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq,
                spike, vector, jcol, inform)
    @ccall libhsl.ma69ad_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                          bd::Ptr{Float64}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                          lcd::Ref{Cint}, cd::Ptr{Float64}, jcncd::Ptr{Cint},
                          ipcd::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, q::Ptr{Float64},
                          lq::Ref{Cint}, spike::Ptr{Float64}, vector::Ptr{Float64},
                          jcol::Ref{Cint}, inform::Ref{Cint})::Cvoid
end

function ma69bd(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq, rhs,
                x, vector, inform)
    @ccall libhsl.ma69bd_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                          bd::Ptr{Float64}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                          lcd::Ref{Cint}, cd::Ptr{Float64}, jcncd::Ptr{Cint},
                          ipcd::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, q::Ptr{Float64},
                          lq::Ref{Cint}, rhs::Ptr{Float64}, x::Ptr{Float64},
                          vector::Ptr{Float64}, inform::Ref{Cint})::Cvoid
end

function ma69cd(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq,
                spike, vector, dianew, inform)
    @ccall libhsl.ma69cd_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                          bd::Ptr{Float64}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                          lcd::Ref{Cint}, cd::Ptr{Float64}, jcncd::Ptr{Cint},
                          ipcd::Ptr{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, q::Ptr{Float64},
                          lq::Ref{Cint}, spike::Ptr{Float64}, vector::Ptr{Float64},
                          dianew::Ref{Float64}, inform::Ref{Cint})::Cvoid
end

function ma69dd(n, m, iclass, newds, lbd, bd, irnbd, ipbd, jcdrop, lcd, cd, jcncd, ipcd,
                irdrop, r, lr, q, lq, spike, vector, inform)
    @ccall libhsl.ma69dd_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, newds::Ref{Cint},
                          lbd::Ref{Cint}, bd::Ptr{Float64}, irnbd::Ptr{Cint},
                          ipbd::Ptr{Cint}, jcdrop::Ref{Cint}, lcd::Ref{Cint},
                          cd::Ptr{Float64}, jcncd::Ptr{Cint}, ipcd::Ptr{Cint},
                          irdrop::Ref{Cint}, r::Ptr{Float64}, lr::Ref{Cint},
                          q::Ptr{Float64}, lq::Ref{Cint}, spike::Ptr{Float64},
                          vector::Ptr{Float64}, inform::Ref{Cint})::Cvoid
end

function ma69ed(msofar, jbegin, r, lr, q, lq, spike, qused, inform)
    @ccall libhsl.ma69ed_(msofar::Ref{Cint}, jbegin::Ref{Cint}, r::Ptr{Float64},
                          lr::Ref{Cint}, q::Ptr{Float64}, lq::Ref{Cint},
                          spike::Ptr{Float64}, qused::Ref{Cint}, inform::Ref{Cint})::Cvoid
end

function ma69fd(nr, r, lr, x, trans)
    @ccall libhsl.ma69fd_(nr::Ref{Cint}, r::Ptr{Float64}, lr::Ref{Cint}, x::Ptr{Float64},
                          trans::Ref{Cint})::Cvoid
end

function ma69a(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq,
               spike, vector, jcol, inform)
    @ccall libhsl.ma69a_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                         bd::Ptr{Float32}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                         lcd::Ref{Cint}, cd::Ptr{Float32}, jcncd::Ptr{Cint},
                         ipcd::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, q::Ptr{Float32},
                         lq::Ref{Cint}, spike::Ptr{Float32}, vector::Ptr{Float32},
                         jcol::Ref{Cint}, inform::Ref{Cint})::Cvoid
end

function ma69b(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq, rhs,
               x, vector, inform)
    @ccall libhsl.ma69b_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                         bd::Ptr{Float32}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                         lcd::Ref{Cint}, cd::Ptr{Float32}, jcncd::Ptr{Cint},
                         ipcd::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, q::Ptr{Float32},
                         lq::Ref{Cint}, rhs::Ptr{Float32}, x::Ptr{Float32},
                         vector::Ptr{Float32}, inform::Ref{Cint})::Cvoid
end

function ma69c(n, m, iclass, lbd, bd, irnbd, ipbd, lcd, cd, jcncd, ipcd, r, lr, q, lq,
               spike, vector, dianew, inform)
    @ccall libhsl.ma69c_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, lbd::Ref{Cint},
                         bd::Ptr{Float32}, irnbd::Ptr{Cint}, ipbd::Ptr{Cint},
                         lcd::Ref{Cint}, cd::Ptr{Float32}, jcncd::Ptr{Cint},
                         ipcd::Ptr{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, q::Ptr{Float32},
                         lq::Ref{Cint}, spike::Ptr{Float32}, vector::Ptr{Float32},
                         dianew::Ref{Float32}, inform::Ref{Cint})::Cvoid
end

function ma69d(n, m, iclass, newds, lbd, bd, irnbd, ipbd, jcdrop, lcd, cd, jcncd, ipcd,
               irdrop, r, lr, q, lq, spike, vector, inform)
    @ccall libhsl.ma69d_(n::Ref{Cint}, m::Ref{Cint}, iclass::Ref{Cint}, newds::Ref{Cint},
                         lbd::Ref{Cint}, bd::Ptr{Float32}, irnbd::Ptr{Cint},
                         ipbd::Ptr{Cint}, jcdrop::Ref{Cint}, lcd::Ref{Cint},
                         cd::Ptr{Float32}, jcncd::Ptr{Cint}, ipcd::Ptr{Cint},
                         irdrop::Ref{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, q::Ptr{Float32},
                         lq::Ref{Cint}, spike::Ptr{Float32}, vector::Ptr{Float32},
                         inform::Ref{Cint})::Cvoid
end

function ma69e(msofar, jbegin, r, lr, q, lq, spike, qused, inform)
    @ccall libhsl.ma69e_(msofar::Ref{Cint}, jbegin::Ref{Cint}, r::Ptr{Float32},
                         lr::Ref{Cint}, q::Ptr{Float32}, lq::Ref{Cint}, spike::Ptr{Float32},
                         qused::Ref{Cint}, inform::Ref{Cint})::Cvoid
end

function ma69f(nr, r, lr, x, trans)
    @ccall libhsl.ma69f_(nr::Ref{Cint}, r::Ptr{Float32}, lr::Ref{Cint}, x::Ptr{Float32},
                         trans::Ref{Cint})::Cvoid
end
