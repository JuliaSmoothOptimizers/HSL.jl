module HSL

using Compat

if isfile(joinpath(dirname(@__FILE__), "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
else
  error("HSL library not properly installed. Please run Pkg.build(\"HSL\")")
end

# definitions applicable to all packages
const data_map = Dict{Type, Type}(Float32 => Cfloat,
                                  Float64 => Cdouble,
                                  Complex64 => Cfloat,
                                  Complex128 => Cdouble)

# package-specific definitions
isdefined(:libhsl_ma97) && include("hsl_ma97.jl")

end
