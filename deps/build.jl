using SHA

using METIS4_jll
using OpenBLAS32_jll
using libblastrampoline_jll

struct HSLVersion
  algname::String
  version::String
  sha::String
  ext::String
end

getname(ver::HSLVersion) = ver.algname * "-" * ver.version * ver.ext

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

##############################
# MA57
##############################
const hsl_ma57_versions = [
  HSLVersion(
    "hsl_ma57",
    "5.2.0",
    "aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584",
    ".tar.gz",
  ),
]

const hsl_ma57_path =
  haskey(ENV, "HSL_MA57_PATH") ? ENV["HSL_MA57_PATH"] : joinpath(@__DIR__, "downloads")
hsl_ma57_version = findversion(hsl_ma57_versions, hsl_ma57_path)
const hsl_ma57_archive =
  isnothing(hsl_ma57_version) ? "" : joinpath(hsl_ma57_path, getname(hsl_ma57_version))
const hsl_ma57_patch = joinpath(hsl_ma57_path, "get_factors.patch")

##############################
# MA97
##############################
const hsl_ma97_verions = [
  HSLVersion(
    "hsl_ma97",
    "2.7.0",
    "ac3a081d3a28e9ecb8871ce769f4ced2a5ffa5a9c36defbd2c844ae3493ccb37",
    ".tar.gz",
  ),
  HSLVersion(
    "hsl_ma97",
    "2.7.0",
    "8221b607d96554d7a57cc60483c7305ef43a8785dc4171ac2e8da087900a1100",
    ".zip",
  ),
  HSLVersion(
    "hsl_ma97",
    "2.6.0",
    "be5fe822674be93e3d2e1a7d7ed6c5ad831b91cf8ca5150beb473f67af5fcb66",
    ".tar.gz",
  ),
]
const hsl_ma97_path =
  haskey(ENV, "HSL_MA97_PATH") ? ENV["HSL_MA97_PATH"] : joinpath(@__DIR__, "downloads")
hsl_ma97_version = findversion(hsl_ma97_verions, hsl_ma97_path)
const hsl_ma97_archive =
  isnothing(hsl_ma97_version) ? "" : joinpath(hsl_ma97_path, getname(hsl_ma97_version))

##############################
# Build
##############################
const hsl_archives = [hsl_ma57_archive, hsl_ma97_archive]

const HSL_FC = haskey(ENV, "HSL_FC") ? ENV["HSL_FC"] : "gfortran"
const HSL_F77 = haskey(ENV, "HSL_F77") ? ENV["HSL_F77"] : HSL_FC
const HSL_CC = haskey(ENV, "HSL_CC") ? ENV["HSL_CC"] : "gcc"

const libblas = VERSION < v"1.7" ? "-lopenblas" : "-lblastrampoline"
const dlext = Sys.isapple() ? "dylib" : "so"
const all_load = Sys.isapple() ? "-all_load" : "--whole-archive"
const noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

@info "using compilers" HSL_FC HSL_F77 HSL_CC

if any(isfile.(hsl_archives))
  if VERSION < v"1.7"
    libblas_dir = joinpath(OpenBLAS32_jll.artifact_dir, "lib")
  else
    libblas_dir = joinpath(libblastrampoline_jll.artifact_dir, "lib", "julia")
  end
  libmetis_dir = joinpath(METIS4_jll.artifact_dir, "lib")

  usrdir = joinpath(@__DIR__, "usr")
  libdir = joinpath(usrdir, "lib")
  builddir = joinpath(usrdir, "src")
  mkpath(builddir)

  path_deps = joinpath(@__DIR__, "deps.jl")
  open(path_deps, "w") do io
    write(io, "import Libdl\n")
    write(io, "\n")
  end

  if isfile(hsl_ma57_archive)
    @info "building ma57"
    path_libhsl_ma57 = joinpath(libdir, "libhsl_ma57.$dlext")
    open(path_deps, "a") do io
      write(io, "const libhsl_ma57 = \"$path_libhsl_ma57\"\n")
    end
    if isfile(hsl_ma57_patch)
      open(path_deps, "a") do io
        write(io, "const libhsl_ma57_patch = \"$hsl_ma57_patch\"\n")
      end
    end
    include("build_hsl_ma57.jl")
  end

  if isfile(hsl_ma97_archive)
    @info "building ma97"
    path_libhsl_ma97 = joinpath(libdir, "libhsl_ma97.$dlext")
    open(path_deps, "a") do io
      write(io, "const libhsl_ma97 = \"$path_libhsl_ma97\"\n")
    end
    include("build_hsl_ma97.jl")
  end

  open(path_deps, "a") do io
    write(io, "\n")
    write(io, "function check_deps()\n")
    if isfile(hsl_ma57_archive)
      write(io, "  global libhsl_ma57\n")
      write(io, "  if !isfile(libhsl_ma57)\n")
      write(io, "    error(\"\$(libhsl_ma57) does not exist, Please re-run Pkg.build(\\\"HSL.jl\\\"), and restart Julia.\")\n")
      write(io, "  end\n")
      write(io, "\n")
    end
    if isfile(hsl_ma57_patch)
      write(io, "  global libhsl_ma57_patch\n")
      write(io, "  if !isfile(libhsl_ma57_patch)\n")
      write(io, "    error(\"\$(libhsl_ma57_patch) does not exist, Please re-run Pkg.build(\\\"HSL.jl\\\"), and restart Julia.\")\n")
      write(io, "  end\n")
      write(io, "\n")
    end
    if isfile(hsl_ma97_archive)
      write(io, "  global libhsl_ma97\n")
      write(io, "  if !isfile(libhsl_ma97)\n")
      write(io, "    error(\"\$(libhsl_ma97) does not exist, Please re-run Pkg.build(\\\"HSL.jl\\\"), and restart Julia.\")\n")
      write(io, "  end\n")
    end
    write(io, "end\n")
  end
else
  @info "No archive found."
end
