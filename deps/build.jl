using BinaryProvider, SHA # requires BinaryProvider 0.3.0 or later

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))

const hsl_ma57_version = "5.2.0"
const hsl_ma57_sha256 = "aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584"
const hsl_ma57_archive = joinpath(@__DIR__, "downloads", "hsl_ma57-$hsl_ma57_version.tar.gz")
const hsl_ma57_patch = joinpath(@__DIR__, "downloads", "get_factors.patch")

const hsl_ma97_version = "2.5.0"
const hsl_ma97_sha256 = "9ceb858f09045d406c3cf399dcc07b4c7f716f29a5e5f55a77dc8b09d55e0c4e"
const hsl_ma97_archive = joinpath(@__DIR__, "downloads", "hsl_ma97-$hsl_ma97_version.tar.gz")

const so         = Sys.isapple() ? "dylib" : "so"
const all_load   = Sys.isapple() ? "-all_load" : "--whole-archive"
const noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

hsl_archives = [hsl_ma57_archive, hsl_ma97_archive]

if any(isfile.(hsl_archives))
  products = Product[
      LibraryProduct(prefix, ["libopenblas", "libopenblas64_"], :libopenblas),
      LibraryProduct(prefix, ["libcoinmetis"], :libcoinmetis),
  ]

  download_info = Dict{Symbol,Dict}()

  include("dep_openblas.jl")
  include("dep_metis.jl")

  # Asserting every product has a download_info
  for p in products
    @assert haskey(download_info, p.variable_name)
  end

  # Install unsatisfied or updated dependencies:
  for p in products
    vname = p.variable_name
    unsatisfied = !satisfied(p; verbose=verbose)
    dl_info = choose_download(download_info[vname], platform_key_abi())
    if dl_info === nothing && unsatisfied
      # If we don't have a compatible .tar.gz to download, complain.
      # Alternatively, you could attempt to install from a separate provider,
      # build from source or something even more ambitious here.
      error("Your platform (\"$(Sys.MACHINE)\", parsed as \"$(triplet(platform_key_abi()))\") is not supported by this package because of dependency $vname")
    end

    # If we have a download, and we are unsatisfied (or the version we're
    # trying to install is not itself installed) then load it up!
    if unsatisfied !! !isinstalled(dl_info...; prefix=prefix)
      # Download and install binaries
      install(dl_info...; prefix=prefix, force=true, verbose=verbose)
    end
  end

  # fixup library install paths on macOS
  usrdir = joinpath(@__DIR__, "usr")
  libdir = joinpath(usrdir, "lib")
  if Sys.isapple()
    libs = filter(lib -> endswith(lib, ".dylib"), readdir(libdir))
    for lib in libs
      libfull = joinpath(libdir, lib)
      run(`install_name_tool -id $libfull $libfull`)
    end
  end

  # Dependencies are supposedly installed, so we turn to HSL
  builddir = joinpath(usrdir, "src")
  mkpath(builddir)
  if isfile(hsl_ma57_archive)
    @info "building ma57"
    push!(products, FileProduct(prefix, "lib/libhsl_ma57.$so", :libhsl_ma57))
    if isfile(hsl_ma57_patch)
      push!(products, FileProduct(prefix, "../downloads/get_factors.patch", :libhsl_ma57_patch))
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
  @info "No archive found. Put the .tar.gz for at least one of the following:", basename.(hsl_archives)
  write_deps_file(joinpath(@__DIR__, "deps.jl"), Product[], verbose=verbose)
end

