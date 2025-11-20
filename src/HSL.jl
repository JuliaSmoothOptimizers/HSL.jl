module HSL

using Libdl
using LinearAlgebra
using SparseArrays
using Quadmath

import OpenBLAS32_jll
import HSL_jll
libhsl::String = HSL_jll.libhsl
libhsl_subset::String = HSL_jll.libhsl_subset
libhsl_subset_64::String = HSL_jll.libhsl_subset_64

function __init__()
  if haskey(ENV, "JULIA_HSL_LIBRARY_PATH")
    HSL.libhsl = joinpath(ENV["JULIA_HSL_LIBRARY_PATH"], "libhsl.$dlext")
    HSL.libhsl_subset = joinpath(ENV["JULIA_HSL_LIBRARY_PATH"], "libhsl_subset.$dlext")
    HSL.libhsl_subset_64 = joinpath(ENV["JULIA_HSL_LIBRARY_PATH"], "libhsl_subset_64.$dlext")
  else
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
include("hsl_mc64.jl")
include("kb07.jl")
include("mc19.jl")
include("mc21.jl")
include("mc26.jl")
include("mc29.jl")
include("mc30.jl")
include("mc77.jl")

end
