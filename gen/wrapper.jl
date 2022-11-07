# Script to parse HSL headers and generate Julia wrappers.
using Clang
using Clang.Generators
using JuliaFormatter

include("rewriter.jl")
include("macros_wrapper.jl")

function wrapper(name::String, headers::Vector{String}, optimized::Bool)

  @info "Wrapping $name"
  solver = split(name, "_")[2]

  cd(@__DIR__)
  include_dir = joinpath(@__DIR__, "..", "deps", "usr", "include")

  options = load_options(joinpath(@__DIR__, "hsl.toml"))
  options["general"]["library_name"] = "lib" * name
  options["general"]["output_file_path"] = joinpath("..", "src", "C", "lib$(name).jl")
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

function main(name::String="all"; optimized::Bool=false, generic::Bool=false)
  hsl = joinpath(@__DIR__, "..", "deps", "usr", "include")

  if name == "all" || name == "hsl_ma48"
    precisions = "sd"
    headers = hsl_headers(hsl, "hsl_ma48", precisions)
    macros  = hsl_macros(hsl, "hsl_ma48", precisions)
    wrapper("hsl_ma48", headers, optimized)
    generic && macros_wrapper("hsl_ma48", macros, precisions)
  end

  if name == "all" || name == "hsl_ma57"
    precisions = "sd"
    headers = hsl_headers(hsl, "hsl_ma57", precisions)
    macros  = hsl_macros(hsl, "hsl_ma57", precisions)
    wrapper("hsl_ma57", headers, optimized)
    generic && macros_wrapper("hsl_ma57", macros, precisions)
  end

  if name == "all" || name == "hsl_ma77"
    precisions = "sd"
    headers = hsl_headers(hsl, "hsl_ma77", precisions)
    macros  = hsl_macros(hsl, "hsl_ma77", precisions)
    wrapper("hsl_ma77", headers, optimized)
    generic && macros_wrapper("hsl_ma77", macros, precisions)
  end

  if name == "all" || name == "hsl_ma86"
    precisions = "sdcz"
    headers = hsl_headers(hsl, "hsl_ma86", precisions)
    macros  = hsl_macros(hsl, "hsl_ma86", precisions)
    wrapper("hsl_ma86", headers, optimized)
    generic && macros_wrapper("hsl_ma86", macros, precisions)
  end

  if name == "all" || name == "hsl_ma87"
    precisions = "sdcz"
    headers = hsl_headers(hsl, "hsl_ma87", precisions)
    macros  = hsl_macros(hsl, "hsl_ma87", precisions)
    wrapper("hsl_ma87", headers, optimized)
    generic && macros_wrapper("hsl_ma87", macros, precisions)
  end

  if name == "all" || name == "hsl_ma97"
    precisions = "sdcz"
    headers = hsl_headers(hsl, "hsl_ma97", precisions)
    macros  = hsl_macros(hsl, "hsl_ma97", precisions)
    wrapper("hsl_ma97", headers, optimized)
    generic && macros_wrapper("hsl_ma97", macros, precisions)
  end

  if name == "all" || name == "hsl_mc64"
    precisions = "sdcz"
    headers = hsl_headers(hsl, "hsl_mc64", precisions)
    macros  = hsl_macros(hsl, "hsl_mc64", precisions)
    wrapper("hsl_mc64", headers, optimized)
    generic && macros_wrapper("hsl_mc64", macros, precisions)
  end

  if name == "all" || name == "hsl_mc68"
    precisions = "i"
    headers = hsl_headers(hsl, "hsl_mc68", precisions)
    macros  = hsl_macros(hsl, "hsl_mc68", precisions)
    wrapper("hsl_mc68", headers, optimized)
    generic && macros_wrapper("hsl_mc68", macros, precisions)
  end

  if name == "all" || name == "hsl_mc69"
    precisions = "sdcz"
    headers = hsl_headers(hsl, "hsl_mc69", precisions)
    macros  = hsl_macros(hsl, "hsl_mc69", precisions)
    wrapper("hsl_mc69", headers, optimized)
    generic && macros_wrapper("hsl_mc69", macros, precisions)
  end

  if name == "all" || name == "hsl_mc78"
    precisions = "il"
    headers = hsl_headers(hsl, "hsl_mc78", precisions)
    macros  = hsl_macros(hsl, "hsl_mc78", precisions)
    wrapper("hsl_mc78", headers, optimized)
    generic && macros_wrapper("hsl_mc78", macros, precisions)
  end

  if name == "all" || name == "hsl_mc79"
    precisions = "i"
    headers = hsl_headers(hsl, "hsl_mc79", precisions)
    macros  = hsl_macros(hsl, "hsl_mc79", precisions)
    wrapper("hsl_mc79", headers, optimized)
    generic && macros_wrapper("hsl_mc79", macros, precisions)
  end

  if name == "all" || name == "hsl_mi20"
    precisions = "sd"
    headers = hsl_headers(hsl, "hsl_mi20", "sd")
    macros  = hsl_macros(hsl, "hsl_mi20", "sd")
    wrapper("hsl_mi20", headers, optimized)
    generic && macros_wrapper("hsl_mi20", macros, precisions)
  end
end

# If we want to use the file as a script with `julia wrapper.jl`
if abspath(PROGRAM_FILE) == @__FILE__
  main()
end
