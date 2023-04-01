mutable struct mi28_control{T}
    f_arrays::Cint
    alpha::T
    check::Bool
    iorder::Cint
    iscale::Cint
    lowalpha::T
    maxshift::Cint
    rrt::Bool
    shift_factor::T
    shift_factor2::T
    small::T
    tau1::T
    tau2::T
    unit_error::Cint
    unit_warning::Cint
end

function mi28_default_control_s(control)
    @ccall libhsl.mi28_default_control_s(control::Ref{mi28_control{Float32}})::Cvoid
end

mutable struct mi28_info{T}
    band_after::Cint
    band_before::Cint
    dup::Cint
    flag::Cint
    flag61::Cint
    flag64::Cint
    flag68::Cint
    flag77::Cint
    nrestart::Cint
    nshift::Cint
    oor::Cint
    profile_before::T
    profile_after::T
    size_r::Clong
    stat::Cint
    alpha::T
end

function mi28_factorize_s(n, ptr, row, val, lsize, rsize, keep, control, info, scale, perm)
    @ccall libhsl.mi28_factorize_s(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                   val::Ptr{Float32}, lsize::Cint, rsize::Cint,
                                   keep::Ptr{Ptr{Cvoid}}, control::Ref{mi28_control{Float32}},
                                   info::Ref{mi28_info{Float32}}, scale::Ptr{Float32},
                                   perm::Ptr{Cint})::Cvoid
end

function mi28_precondition_s(n, keep, z, y, info)
    @ccall libhsl.mi28_precondition_s(n::Cint, keep::Ptr{Ptr{Cvoid}},
                                      z::Ptr{Float32}, y::Ptr{Float32},
                                      info::Ref{mi28_info{Float32}})::Cvoid
end

function mi28_solve_s(trans, n, keep, z, y, info)
    @ccall libhsl.mi28_solve_s(trans::Bool, n::Cint, keep::Ptr{Ptr{Cvoid}},
                               z::Ptr{Float32}, y::Ptr{Float32},
                               info::Ref{mi28_info{Float32}})::Cvoid
end

function mi28_finalise_s(keep, info)
    @ccall libhsl.mi28_finalise_s(keep::Ptr{Ptr{Cvoid}}, info::Ref{mi28_info{Float32}})::Cvoid
end

function mi28_default_control_d(control)
    @ccall libhsl.mi28_default_control_d(control::Ref{mi28_control{Float64}})::Cvoid
end

function mi28_factorize_d(n, ptr, row, val, lsize, rsize, keep, control, info, scale, perm)
    @ccall libhsl.mi28_factorize_d(n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                   val::Ptr{Float64}, lsize::Cint, rsize::Cint,
                                   keep::Ptr{Ptr{Cvoid}}, control::Ref{mi28_control{Float64}},
                                   info::Ref{mi28_info{Float64}}, scale::Ptr{Float64},
                                   perm::Ptr{Cint})::Cvoid
end

function mi28_precondition_d(n, keep, z, y, info)
    @ccall libhsl.mi28_precondition_d(n::Cint, keep::Ptr{Ptr{Cvoid}},
                                      z::Ptr{Float64}, y::Ptr{Float64},
                                      info::Ref{mi28_info{Float64}})::Cvoid
end

function mi28_solve_d(trans, n, keep, z, y, info)
    @ccall libhsl.mi28_solve_d(trans::Bool, n::Cint, keep::Ptr{Ptr{Cvoid}},
                               z::Ptr{Float64}, y::Ptr{Float64},
                               info::Ref{mi28_info{Float64}})::Cvoid
end

function mi28_finalise_d(keep, info)
    @ccall libhsl.mi28_finalise_d(keep::Ptr{Ptr{Cvoid}}, info::Ref{mi28_info{Float64}})::Cvoid
end
