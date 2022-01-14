using BinaryProvider, SHA # requires BinaryProvider 0.3.0 or later

using METIS4_jll
using OpenBLAS32_jll

struct HSLVersion
    algname::String
    version::String
    sha::String
    ext::String
end

getname(ver::HSLVersion, extension::Bool=true) = ver.algname * "-" * ver.version * (extension ? ver.ext : "")

function checksha(version::HSLVersion, filepath)
    if isfile(filepath)
        open(filepath) do f
            return bytes2hex(sha256(f)) == version.sha 
        end
    else
        return false
    end
end

function findversion(versions::Vector{HSLVersion}, path::AbstractString)
    for ver in versions
        archivename = getname(ver) 
        archivepath = joinpath(path, archivename)
        if isfile(archivepath)
            if checksha(ver, archivepath)
                return ver
            else
                error("Archive found but didn't match SHA for $(ver.algname).")
            end
        end
    end
    return nothing 
end

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))

##############################
# MA57
##############################
const hsl_ma57_versions = [
    HSLVersion("hsl_ma57", "5.2.0", "aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584", ".tar.gz"),
]

const hsl_ma57_path = haskey(ENV, "HSL_MA57_PATH") ? ENV["HSL_MA57_PATH"] : joinpath(@__DIR__, "downloads")
hsl_ma57_version = findversion(hsl_ma57_versions, hsl_ma57_path)
const hsl_ma57_archive = isnothing(hsl_ma57_version) ? "" : joinpath(hsl_ma57_path, getname(hsl_ma57_version))
const hsl_ma57_patch = joinpath(hsl_ma57_path, "get_factors.patch")

##############################
# MA97
##############################
const hsl_ma97_versions = [
    HSLVersion("hsl_ma97", "2.7.0", "ac3a081d3a28e9ecb8871ce769f4ced2a5ffa5a9c36defbd2c844ae3493ccb37", ".tar.gz"),
    HSLVersion("hsl_ma97", "2.7.0", "8221b607d96554d7a57cc60483c7305ef43a8785dc4171ac2e8da087900a1100", ".zip"),
    HSLVersion("hsl_ma97", "2.6.0", "be5fe822674be93e3d2e1a7d7ed6c5ad831b91cf8ca5150beb473f67af5fcb66", ".tar.gz")
]
const hsl_ma97_path = haskey(ENV, "HSL_MA97_PATH") ? ENV["HSL_MA97_PATH"] : joinpath(@__DIR__, "downloads")
hsl_ma97_version = findversion(hsl_ma97_versions, hsl_ma97_path)
const hsl_ma97_archive = isnothing(hsl_ma97_version) ? "" : joinpath(hsl_ma97_path, getname(hsl_ma97_version))

##############################
# COINHSL
##############################
const hsl_coin_versions = [
    # HSLVersion("coinhsl", "2021.05.05", "f77ad752a37de8695c02c81bcc503674af76689d40a9864b6f2a7a790c3efc95", ".tar.gz"),  # this has a problem with the install-sh script
    HSLVersion("coinhsl", "2021.05.05", "62c7e18ff22b977afa442db97d791f31359ab4a4f5a027f315cace211a24fbe9", ".zip")
]
const hsl_coin_path = haskey(ENV, "HSL_COIN_PATH") ? ENV["HSL_COIN_PATH"] : joinpath(@__DIR__, "downloads")
hsl_coin_version = findversion(hsl_coin_versions, hsl_coin_path)
const hsl_coin_archive = isnothing(hsl_coin_version) ? "" : joinpath(hsl_coin_path, getname(hsl_coin_version))

##############################
# Build
##############################
const hsl_archives = [hsl_ma57_archive, hsl_ma97_archive, hsl_coin_archive]

const so         = Sys.isapple() ? "dylib" : "so"
const all_load   = Sys.isapple() ? "-all_load" : "--whole-archive"
const noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

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

  if isfile(hsl_coin_archive)
    @info "build coinhsl"
    push!(products, FileProduct(prefix, "lib/libcoinhsl.$so", :libcoinhsl))
    include("build_coinhsl.jl")
  end

  @assert(all(satisfied.(products)))

  # Write out a deps.jl file that will contain mappings for our products
  write_deps_file(joinpath(@__DIR__, "deps.jl"), products, verbose=verbose)
else
  @info "No archive found."
  write_deps_file(joinpath(@__DIR__, "deps.jl"), Product[], verbose=verbose)
end
