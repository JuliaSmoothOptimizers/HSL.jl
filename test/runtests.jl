using HSL

using LinearAlgebra
using SparseArrays
using Test

if (@isdefined HSL.available_hsl_algorithms)
  for (software, version) in HSL.available_hsl_algorithms
    @info("$software: v\"$version\"")
  end

  for package in keys(HSL.available_hsl_algorithms)
    include("test_$(package).jl")
    if package == "hsl_ma57" && HSL.hsl_ma57_patched
      include("test_hsl_ma57_patch.jl")
    end
  end
end
