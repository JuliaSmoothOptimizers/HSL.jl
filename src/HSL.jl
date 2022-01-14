module HSL

using LinearAlgebra
using SparseArrays

if isfile(joinpath(@__DIR__, "..", "deps", "deps.jl"))
  include("../deps/deps.jl")
else
  error("HSL library not properly installed. Please run Pkg.build(\"HSL\")")
end

function __init__()
  if (@isdefined libhsl_ma57) || (@isdefined libhsl_ma97)
    check_deps()
  end
end

const HASCOINHSL = @isdefined libcoinhsl

struct HSLAlgorithm
  name::Symbol
  datatypes::Vector{DataType}
  coinhsltypes::Vector{DataType}  # types provided by libcoinhsl, if any
end
"Get the symbol for the libray target"
hsllibname(alg::HSLAlgorithm) = Symbol("lib" * string(alg.name))

"Check if the independent HSL library is provided"
hashsllib(alg::HSLAlgorithm) = isdefined(HSL, hsllibname(alg))

"Is the algorithm implemented in libcoinhsl"
incoinhsl(alg::HSLAlgorithm) = !isempty(alg.coinhsltypes)

"""
Get the library path where the algorithm is implemented.
Return an empty string if the library hasn't been built.
"""
function getlib(alg::HSLAlgorithm) where T
  if hashsllib(alg)
    return eval(hsllibname(alg)) 
  elseif HASCOINHSL && incoinhsl(alg) 
    return libcoinhsl
  end
  return "" 
end

"""
Get all data types supported by the algorithm.
Return an empty vector if the library for the algorithm hasn't been built.
"""
function getdatatypes(alg::HSLAlgorithm)
  hashsllib(alg) && (return alg.datatypes)
  HASCOINHSL && (return alg.coinhsltypes)
  return DataType[]
end

function getalg(name::Symbol)
  for alg in allalgs
    if alg.name == name
      return alg
    end
  end
  return nothing
end

"""
Check if a library for the algorithm exists
"""
function haslib(alg::HSLAlgorithm)
  return hashsllib(alg) || (HASCOINHSL && incoinhsl(alg))
end
haslib(name::Symbol) = haslib(getalg(name))
haslib(::Nothing) = false

const HSLDataTypes = [Float64,Float32,ComplexF64,ComplexF32]
const HSLRealTypes = [Float64,Float32]

const allalgs = [
  HSLAlgorithm(:hsl_ma97, HSLDataTypes, HSLRealTypes),
  HSLAlgorithm(:hsl_ma57, HSLRealTypes, DataType[]),  # ma57 crashes when using libcoinhsl
]


# definitions applicable to all packages
const data_map = Dict{Type, Type}(Float32 => Cfloat,
                                  Float64 => Cdouble,
                                  ComplexF32 => Cfloat,
                                  ComplexF64 => Cdouble)


# package-specific definitions
if haslib(:hsl_ma57) || haskey(ENV, "DOCUMENTER_KEY")
  include("hsl_ma57.jl")
  if (@isdefined libhsl_ma57_patch) || haskey(ENV, "DOCUMENTER_KEY")
    include("hsl_ma57_patch.jl")
  end
end
if haslib(:hsl_ma97) || haskey(ENV, "DOCUMENTER_KEY")
  include("hsl_ma97.jl")
end

end
