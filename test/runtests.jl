using HSL

using LinearAlgebra
using SparseArrays
using Test

if isfile(joinpath(@__DIR__, "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
  @info("available_hsl_algorithms: $(available_hsl_algorithms)")
end

if @isdefined libhsl_ma57
  include("test_ma57.jl")
  if hsl_ma57_patched
    include("test_ma57_patch.jl")
  end
end

if @isdefined libhsl_ma97
  include("test_ma97.jl")
end

if @isdefined libmc21
  include("test_mc21.jl")
end
