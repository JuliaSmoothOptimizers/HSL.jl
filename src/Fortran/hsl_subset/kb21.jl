
function kb21ar(::Type{Float32}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21a_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32}, ind::Ptr{Int32},
                              w::Ptr{Float32}, iw::Ptr{Int32})::Cvoid
end

function kb21ar(::Type{Float64}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21ad_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64}, ind::Ptr{Int32},
                               w::Ptr{Float64}, iw::Ptr{Int32})::Cvoid
end

function kb21ar(::Type{Float128}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21aq_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128}, ind::Ptr{Int32},
                               w::Ptr{Float128}, iw::Ptr{Int32})::Cvoid
end

function kb21ar(::Type{Float32}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21a_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32}, ind::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64})::Cvoid
end

function kb21ar(::Type{Float64}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21ad_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64}, ind::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64})::Cvoid
end

function kb21ar(::Type{Float128}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21aq_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float128},
                                     ind::Ptr{Int64}, w::Ptr{Float128}, iw::Ptr{Int64})::Cvoid
end

function kb21br(::Type{Float32}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21b_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32}, ind::Ptr{Int32},
                              w::Ptr{Float32}, iw::Ptr{Int32})::Cvoid
end

function kb21br(::Type{Float64}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21bd_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64}, ind::Ptr{Int32},
                               w::Ptr{Float64}, iw::Ptr{Int32})::Cvoid
end

function kb21br(::Type{Float128}, ::Type{Int32}, m, n, a, ind, w, iw)
  @ccall libhsl_subset.kb21bq_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128}, ind::Ptr{Int32},
                               w::Ptr{Float128}, iw::Ptr{Int32})::Cvoid
end

function kb21br(::Type{Float32}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21b_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32}, ind::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64})::Cvoid
end

function kb21br(::Type{Float64}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21bd_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64}, ind::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64})::Cvoid
end

function kb21br(::Type{Float128}, ::Type{Int64}, m, n, a, ind, w, iw)
  @ccall libhsl_subset_64.kb21bq_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float128},
                                     ind::Ptr{Int64}, w::Ptr{Float128}, iw::Ptr{Int64})::Cvoid
end

function kb21cr(::Type{Float32}, ::Type{Int32}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset.kb21c_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float32}, ind::Ptr{Int32},
                              w::Ptr{Float32}, iw::Ptr{Int32}, k::Ref{Int32},
                              maxmin::Ref{Int32})::Cvoid
end

function kb21cr(::Type{Float64}, ::Type{Int32}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset.kb21cd_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float64}, ind::Ptr{Int32},
                               w::Ptr{Float64}, iw::Ptr{Int32}, k::Ref{Int32},
                               maxmin::Ref{Int32})::Cvoid
end

function kb21cr(::Type{Float128}, ::Type{Int32}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset.kb21cq_(m::Ref{Int32}, n::Ref{Int32}, a::Ptr{Float128}, ind::Ptr{Int32},
                               w::Ptr{Float128}, iw::Ptr{Int32}, k::Ref{Int32},
                               maxmin::Ref{Int32})::Cvoid
end

function kb21cr(::Type{Float32}, ::Type{Int64}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset_64.kb21c_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float32}, ind::Ptr{Int64},
                                    w::Ptr{Float32}, iw::Ptr{Int64}, k::Ref{Int64},
                                    maxmin::Ref{Int64})::Cvoid
end

function kb21cr(::Type{Float64}, ::Type{Int64}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset_64.kb21cd_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float64}, ind::Ptr{Int64},
                                     w::Ptr{Float64}, iw::Ptr{Int64}, k::Ref{Int64},
                                     maxmin::Ref{Int64})::Cvoid
end

function kb21cr(::Type{Float128}, ::Type{Int64}, m, n, a, ind, w, iw, k, maxmin)
  @ccall libhsl_subset_64.kb21cq_64_(m::Ref{Int64}, n::Ref{Int64}, a::Ptr{Float128},
                                     ind::Ptr{Int64}, w::Ptr{Float128}, iw::Ptr{Int64},
                                     k::Ref{Int64}, maxmin::Ref{Int64})::Cvoid
