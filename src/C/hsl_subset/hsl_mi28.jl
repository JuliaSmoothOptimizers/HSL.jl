mutable struct Mi28Control{T, INT}
  f_arrays::INT
  alpha::T
  check::Bool
  iorder::INT
  iscale::INT
  lowalpha::T
  maxshift::INT
  rrt::Bool
  shift_factor::T
  shift_factor2::T
  small::T
  tau1::T
  tau2::T
  unit_error::INT
  unit_warning::INT

  Mi28Control{T, INT}() where {T,INT} = new{T, INT}()

  function Mi28Control{T, INT}(f_arrays, alpha, check, iorder, iscale, lowalpha, maxshift, rrt,
                               shift_factor, shift_factor2, small, tau1, tau2, unit_error,
                               unit_warning) where {T,INT}
    return new{T, INT}(f_arrays, alpha, check, iorder, iscale, lowalpha, maxshift, rrt,
                       shift_factor, shift_factor2, small, tau1, tau2, unit_error, unit_warning)
  end
end

mutable struct Mi28Info{T, INT}
  band_after::INT
  band_before::INT
  dup::INT
  flag::INT
  flag61::INT
  flag64::INT
  flag68::INT
  flag77::INT
  nrestart::INT
  nshift::INT
  oor::INT
  profile_before::T
  profile_after::T
  size_r::Int64
  stat::INT
  alpha::T

  Mi28Info{T, INT}() where {T,INT} = new{T, INT}()

  function Mi28Info{T, INT}(band_after, band_before, dup, flag, flag61, flag64, flag68, flag77,
                            nrestart, nshift, oor, profile_before, profile_after, size_r, stat,
                            alpha) where {T,INT}
    return new{T, INT}(band_after, band_before, dup, flag, flag61, flag64, flag68, flag77, nrestart,
                       nshift, oor, profile_before, profile_after, size_r, stat, alpha)
  end
end

function mi28_default_control(::Type{Float32}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi28_default_control_s(control::Ref{Mi28Control{Float32, Int32}})::Cvoid
end

function mi28_default_control(::Type{Float64}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi28_default_control_d(control::Ref{Mi28Control{Float64, Int32}})::Cvoid
end

function mi28_default_control(::Type{Float128}, ::Type{Int32}, control)
  @ccall libhsl_subset.mi28_default_control_q(control::Ref{Mi28Control{Float128, Int32}})::Cvoid
end

function mi28_default_control(::Type{Float32}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi28_default_control_s_64(control::Ref{Mi28Control{Float32, Int64}})::Cvoid
end

function mi28_default_control(::Type{Float64}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi28_default_control_d_64(control::Ref{Mi28Control{Float64, Int64}})::Cvoid
end

function mi28_default_control(::Type{Float128}, ::Type{Int64}, control)
  @ccall libhsl_subset_64.mi28_default_control_q_64(control::Ref{Mi28Control{Float128, Int64}})::Cvoid
end

function mi28_factorize(::Type{Float32}, ::Type{Int32}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset.mi28_factorize_s(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float32},
                                        lsize::Int32, rsize::Int32, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi28Control{Float32, Int32}},
                                        info::Ref{Mi28Info{Float32, Int32}},
                                        scale::Ptr{Float32}, perm::Ptr{Int32})::Cvoid
end

function mi28_factorize(::Type{Float64}, ::Type{Int32}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset.mi28_factorize_d(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float64},
                                        lsize::Int32, rsize::Int32, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi28Control{Float64, Int32}},
                                        info::Ref{Mi28Info{Float64, Int32}},
                                        scale::Ptr{Float64}, perm::Ptr{Int32})::Cvoid
end

function mi28_factorize(::Type{Float128}, ::Type{Int32}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset.mi28_factorize_q(n::Int32, ptr::Ptr{Int32}, row::Ptr{Int32},
                                        val::Ptr{Float128},
                                        lsize::Int32, rsize::Int32, keep::Ptr{Ptr{Cvoid}},
                                        control::Ref{Mi28Control{Float128, Int32}},
                                        info::Ref{Mi28Info{Float128, Int32}},
                                        scale::Ptr{Float128}, perm::Ptr{Int32})::Cvoid
end

function mi28_factorize(::Type{Float32}, ::Type{Int64}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset_64.mi28_factorize_s_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float32},
                                              lsize::Int64, rsize::Int64, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi28Control{Float32, Int64}},
                                              info::Ref{Mi28Info{Float32, Int64}},
                                              scale::Ptr{Float32}, perm::Ptr{Int64})::Cvoid
end

function mi28_factorize(::Type{Float64}, ::Type{Int64}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset_64.mi28_factorize_d_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float64},
                                              lsize::Int64, rsize::Int64, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi28Control{Float64, Int64}},
                                              info::Ref{Mi28Info{Float64, Int64}},
                                              scale::Ptr{Float64}, perm::Ptr{Int64})::Cvoid
end

function mi28_factorize(::Type{Float128}, ::Type{Int64}, n, ptr, row, val, lsize, rsize, keep,
                        control, info, scale, perm)
  @ccall libhsl_subset_64.mi28_factorize_q_64(n::Int64, ptr::Ptr{Int64}, row::Ptr{Int64},
                                              val::Ptr{Float128},
                                              lsize::Int64, rsize::Int64, keep::Ptr{Ptr{Cvoid}},
                                              control::Ref{Mi28Control{Float128, Int64}},
                                              info::Ref{Mi28Info{Float128, Int64}},
                                              scale::Ptr{Float128}, perm::Ptr{Int64})::Cvoid
