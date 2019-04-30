using HSL

using LinearAlgebra
using SparseArrays
using Test

include("../deps/deps.jl")

if @isdefined libhsl_ma57
  include("test_ma57.jl")
  if @isdefined libhsl_ma57_patch
    include("test_ma57_patch.jl")
  end
end
if @isdefined libhsl_ma97
  include("test_ma97.jl")
end
