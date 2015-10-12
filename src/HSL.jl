module HSL

using Compat

if isfile(joinpath(dirname(@__FILE__), "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
else
  error("HSL library not properly installed. Please run Pkg.build(\"HSL\")")
end

include("hsl_ma97.jl")

end
