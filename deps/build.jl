using SHA

using METIS4_jll
using OpenBLAS32_jll
using libblastrampoline_jll

struct HSLVersion
  version::String
  sha::String
  ext::String
end

include("versions.jl")

getname(software::String, ver::HSLVersion; extension::Bool=true) = software * "-" * ver.version * (extension ? ver.ext : "")

function checksha(version::HSLVersion, archivepath::String)
  if isfile(archivepath)
    open(archivepath) do f
      return bytes2hex(sha256(f)) == version.sha
    end
  else
    return false
  end
end

"""
Find a version of a software whose archive is in one of the search paths.
Searches `downloads` folder, ENV["HSL_ARCHIVES_PATH"] and ENV["<ALGNAME>_PATH"], e.g.
"HSL_MA97_PATH" or "MC21_PATH".
"""
function findversion(software::String)
  paths = String[joinpath(@__DIR__, "downloads")]
  haskey(ENV, "HSL_ARCHIVES_PATH") && push!(paths, ENV["HSL_ARCHIVES_PATH"])
  haskey(ENV, "$(uppercase(software))_PATH") && push!(paths, ENV["$(uppercase(software))_PATH"])
  versions = hsl_collection[software]
  for path in paths
    for version in versions
      archivename = getname(software, version)
      archivepath = joinpath(path, archivename)
      if isfile(archivepath)
        if checksha(version, archivepath)
          @info "found $(archivepath)"
          return archivepath, version, path
        else
          @error("SHA mismatch for $(archivepath)")
        end
      end
    end
  end
  return nothing, nothing, nothing
end

const hsl_versions = Dict{String,HSLVersion}()
const hsl_archives = Dict{String,String}()
const hsl_patches  = Dict{String,String}()

for software in keys(hsl_collection)
  archivepath, version, path = findversion(software)
  if version ≠ nothing
    hsl_versions[software] = version
    hsl_archives[software] = archivepath
    if software == "hsl_ma57"
      patchpath = joinpath(path, "get_factors.patch")
      if isfile(patchpath)
        @info "found $(patchpath)"
        hsl_patches[software] = patchpath
      end
    end
  end
end

##############################
# Build
##############################

const HSL_FC = haskey(ENV, "HSL_FC") ? ENV["HSL_FC"] : "gfortran"
const HSL_F77 = haskey(ENV, "HSL_F77") ? ENV["HSL_F77"] : HSL_FC
const HSL_CC = haskey(ENV, "HSL_CC") ? ENV["HSL_CC"] : "gcc"

const libblas = VERSION < v"1.7" || (Sys.iswindows() && VERSION < v"1.9") ? "-lopenblas" : "-lblastrampoline"
const dlext = Sys.isapple() ? "dylib" : "so"
const all_load = Sys.isapple() ? "-all_load" : "--whole-archive"
const noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

#! format: off
function build_hsl(software::String)

  version = hsl_versions[software]
  extension = version.ext
  archive = hsl_archives[software]

  if extension == ".tar.gz"
    run(`tar -zxf $archive -C $builddir`)
  elseif extension == ".zip"
    run(`unzip $archive -d $builddir`)
  else
    error("The extension $extension is not supported.")
  end

  foldername = getname(software, version, extension=false)
  cd("$builddir/$(foldername)")
  if haskey(hsl_patches, software)
    run(`patch -p1 -i $(hsl_patches[software])`)
  end
  run(`./configure --prefix=$usrdir
                   FC=$(HSL_FC)
                   F77=$(HSL_F77)
                   CC=$(HSL_CC)
                   CFLAGS="-O3 -fPIC"
                   FFLAGS="-O3 -fPIC -fopenmp"
                   FCFLAGS="-O3 -fPIC -fopenmp"
                   --with-blas="-L$libblas_dir $libblas"
                   --with-lapack="-L$libblas_dir $libblas"
                   --with-metis="-L$libmetis_dir -lmetis"`)
  run(`make install`)
  if software != "hsl_ma97"
    run(`$(split(HSL_FC)) -fPIC -shared -Wl,$all_load $libdir/lib$(software).a
                                        -L$libblas_dir $libblas -L$libmetis_dir -lmetis -lgomp
                                        -Wl,$noall_load -o $libdir/lib$(software).$dlext`)
  end
  cd(@__DIR__)
end
#! format: on

@info "using compilers" HSL_FC HSL_F77 HSL_CC

if !isempty(hsl_archives)
  if VERSION < v"1.7" || (Sys.iswindows() && VERSION < v"1.9")
    libblas_dir = joinpath(OpenBLAS32_jll.artifact_dir, "lib")
  else
    libblas_dir = joinpath(libblastrampoline_jll.artifact_dir, "lib", "julia")
  end
  libmetis_dir = joinpath(METIS4_jll.artifact_dir, "lib")

  usrdir = joinpath(@__DIR__, "usr")
  libdir = joinpath(usrdir, "lib")
  builddir = joinpath(usrdir, "src")
  isdir(usrdir) && rm(usrdir, recursive=true)
  mkpath(builddir)

  # generate deps.jl
  path_deps = joinpath(@__DIR__, "deps.jl")
  isfile(path_deps) && rm(path_deps)
  open(path_deps, "w") do io
    write(io, "import Libdl\n")
    write(io, "\n")
  end

  # write the path of all compiled libraries
  for software in keys(hsl_collection)
    if haskey(hsl_archives, software)
      @info "building $(software)"
      build_hsl(software)
      path_libhsl = joinpath(libdir, "lib$(software).$dlext")
      open(path_deps, "a") do io
        write(io, "const lib$(software) = \"$(path_libhsl)\"\n")
        if software == "hsl_ma57"
          write(io, "const $(software)_patched = $(haskey(hsl_patches, software))\n")
        end
      end
    end
  end

  # write the constant `available_hsl_algorithms`
  open(path_deps, "a") do io
    write(io, "\n")
    write(io, "const available_hsl_algorithms = Dict{String, VersionNumber}(")
    nalgorithms = 0
    for software in keys(hsl_archives)
      (nalgorithms > 0) && write(io, ", ")
      write(io, "\"$(software)\" => v\"$(hsl_versions[software].version)\"")
      nalgorithms += 1
    end
    write(io, ")\n")
  end

  # write the function `check_deps`
  open(path_deps, "a") do io
    write(io, "\n")
    write(io, "function check_deps()\n")
    write(io, "\n")
    write(io, "  global available_hsl_algorithms\n")
    for software in keys(hsl_collection)
      #! format: off
      if haskey(hsl_archives, software)
        write(io, "\n")
        write(io, "  global lib$(software)\n")
        if software == "hsl_ma57"
          write(io, "  global $(software)_patched\n")
        end
        write(io, "  if !isfile(lib$(software))\n")
        write(io, "    error(\"\$(lib$(software)) does not exist, Please re-run Pkg.build(\\\"HSL.jl\\\"), and restart Julia.\")\n")
        write(io, "  end\n")
      end
      #! format: on
    end
    write(io, "\n")
    write(io, "end\n")
  end
else
  @info "No archive found."
end