end

function kb21er(::Type{Float32}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21e_(n::Ref{Int32}, a::Ptr{Float32}, ia::Ref{Int32})::Int32
end

function kb21er(::Type{Float64}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21ed_(n::Ref{Int32}, a::Ptr{Float64}, ia::Ref{Int32})::Int32
end

function kb21er(::Type{Float128}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21eq_(n::Ref{Int32}, a::Ptr{Float128}, ia::Ref{Int32})::Int32
end

function kb21er(::Type{Float32}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21e_64_(n::Ref{Int64}, a::Ptr{Float32}, ia::Ref{Int64})::Int64
end

function kb21er(::Type{Float64}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21ed_64_(n::Ref{Int64}, a::Ptr{Float64}, ia::Ref{Int64})::Int64
end

function kb21er(::Type{Float128}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21eq_64_(n::Ref{Int64}, a::Ptr{Float128}, ia::Ref{Int64})::Int64
end

function kb21fr(::Type{Float32}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21f_(n::Ref{Int32}, a::Ptr{Float32}, ia::Ref{Int32})::Int32
end

function kb21fr(::Type{Float64}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21fd_(n::Ref{Int32}, a::Ptr{Float64}, ia::Ref{Int32})::Int32
end

function kb21fr(::Type{Float128}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21fq_(n::Ref{Int32}, a::Ptr{Float128}, ia::Ref{Int32})::Int32
end

function kb21fr(::Type{Float32}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21f_64_(n::Ref{Int64}, a::Ptr{Float32}, ia::Ref{Int64})::Int64
end

function kb21fr(::Type{Float64}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21fd_64_(n::Ref{Int64}, a::Ptr{Float64}, ia::Ref{Int64})::Int64
end

function kb21fr(::Type{Float128}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21fq_64_(n::Ref{Int64}, a::Ptr{Float128}, ia::Ref{Int64})::Int64
end

function kb21gr(::Type{Float32}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21g_(n::Ref{Int32}, a::Ptr{Float32}, ia::Ref{Int32})::Int32
end

function kb21gr(::Type{Float64}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21gd_(n::Ref{Int32}, a::Ptr{Float64}, ia::Ref{Int32})::Int32
end

function kb21gr(::Type{Float128}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21gq_(n::Ref{Int32}, a::Ptr{Float128}, ia::Ref{Int32})::Int32
end

function kb21gr(::Type{Float32}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21g_64_(n::Ref{Int64}, a::Ptr{Float32}, ia::Ref{Int64})::Int64
end

function kb21gr(::Type{Float64}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21gd_64_(n::Ref{Int64}, a::Ptr{Float64}, ia::Ref{Int64})::Int64
end

function kb21gr(::Type{Float128}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21gq_64_(n::Ref{Int64}, a::Ptr{Float128}, ia::Ref{Int64})::Int64
end

function kb21hr(::Type{Float32}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21h_(n::Ref{Int32}, a::Ptr{Float32}, ia::Ref{Int32})::Int32
end

function kb21hr(::Type{Float64}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21hd_(n::Ref{Int32}, a::Ptr{Float64}, ia::Ref{Int32})::Int32
end

function kb21hr(::Type{Float128}, ::Type{Int32}, n, a, ia)
  @ccall libhsl_subset.kb21hq_(n::Ref{Int32}, a::Ptr{Float128}, ia::Ref{Int32})::Int32
end

function kb21hr(::Type{Float32}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21h_64_(n::Ref{Int64}, a::Ptr{Float32}, ia::Ref{Int64})::Int64
end

function kb21hr(::Type{Float64}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21hd_64_(n::Ref{Int64}, a::Ptr{Float64}, ia::Ref{Int64})::Int64
end

function kb21hr(::Type{Float128}, ::Type{Int64}, n, a, ia)
  @ccall libhsl_subset_64.kb21hq_64_(n::Ref{Int64}, a::Ptr{Float128}, ia::Ref{Int64})::Int64
end
