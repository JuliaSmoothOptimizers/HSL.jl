# Script to parse HSL headers and generate Julia wrappers.
using HSL_jll
using Clang
using Clang.Generators
using JuliaFormatter

include("rewriter.jl")

function wrapper(library::String, name::String, headers::Vector{String}, optimized::Bool)

  @info "Wrapping $name"

  cd(@__DIR__)
  include_dir = joinpath(HSL_jll.artifact_dir, "include", library)
  options = load_options(joinpath(@__DIR__, "hsl.toml"))
  options["general"]["output_file_path"] = joinpath("..", "src", "C", library, "$(name).jl")

  if optimized && (library == "libhsl") && (name != "libhsl")
    solver = split(name, "_")[2]
    options["general"]["output_ignorelist"] = ["$(solver)realtype_[sdcz]_\$",
                                               "$(solver)pkgtype_[sdcz]_\$",
                                               "$(solver)pkgtype_[il]_\$",
                                               "$(solver)_pkgtype_[il]_\$",
                                               "$(solver)cntltype_[sdcz]_\$",
                                               "$(solver)_control_[dczl]\$",
                                               "$(solver)_info_[dczl]\$",
                                               "$(solver)_[afs]info_d\$",
                                               "$(solver)_solve_control_d\$"]
  end

  args = get_default_args()
  push!(args, "-I$include_dir")

  ctx = create_context(headers, args, options)
  build!(ctx, BUILDSTAGE_NO_PRINTING)

  # Only keep the wrapped headers because the dependencies are already wrapped with other headers.
  targets = headers
  replace!(get_nodes(ctx.dag)) do node
      path = Clang.get_filename(node.cursor)
      should_wrap = any(targets) do target
          occursin(target, path)
      end
      if !should_wrap
          return ExprNode(node.id, Generators.Skip(), node.cursor, Expr[], node.adj)
      end
      return node
    end

  build!(ctx, BUILDSTAGE_PRINTING_ONLY)

  path = options["general"]["output_file_path"]

  (name != "libhsl") && format_file(path, YASStyle())
  rewrite!(library, path, name, optimized)
  return nothing
end

function hsl_headers(include::String, package::String, precisions::Vector{Char}, generic::Bool)
  if generic
    headers = [joinpath(include, package) * ".h" for precision in precisions]
  else
    headers = [joinpath(include, package) * precision * ".h" for precision in precisions]
  end
  return headers
end

function main(name::String="all"; library::String="libhsl", optimized::Bool=false)
  (library == "libhsl") || (library == "hsl_subset") || error("The library $library is not supported.")
  generic = (library == "libhsl") ? false : true
  include = joinpath(HSL_jll.artifact_dir, "include", library)

  if (name == "all" && library == "libhsl") || name == "libhsl"
    wrapper(library, "libhsl", [joinpath(include, "libhsl.h")], optimized)
  end

  if name == "all" || name == "hsl_ma48"
    precisions = ['s', 'd']
    wrapper(library, "hsl_ma48", hsl_headers(include, "hsl_ma48", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_ma57"
    precisions = ['s', 'd']
    wrapper(library, "hsl_ma57", hsl_headers(include, "hsl_ma57", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_ma77"
    precisions = ['s', 'd']
    wrapper(library, "hsl_ma77", hsl_headers(include, "hsl_ma77", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_ma86"
    precisions = ['s', 'd', 'c', 'z']
    wrapper(library, "hsl_ma86", hsl_headers(include, "hsl_ma86", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_ma87"
    precisions = ['s', 'd', 'c', 'z']
    wrapper(library, "hsl_ma87", hsl_headers(include, "hsl_ma87", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_ma97"
    precisions = ['s', 'd', 'c', 'z']
    wrapper(library, "hsl_ma97", hsl_headers(include, "hsl_ma97", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_mc64"
    precisions = ['s', 'd', 'c', 'z']
    wrapper(library, "hsl_mc64", hsl_headers(include, "hsl_mc64", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_mc68"
    precisions = ['i']
    wrapper(library, "hsl_mc68", hsl_headers(include, "hsl_mc68", precisions, generic), optimized)
  end

  if (name == "all" && library == "libhsl") || name == "hsl_mc69"
    precisions = ['s', 'd', 'c', 'z']
    wrapper(library, "hsl_mc69", hsl_headers(include, "hsl_mc69", precisions, generic), optimized)
  end

  if (name == "all" && library == "libhsl") || name == "hsl_mc78"
    precisions = ['i', 'l']
    wrapper(library, "hsl_mc78", hsl_headers(include, "hsl_mc78", precisions, generic), optimized)
  end

  if (name == "all" && library == "libhsl") || name == "hsl_mc79"
    precisions = ['i']
    wrapper(library, "hsl_mc79", hsl_headers(include, "hsl_mc79", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_mi20"
    precisions = ['s', 'd']
    wrapper(library, "hsl_mi20", hsl_headers(include, "hsl_mi20", precisions, generic), optimized)
  end

  if name == "all" || name == "hsl_mi28"
    precisions = ['s', 'd']
    wrapper(library, "hsl_mi28", hsl_headers(include, "hsl_mi28", precisions, generic), optimized)
  end
end

# If we want to use the file as a script with `julia wrapper.jl`
if abspath(PROGRAM_FILE) == @__FILE__
  main("all"; library="libhsl", optimized=true)
  main("all"; library="hsl_subset", optimized=true)
end