end

function mi28_precondition(::Type{Float32}, ::Type{Int32}, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_precondition_s(n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float32},
                                           y::Ptr{Float32},
                                           info::Ref{Mi28Info{Float32, Int32}})::Cvoid
end

function mi28_precondition(::Type{Float64}, ::Type{Int32}, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_precondition_d(n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float64},
                                           y::Ptr{Float64},
                                           info::Ref{Mi28Info{Float64, Int32}})::Cvoid
end

function mi28_precondition(::Type{Float128}, ::Type{Int32}, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_precondition_q(n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float128},
                                           y::Ptr{Float128},
                                           info::Ref{Mi28Info{Float128, Int32}})::Cvoid
end

function mi28_precondition(::Type{Float32}, ::Type{Int64}, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_precondition_s_64(n::Int64, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float32},
                                                 y::Ptr{Float32},
                                                 info::Ref{Mi28Info{Float32, Int64}})::Cvoid
end

function mi28_precondition(::Type{Float64}, ::Type{Int64}, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_precondition_d_64(n::Int64, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float64},
                                                 y::Ptr{Float64},
                                                 info::Ref{Mi28Info{Float64, Int64}})::Cvoid
end

function mi28_precondition(::Type{Float128}, ::Type{Int64}, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_precondition_q_64(n::Int64, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float128},
                                                 y::Ptr{Float128},
                                                 info::Ref{Mi28Info{Float128, Int64}})::Cvoid
end

function mi28_solve(::Type{Float32}, ::Type{Int32}, trans, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_solve_s(trans::Bool, n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float32},
                                    y::Ptr{Float32}, info::Ref{Mi28Info{Float32, Int32}})::Cvoid
end

function mi28_solve(::Type{Float64}, ::Type{Int32}, trans, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_solve_d(trans::Bool, n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float64},
                                    y::Ptr{Float64}, info::Ref{Mi28Info{Float64, Int32}})::Cvoid
end

function mi28_solve(::Type{Float128}, ::Type{Int32}, trans, n, keep, z, y, info)
  @ccall libhsl_subset.mi28_solve_q(trans::Bool, n::Int32, keep::Ptr{Ptr{Cvoid}}, z::Ptr{Float128},
                                    y::Ptr{Float128}, info::Ref{Mi28Info{Float128, Int32}})::Cvoid
end

function mi28_solve(::Type{Float32}, ::Type{Int64}, trans, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_solve_s_64(trans::Bool, n::Int64, keep::Ptr{Ptr{Cvoid}},
                                          z::Ptr{Float32},
                                          y::Ptr{Float32},
                                          info::Ref{Mi28Info{Float32, Int64}})::Cvoid
end

function mi28_solve(::Type{Float64}, ::Type{Int64}, trans, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_solve_d_64(trans::Bool, n::Int64, keep::Ptr{Ptr{Cvoid}},
                                          z::Ptr{Float64},
                                          y::Ptr{Float64},
                                          info::Ref{Mi28Info{Float64, Int64}})::Cvoid
end

function mi28_solve(::Type{Float128}, ::Type{Int64}, trans, n, keep, z, y, info)
  @ccall libhsl_subset_64.mi28_solve_q_64(trans::Bool, n::Int64, keep::Ptr{Ptr{Cvoid}},
                                          z::Ptr{Float128},
                                          y::Ptr{Float128},
                                          info::Ref{Mi28Info{Float128, Int64}})::Cvoid
end

function mi28_finalise(::Type{Float32}, ::Type{Int32}, keep, info)
  @ccall libhsl_subset.mi28_finalise_s(keep::Ptr{Ptr{Cvoid}},
                                       info::Ref{Mi28Info{Float32, Int32}})::Cvoid
end

function mi28_finalise(::Type{Float64}, ::Type{Int32}, keep, info)
  @ccall libhsl_subset.mi28_finalise_d(keep::Ptr{Ptr{Cvoid}},
                                       info::Ref{Mi28Info{Float64, Int32}})::Cvoid
end

function mi28_finalise(::Type{Float128}, ::Type{Int32}, keep, info)
  @ccall libhsl_subset.mi28_finalise_q(keep::Ptr{Ptr{Cvoid}},
                                       info::Ref{Mi28Info{Float128, Int32}})::Cvoid
end

function mi28_finalise(::Type{Float32}, ::Type{Int64}, keep, info)
  @ccall libhsl_subset_64.mi28_finalise_s_64(keep::Ptr{Ptr{Cvoid}},
                                             info::Ref{Mi28Info{Float32, Int64}})::Cvoid
end

function mi28_finalise(::Type{Float64}, ::Type{Int64}, keep, info)
  @ccall libhsl_subset_64.mi28_finalise_d_64(keep::Ptr{Ptr{Cvoid}},
                                             info::Ref{Mi28Info{Float64, Int64}})::Cvoid
end

function mi28_finalise(::Type{Float128}, ::Type{Int64}, keep, info)
  @ccall libhsl_subset_64.mi28_finalise_q_64(keep::Ptr{Ptr{Cvoid}},
                                             info::Ref{Mi28Info{Float128, Int64}})::Cvoid
end
