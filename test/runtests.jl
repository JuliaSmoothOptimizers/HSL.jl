using HSL

using LinearAlgebra
using SparseArrays
using Test

# include("../deps/deps.jl")

if HSL.haslib(:hsl_ma57) 
  include("test_ma57.jl")
  if isdefined(HSL, :libhsl_ma57_patch)
    include("test_ma57_patch.jl")
  end
end
if HSL.haslib(:hsl_ma97)
  include("test_ma97.jl")
end
