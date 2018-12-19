using HSL
using Compat
using LinearAlgebra
using SparseArrays
using Test

include("../deps/deps.jl")

if @isdefined libhsl_ma97
    include("test_ma97.jl")
end
