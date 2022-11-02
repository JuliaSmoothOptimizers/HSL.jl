using HSL
using LinearAlgebra, SparseArrays
using Test, Random

Random.seed!(666)  # Random tests are diabolical

if isfile(joinpath(@__DIR__, "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
end

if @isdefined available_hsl_algorithms
  for (software, version) in available_hsl_algorithms
    @info("$software: v\"$version\"")
  end

  for package in keys(available_hsl_algorithms)
    package == "coinhsl" && continue
    include("test_$(package).jl")
    if package == "hsl_ma57" && hsl_ma57_patched
      include("test_hsl_ma57_patch.jl")
    end
  end
end
