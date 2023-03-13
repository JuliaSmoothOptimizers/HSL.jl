mutable struct mc79_control
    f_arrays::Cint
    lp::Cint
    wp::Cint
    mp::Cint
    print_level::Cint
end

function mc79_default_control_i(control)
    @ccall libhsl.mc79_default_control_i(control::Ptr{mc79_control})::Cvoid
end

mutable struct mc79_info
    flag::Cint
    hz_comps::Cint
    vt_comps::Cint
    sq_comps::Cint
    m1::Cint
    m2::Cint
    m3::Cint
    mbar::Cint
    n1::Cint
    n2::Cint
    n3::Cint
    nbar::Cint
    stat::Cint
end

function mc79_matching_i(m, n, ptr, row, rowmatch, colmatch, control, info)
    @ccall libhsl.mc79_matching_i(m::Cint, n::Cint, ptr::Ptr{Cint},
                                  row::Ptr{Cint}, rowmatch::Ptr{Cint}, colmatch::Ptr{Cint},
                                  control::Ptr{mc79_control},
                                  info::Ptr{mc79_info})::Cvoid
end

function mc79_coarse_i(m, n, ptr, row, rowperm, colperm, control, info)
    @ccall libhsl.mc79_coarse_i(m::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                                rowperm::Ptr{Cint}, colperm::Ptr{Cint},
                                control::Ptr{mc79_control}, info::Ptr{mc79_info})::Cvoid
end

function mc79_fine_i(m, n, ptr, row, rowperm, colperm, rowcomp, colcomp, control, info)
    @ccall libhsl.mc79_fine_i(m::Cint, n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                              rowperm::Ptr{Cint}, colperm::Ptr{Cint}, rowcomp::Ptr{Cint},
                              colcomp::Ptr{Cint}, control::Ptr{mc79_control},
                              info::Ptr{mc79_info})::Cvoid
end
