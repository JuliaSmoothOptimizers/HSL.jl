module HSL

using LinearAlgebra
using SparseArrays

using SHA
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
  if @isdefined available_hsl_algorithms
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

function getsha(archivepath::String)
  !isfile(archivepath) && error("$archivepath is not a file!")
  open(archivepath) do f
    return bytes2hex(sha256(f))
  end
end

# package-specific definitions
if @isdefined available_hsl_algorithms
  for package in keys(available_hsl_algorithms)
    if package == "coinhsl"
      !("hsl_ma57" in keys(available_hsl_algorithms)) && include("hsl_ma57.jl")
      !("hsl_ma97" in keys(available_hsl_algorithms)) && include("hsl_ma97.jl")
    else
      include("$(package).jl")
      if package == "hsl_ma57" && hsl_ma57_patched
        include("hsl_ma57_patch.jl")
      end
    end
  end
end

end
