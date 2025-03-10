using HSL
using LinearAlgebra, SparseArrays
using Test, Random

Random.seed!(666)  # Random tests are diabolical

@info("HSL_INSTALLATION : $(HSL.HSL_INSTALLATION)")

if LIBHSL_isfunctional()
  include("test_hsl_ma57.jl")
  include("test_hsl_ma97.jl")
  include("test_hsl_mc66.jl")
  include("test_kb07.jl")
  include("test_mc21.jl")
  include("test_mc77.jl")
else
  @warn("You have the dummy version of HSL_jll.jl.")
end
