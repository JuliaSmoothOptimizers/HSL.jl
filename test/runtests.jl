using HSL
using Base.Test

isdefined(HSL, :libhsl_ma97) && include("test_ma97.jl")
# isdefined(HSL, :libma57) && include("test_ma57.jl")
isdefined(HSL, :libhsl_ma57) && include("test_ma57.jl")
