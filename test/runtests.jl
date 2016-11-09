using HSL

using LinearAlgebra
using SparseArrays
using Test

include("../deps/deps.jl")

if @isdefined libhsl_ma97
    include("test_ma97.jl")
end
if @isdefined libhsl_ma57
    include("test_ma57.jl")
end
