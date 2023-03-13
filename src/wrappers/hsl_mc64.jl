mutable struct mc64_control
    f_arrays::Cint
    lp::Cint
    wp::Cint
    sp::Cint
    ldiag::Cint
    checking::Cint
end

function mc64_default_control_s(control)
    @ccall libhsl.mc64_default_control_s(control::Ptr{mc64_control})::Cvoid
end

mutable struct mc64_info
    flag::Cint
    more::Cint
    strucrank::Cint
    stat::Cint
end

function mc64_matching_s(job, matrix_type, m, n, ptr, row, cval, control, info, perm, scale)
    @ccall libhsl.mc64_matching_s(job::Cint, matrix_type::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, cval::Ptr{Float32},
                                  control::Ptr{mc64_control}, info::Ptr{mc64_info},
                                  perm::Ptr{Cint}, scale::Ptr{Float32})::Cvoid
end

function mc64_default_control_d(control)
    @ccall libhsl.mc64_default_control_d(control::Ptr{mc64_control})::Cvoid
end

function mc64_matching_d(job, matrix_type, m, n, ptr, row, cval, control, info, perm, scale)
    @ccall libhsl.mc64_matching_d(job::Cint, matrix_type::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, cval::Ptr{Float64},
                                  control::Ptr{mc64_control}, info::Ptr{mc64_info},
                                  perm::Ptr{Cint}, scale::Ptr{Float64})::Cvoid
end

function mc64_default_control_c(control)
    @ccall libhsl.mc64_default_control_c(control::Ptr{mc64_control})::Cvoid
end

function mc64_matching_c(job, matrix_type, m, n, ptr, row, cval, control, info, perm, scale)
    @ccall libhsl.mc64_matching_c(job::Cint, matrix_type::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, cval::Ptr{ComplexF32},
                                  control::Ptr{mc64_control}, info::Ptr{mc64_info},
                                  perm::Ptr{Cint}, scale::Ptr{Float32})::Cvoid
end

function mc64_default_control_z(control)
    @ccall libhsl.mc64_default_control_z(control::Ptr{mc64_control})::Cvoid
end

function mc64_matching_z(job, matrix_type, m, n, ptr, row, cval, control, info, perm, scale)
    @ccall libhsl.mc64_matching_z(job::Cint, matrix_type::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, cval::Ptr{ComplexF64},
                                  control::Ptr{mc64_control}, info::Ptr{mc64_info},
                                  perm::Ptr{Cint}, scale::Ptr{Float64})::Cvoid
end
