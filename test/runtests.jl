using HSL
using Base.Test

isdefined(HSL, :libhsl_ma97) && include("test_ma97.jl")
