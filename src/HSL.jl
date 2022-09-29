module HSL

using LinearAlgebra
using SparseArrays

using METIS4_jll
using OpenBLAS32_jll
using libblastrampoline_jll

if isfile(joinpath(@__DIR__, "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
else
  @error("HSL library not properly installed. Please run Pkg.build(\"HSL\")")
end

function __init__()
  if VERSION ≥ v"1.7"
    config = LinearAlgebra.BLAS.lbt_get_config()
    if !any(lib -> lib.interface == :lp64, config.loaded_libs)
      LinearAlgebra.BLAS.lbt_forward(OpenBLAS32_jll.libopenblas_path)
    end
  end
  if (@isdefined libhsl_ma57) || (@isdefined libhsl_ma97) || (@isdefined libhsl_mc21)
    check_deps()
  end
end

# definitions applicable to all packages
const data_map = Dict{Type, Type}(
  Float32 => Cfloat,
  Float64 => Cdouble,
  ComplexF32 => Cfloat,
  ComplexF64 => Cdouble,
)

# package-specific definitions
if (@isdefined libhsl_ma57) || haskey(ENV, "DOCUMENTER_KEY")
  include("hsl_ma57.jl")
  if (@isdefined libhsl_ma57_patch) || haskey(ENV, "DOCUMENTER_KEY")
    include("hsl_ma57_patch.jl")
  end
end
if (@isdefined libhsl_ma97) || haskey(ENV, "DOCUMENTER_KEY")
  include("hsl_ma97.jl")
end
if (@isdefined libhsl_mc21) || haskey(ENV, "DOCUMENTER_KEY")
  include("hsl_mc21.jl")
end

end
