using HSL
if VERSION < v"0.7.0-DEV.2005"
   using Base.Test
 else
   using Test
 end

isdefined(HSL, :libhsl_ma97) && include("test_ma97.jl")
# isdefined(HSL, :libma57) && include("test_ma57.jl")
isdefined(HSL, :libhsl_ma57) && include("test_ma57.jl")
