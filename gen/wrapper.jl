# Script to parse HSL headers and generate Julia wrappers.
using Clang
using Clang.Generators
using JuliaFormatter

include("rewriter.jl")

function wrapper(name::String, headers::Vector{String}, optimized::Bool)

  @info "Wrapping $name"
  solver = split(name, "_")[2]

  cd(@__DIR__)
  include_dir = joinpath(@__DIR__, "..", "deps", "usr", "include")

  options = load_options(joinpath(@__DIR__, "hsl.toml"))
  options["general"]["library_name"] = "lib" * name
  options["general"]["output_file_path"] = joinpath("..", "src", "$(name).jl")
  optimized && (options["general"]["output_ignorelist"] = ["$(solver)realtype_[sdcz]_\$",
                                                           "$(solver)pkgtype_[sdcz]_\$",
                                                           "$(solver)pkgtype_[il]_\$",
                                                           "$(solver)_pkgtype_[il]_\$",
                                                           "$(solver)cntltype_[sdcz]_\$",
                                                           "$(solver)_control_[dczl]\$",
                                                           "$(solver)_info_[dczl]\$",
                                                           "$(solver)_[afs]info_d\$",
                                                           "$(solver)_solve_control_d\$"])

  args = get_default_args()
  push!(args, "-I$include_dir")
  
  ctx = create_context(headers, args, options)
  build!(ctx)

  path = options["general"]["output_file_path"]

  format_file(path, YASStyle())
  rewrite!(path, name, optimized)
  return nothing
end

function main(name::String="all"; optimized::Bool=false)
  hsl = joinpath(@__DIR__, "..", "deps", "usr", "include")

  if name == "all" || name == "hsl_ma48"
    wrapper("hsl_ma48", ["$hsl/hsl_ma48s.h", "$hsl/hsl_ma48d.h"], optimized)
  end

  if name == "all" || name == "hsl_ma57"
    wrapper("hsl_ma57", ["$hsl/hsl_ma57s.h", "$hsl/hsl_ma57d.h"], optimized)
  end

  if name == "all" || name == "hsl_ma77"
    wrapper("hsl_ma77", ["$hsl/hsl_ma77s.h", "$hsl/hsl_ma77d.h"], optimized)
  end

  if name == "all" || name == "hsl_ma86"
    wrapper("hsl_ma86", ["$hsl/hsl_ma86s.h", "$hsl/hsl_ma86d.h", "$hsl/hsl_ma86c.h", "$hsl/hsl_ma86z.h"], optimized)
  end

  if name == "all" || name == "hsl_ma87"
    wrapper("hsl_ma87", ["$hsl/hsl_ma87s.h", "$hsl/hsl_ma87d.h", "$hsl/hsl_ma87c.h", "$hsl/hsl_ma87z.h"], optimized)
  end

  if name == "all" || name == "hsl_ma97"
    wrapper("hsl_ma97", ["$hsl/hsl_ma97s.h", "$hsl/hsl_ma97d.h", "$hsl/hsl_ma97c.h", "$hsl/hsl_ma97z.h"], optimized)
  end

  if name == "all" || name == "hsl_mc64"
    wrapper("hsl_mc64", ["$hsl/hsl_mc64s.h", "$hsl/hsl_mc64d.h", "$hsl/hsl_mc64c.h", "$hsl/hsl_mc64z.h"], optimized)
  end

  if name == "all" || name == "hsl_mc68"
    wrapper("hsl_mc68", ["$hsl/hsl_mc68i.h"], optimized)
  end

  if name == "all" || name == "hsl_mc69"
    wrapper("hsl_mc69", ["$hsl/hsl_mc69s.h", "$hsl/hsl_mc69d.h", "$hsl/hsl_mc69c.h", "$hsl/hsl_mc69z.h"], optimized)
  end

  if name == "all" || name == "hsl_mc78"
    wrapper("hsl_mc78", ["$hsl/hsl_mc78i.h", "$hsl/hsl_mc78l.h"], optimized)
  end

  if name == "all" || name == "hsl_mc79"
    wrapper("hsl_mc79", ["$hsl/hsl_mc79i.h"], optimized)
  end

  if name == "all" || name == "hsl_mi20"
    wrapper("hsl_mi20", ["$hsl/hsl_mi20s.h", "$hsl/hsl_mi20d.h"], optimized)
  end
end

# If we want to use the file as a script with `julia wrapper.jl`
if abspath(PROGRAM_FILE) == @__FILE__
  main()
end
