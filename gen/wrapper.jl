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

function hsl_headers(include::String, library::String, precisions::String)
  headers = [joinpath(include, library) * precision * ".h" for precision in precisions]
  return headers
end

function main(name::String="all"; optimized::Bool=false)
  hsl = joinpath(@__DIR__, "..", "deps", "usr", "include")

  if name == "all" || name == "hsl_ma48"
    wrapper("hsl_ma48", hsl_headers(hsl, "hsl_ma48", "sd"), optimized)
  end

  if name == "all" || name == "hsl_ma57"
    wrapper("hsl_ma57", hsl_headers(hsl, "hsl_ma57", "sd"), optimized)
  end

  if name == "all" || name == "hsl_ma77"
    wrapper("hsl_ma77", hsl_headers(hsl, "hsl_ma77", "sd"), optimized)
  end

  if name == "all" || name == "hsl_ma86"
    wrapper("hsl_ma86", hsl_headers(hsl, "hsl_ma86", "sdcz"), optimized)
  end

  if name == "all" || name == "hsl_ma87"
    wrapper("hsl_ma87", hsl_headers(hsl, "hsl_ma87", "sdcz"), optimized)
  end

  if name == "all" || name == "hsl_ma97"
    wrapper("hsl_ma97", hsl_headers(hsl, "hsl_ma97", "sdcz"), optimized)
  end

  if name == "all" || name == "hsl_mc64"
    wrapper("hsl_mc64", hsl_headers(hsl, "hsl_mc64", "sdcz"), optimized)
  end

  if name == "all" || name == "hsl_mc68"
    wrapper("hsl_mc68", hsl_headers(hsl, "hsl_mc68", "i"), optimized)
  end

  if name == "all" || name == "hsl_mc69"
    wrapper("hsl_mc69", hsl_headers(hsl, "hsl_mc69", "sdcz"), optimized)
  end

  if name == "all" || name == "hsl_mc78"
    wrapper("hsl_mc78", hsl_headers(hsl, "hsl_mc78", "il"), optimized)
  end

  if name == "all" || name == "hsl_mc79"
    wrapper("hsl_mc79", hsl_headers(hsl, "hsl_mc79", "i"), optimized)
  end

  if name == "all" || name == "hsl_mi20"
    wrapper("hsl_mi20", hsl_headers(hsl, "hsl_mi20", "sd"), optimized)
  end
end

# If we want to use the file as a script with `julia wrapper.jl`
if abspath(PROGRAM_FILE) == @__FILE__
  main()
end
