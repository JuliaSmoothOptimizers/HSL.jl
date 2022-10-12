using HSL

using LinearAlgebra
using SparseArrays
using Test

if isfile(joinpath(@__DIR__, "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
end

if @isdefined available_hsl_algorithms
  for (software, version) in available_hsl_algorithms
    @info("$software: v\"$version\"")
  end

  for package in keys(available_hsl_algorithms)
    include("test_$(package).jl")
    if package == "hsl_ma57" && hsl_ma57_patched
      include("test_hsl_ma57_patch.jl")
    end
  end
end
