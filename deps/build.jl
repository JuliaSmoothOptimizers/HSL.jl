using BinaryProvider, SHA # requires BinaryProvider 0.3.0 or later

using METIS4_jll
using OpenBLAS32_jll

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))

const hsl_ma57_version = "5.2.0"
const hsl_ma57_sha256 = "aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584"

const hsl_ma57_path = haskey(ENV, "HSL_MA57_PATH") ? ENV["HSL_MA57_PATH"] : joinpath(@__DIR__, "downloads")
const hsl_ma57_archive = joinpath(hsl_ma57_path, "hsl_ma57-$hsl_ma57_version.tar.gz")
const hsl_ma57_patch = joinpath(hsl_ma57_path, "get_factors.patch")

const hsl_ma97_version = "2.6.0"
const hsl_ma97_sha256 = "be5fe822674be93e3d2e1a7d7ed6c5ad831b91cf8ca5150beb473f67af5fcb66"

const hsl_ma97_path = haskey(ENV, "HSL_MA97_PATH") ? ENV["HSL_MA97_PATH"] : joinpath(@__DIR__, "downloads")
const hsl_ma97_archive = joinpath(hsl_ma97_path, "hsl_ma97-$hsl_ma97_version.tar.gz")

const HSL_FC = haskey(ENV, "HSL_FC") ? ENV["HSL_FC"] : "gfortran"
const HSL_F77 = haskey(ENV, "HSL_F77") ? ENV["HSL_F77"] : HSL_FC
const HSL_CC = haskey(ENV, "HSL_CC") ? ENV["HSL_CC"] : "gcc"

const so         = Sys.isapple() ? "dylib" : "so"
const all_load   = Sys.isapple() ? "-all_load" : "--whole-archive"
const noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

@info "using compilers" HSL_FC HSL_F77 HSL_CC

hsl_archives = [hsl_ma57_archive, hsl_ma97_archive]

if any(isfile.(hsl_archives))
  products = Product[]

  libopenblas_dir=joinpath(OpenBLAS32_jll.artifact_dir, "lib")
  libmetis_dir=joinpath(METIS4_jll.artifact_dir, "lib")

  usrdir = joinpath(@__DIR__, "usr")
  libdir = joinpath(usrdir, "lib")
  builddir = joinpath(usrdir, "src")
  mkpath(builddir)
  if isfile(hsl_ma57_archive)
    @info "building ma57"
    push!(products, FileProduct(prefix, "lib/libhsl_ma57.$so", :libhsl_ma57))
    if isfile(hsl_ma57_patch)
      push!(products, FileProduct(prefix, hsl_ma57_patch, :libhsl_ma57_patch))
    end
    include("build_hsl_ma57.jl")
  end

  if isfile(hsl_ma97_archive)
    @info "building ma97"
    push!(products, FileProduct(prefix, "lib/libhsl_ma97.$so", :libhsl_ma97))
    include("build_hsl_ma97.jl")
  end

  @assert(all(satisfied.(products)))

  # Write out a deps.jl file that will contain mappings for our products
  write_deps_file(joinpath(@__DIR__, "deps.jl"), products, verbose=verbose)
else
  @info "No archive found."
  write_deps_file(joinpath(@__DIR__, "deps.jl"), Product[], verbose=verbose)
end
