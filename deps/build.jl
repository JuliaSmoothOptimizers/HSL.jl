using BinDeps
using Compat

@BinDeps.setup

# General settings.
so = "so"
all_load = "--whole-archive"
noall_load = "--no-whole-archive"

@static if is_apple()
  so = "dylib"
  all_load = "-all_load"
  noall_load = "-noall_load"
  using Homebrew
end

hsl_modules = @compat Dict()

here = dirname(@__FILE__)
include(joinpath(here, "build_blas.jl"))
include(joinpath(here, "build_metis4.jl"))

const hsl_ma97_version = "2.3.0"
const hsl_ma97_sha256 = "e3133eba520abcabaf1700106f8a1310d4286c61721f707e94fb7d45a220abf2"
const hsl_ma97_archive = joinpath(here, "downloads", "hsl_ma97-$hsl_ma97_version.tar.gz")

info("looking for $hsl_ma97_archive")
if isfile(hsl_ma97_archive)
  info("hsl_ma97 found")
  include("build_hsl_ma97.jl")
else
  info("hsl_ma97 not found")
end

@eval @BinDeps.install $hsl_modules
