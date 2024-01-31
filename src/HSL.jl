module HSL

using Libdl
using LinearAlgebra
using SparseArrays

if haskey(ENV, "JULIA_HSL_LIBRARY_PATH")
  const libhsl = joinpath(ENV["JULIA_HSL_LIBRARY_PATH"], "libhsl.$dlext")
  const HSL_INSTALLATION = "CUSTOM"
else
  using OpenBLAS32_jll
  using HSL_jll
  const HSL_INSTALLATION = "ARTIFACT"
end

function __init__()
  if HSL_INSTALLATION == "ARTIFACT" && VERSION ≥ v"1.9"
    config = LinearAlgebra.BLAS.lbt_get_config()
    if !any(lib -> lib.interface == :lp64, config.loaded_libs)
      LinearAlgebra.BLAS.lbt_forward(OpenBLAS32_jll.libopenblas_path)
    end
  end
end

# definitions applicable to all packages
const data_map = Dict{Type, Type}(
  Float32 => Cfloat,
  Float64 => Cdouble,
  ComplexF32 => Cfloat,
  ComplexF64 => Cdouble,
)

# Wrappers to call C and Fortran code
include("wrappers.jl")

# Interfaces
include("hsl_ma57.jl")
include("hsl_ma97.jl")
include("hsl_mc66.jl")
include("kb07.jl")
include("mc21.jl")
include("mc77.jl")

end
