type_modifications = Dict("realtype_s_" => "Float32",
                          "realtype_d_" => "Float64", 
                          "realtype_c_" => "Float32", 
                          "realtype_z_" => "Float64", 
                          "pkgtype_s_"  => "Float32", 
                          "pkgtype_d_"  => "Float64", 
                          "pkgtype_c_"  => "ComplexF32",
                          "pkgtype_z_"  => "ComplexF64",
                          "pkgtype_i_"  => "Cint",
                          "pkgtype_l_"  => "Clong",
                          "_pkgtype_i_" => "Cint",
                          "_pkgtype_l_" => "Clong",
                          "cntltype_s_" => "Float32",
                          "cntltype_d_" => "Float64",
                          "cntltype_c_" => "Float32",
                          "cntltype_z_" => "Float64")

structure_modifications = Dict("_control_s}"       => "_control{Float32}}",
                               "_control_d}"       => "_control{Float64}}",
                               "_control_c}"       => "_control{Float32}}",
                               "_control_z}"       => "_control{Float64}}",
                               "_control_i}"       => "_control{Cint}}",
                               "_control_l}"       => "_control{Clong}}",
                               "_solve_control_s}" => "_solve_control{Float32}}",
                               "_solve_control_d}" => "_solve_control{Float64}}",
                               "_info_s}"          => "_info{Float32}}",
                               "_info_d}"          => "_info{Float64}}",
                               "_info_c}"          => "_info{Float32}}",
                               "_info_z}"          => "_info{Float64}}",
                               "_info_i}"          => "_info{Cint}}",
                               "_info_l}"          => "_info{Clong}}",
                               "_ainfo_s}"         => "_ainfo{Float32}}",
                               "_ainfo_d}"         => "_ainfo{Float64}}",
                               "_finfo_s}"         => "_finfo{Float32}}",
                               "_finfo_d}"         => "_finfo{Float64}}",
                               "_sinfo_s}"         => "_sinfo{Float32}}",
                               "_sinfo_d}"         => "_sinfo{Float64}}")

function rewrite!(library::String, path::String, name::String, optimized::Bool)
  if library == "libhsl"
    libhsl_rewrite!(path, name, optimized)
  elseif library == "hsl_subset"
    hsl_subset_rewrite!(path, name, optimized)
  else
    error("The library $library is not supported.")
  end
end

function libhsl_rewrite!(path::String, name::String, optimized::Bool)
  text = read(path, String)
  if name == "libhsl"
    text = replace(text, "# no prototype is found for this function at libhsl.h:44:6, please use with caution\n" => "")
    text = replace(text, "major, minor, patch)\n" => ")\n  major = Ref{Cint}(0)\n  minor = Ref{Cint}(0)\n  patch = Ref{Cint}(0)\n")
    text = replace(text, "Ptr{Cint}" => "Ref{Cint}")
    text = replace(text, "    @ccall" => "  @ccall")
    text = replace(text, "Cvoid\n" => "Cvoid\n  return VersionNumber(major[], minor[], patch[])\n")
  else
    solver = split(name, "_")[2]
    text = replace(text, "struct $solver" => "mutable struct $solver")
    if optimized
      for (keys, vals) in type_modifications
        text = replace(text, solver * keys => vals)
      end
      for (keys, vals) in structure_modifications
        text = replace(text, solver * keys => solver * vals)
      end
      for structure in ("control", "info", "solve_control", "ainfo", "sinfo", "finfo")
        text = replace(text, "mutable struct $(solver)_$(structure)_s" => "mutable struct $(solver)_$(structure){T}")
        text = replace(text, "mutable struct $(solver)_$(structure)_i" => "mutable struct $(solver)_$(structure){T}")
        text = replace(text, "Ptr{$(solver)_$(structure)" => "Ref{$(solver)_$(structure)")
      end
      text = replace(text, "::Float32\n" => "::T\n")
      text = replace(text, "Float32}\n" => "T}\n")  # NTuple{N, Float32} → NTuple{N, T}

      # Add two constructors for each structure
      blocks = split(text, "end\n", keepempty=false)
      text = ""
      for code in blocks
        if contains(code, "mutable struct")
          structure = code * "end\n"
          structure_name = split(split(code, "mutable struct ")[2], "\n")[1]
          arguments = ""
          lines = split(code, "\n", keepempty=false)
          for line in lines
            if contains(line, "::")
              argument = split(line, "::")[1][3:end]
              if arguments == ""
                arguments *= argument
              else
                arguments *= ", $argument"
              end
            end
          end
          structure = replace(structure, "end\n" => "\n  " * structure_name * "() where T = new{T}()\nend\n")
          structure = replace(structure, "end\n" => "\n  " * structure_name * "($arguments) where T = new{T}($arguments)\nend\n")
          text = text * structure
        else
          text = text * code * "end\n"
        end
      end

      # Special cases where the structures are not parameterized.
      if name == "hsl_ma48"
        for type in ("T", "Float32", "Float64")
          text = replace(text, "$(solver)_sinfo{$type}" => "$(solver)_sinfo")
          text = replace(text, Regex("$(solver)_sinfo(\\([^)]*\\)) where T") => SubstitutionString("$(solver)_sinfo\\1"))
        end
        text = replace(text, "ma48_sinfo() = new{T}()" => "ma48_sinfo() = new()")
        text = replace(text, "ma48_sinfo(flag, more, stat) = new{T}(flag, more, stat)" => "ma48_sinfo(flag, more, stat) = new(flag, more, stat)")
      end

      if name == "hsl_mc64"
        text = replace(text, "new{T}" => "new")
        for type in ("T", "Float32", "Float64")
          text = replace(text, "$(solver)_control{$type}" => "$(solver)_control")
          text = replace(text, Regex("$(solver)_control(\\([^)]*\\)) where T") => SubstitutionString("$(solver)_control\\1"))
          text = replace(text, "$(solver)_info{$type}" => "$(solver)_info")
          text = replace(text, Regex("$(solver)_info(\\([^)]*\\)) where T") => SubstitutionString("$(solver)_info\\1"))
        end
      end

      if name == "hsl_mc68" || name == "hsl_mc78" || name == "hsl_mc79"
        text = replace(text, "new{T}" => "new")
        for type in ("T", "Cint", "Clong")
          text = replace(text, "$(solver)_control{$type}" => "$(solver)_control")
          text = replace(text, Regex("$(solver)_control(\\([^)]*\\)) where T") => SubstitutionString("$(solver)_control\\1"))
          text = replace(text, "$(solver)_info{$type}" => "$(solver)_info")
          text = replace(text, Regex("$(solver)_info(\\([^)]*\\)) where T") => SubstitutionString("$(solver)_info\\1"))
        end
      end
    end
  end
  write(path, text)
  (name != "libhsl") && format_file(path, YASStyle())
end

function hsl_subset_rewrite!(path::String, name::String, optimized::Bool)
  text = read(path, String)
  structures = ""
  info_structures = Tuple{String, String, Bool}[]
  if optimized
    text = replace(text, "struct " => "mutable struct ")
    text = replace(text, "hsl_longc_" => Int64)

    blocks = split(text, "end\n")
    text = ""
    for (index, code) in enumerate(blocks)
      if contains(code, "function")
        for (ipc_, rpc_, suffix, lib) in (("Int32", "Float32" , "_s"   , "libhsl_subset"   ),
                                          ("Int32", "Float64" , "_d"   , "libhsl_subset"   ),
                                          ("Int32", "Float128", "_q"   , "libhsl_subset"   ),
                                          ("Int64", "Float32" , "_s_64", "libhsl_subset_64"),
                                          ("Int64", "Float64" , "_d_64", "libhsl_subset_64"),
                                          ("Int64", "Float128", "_q_64", "libhsl_subset_64"))
          # We only want to generate two methods (Int32 / Int64) for hsl_mc68
          (name == "hsl_mc68") && (rpc_ != "Float64") && continue

          fname = split(split(code, "function ")[2], "(")[1]
          fname_generic = fname[1:end-2]
          pp_fname =  fname[1:end-2] * suffix
          routine = code * "end\n"
          if name == "hsl_mc68"
            endswith(fname, "_i") || error("The symbol $fname should have the suffix _i")
            pp_fname = replace(pp_fname, "control_d" => "control_i")
            pp_fname = replace(pp_fname, "order_d" => "order_i")
            routine = replace(routine, "function $fname(" => "function $(fname_generic)(::Type{$ipc_}, ")
          else
            endswith(fname, "_d") || error("The symbol $fname should have the suffix _d")
            routine = replace(routine, "function $fname(" => "function $(fname_generic)(::Type{$rpc_}, ::Type{$ipc_}, ")
          end
          routine = replace(routine, "libhsl.$fname(" => "$lib.$(pp_fname)(")
          routine = replace(routine, "ipc_" => ipc_)
          routine = replace(routine, "rpc_" => rpc_)

          # Update the type of the structures
          routine = replace(routine, "_d}" => "_d{$rpc_,$ipc_}}")
          routine = replace(routine, "_i}" => "_i{$rpc_,$ipc_}}")

          # Float128 should be passed by value as a Cfloat128
          routine = replace(routine, "::Float128" => "::Cfloat128")

          text = text * routine * "\n"
        end
      elseif contains(code, "struct")
        structure = code * "end\n"
        structure_name = split(split(code, "struct ")[2], "\n")[1] |> String
        generic_structure_name = structure_name[1:end-2] |> String
        generic_structure_name = 'M' * generic_structure_name[2:end]
        generic_structure_name = replace(generic_structure_name, "_solve_control" => "SolveControl")
        generic_structure_name = replace(generic_structure_name, "_control" => "Control")
        generic_structure_name = replace(generic_structure_name, "_ainfo" => "Ainfo")
        generic_structure_name = replace(generic_structure_name, "_finfo" => "Finfo")
        generic_structure_name = replace(generic_structure_name, "_sinfo" => "Sinfo")
        generic_structure_name = replace(generic_structure_name, "_info" => "Info")
        structure = replace(structure, "rpc_" => "T")
        structure = replace(structure, "ipc_" => "INT")
        if !contains(code, "rpc_")
          structure = replace(structure, structure_name => generic_structure_name * "{INT}")
          types = "{INT}"
          push!(info_structures, (structure_name, generic_structure_name, false))
        else
          structure = replace(structure, structure_name => generic_structure_name * "{T,INT}")
          types = "{T,INT}"
          push!(info_structures, (structure_name, generic_structure_name, true))
        end

        # Add two constructors for each structure
        arguments = ""
        lines = split(code, "\n", keepempty=false)
        for line in lines
          if contains(line, "::")
            argument = split(line, "::")[1][3:end]
            if arguments == ""
              arguments *= argument
            else
              arguments *= ", $argument"
            end
          end
        end
        structure = replace(structure, "end\n" => "\n  " * generic_structure_name * "$types() where $types = new$types()\nend\n")
        structure = replace(structure, "end\n" => "\n  " * generic_structure_name * "$types($arguments) where $types = new$types($arguments)\nend\n")

        structures = structures * structure * "\n"
      else
        text = text * code
      end
    end
  end
  text = structures * "\n" * text
  startswith(text, '\n') && (text = text[2:end])

  # Rename the structures in the wrappers
  for (old_struct, new_struct, bool) in info_structures
    if bool
      text = replace(text, "Ptr{$old_struct" => "Ref{$new_struct")
    else
      for precision in ("Float32", "Float64", "Float128")
        text = replace(text, "Ptr{$old_struct{$precision,Int32}}" => "Ref{$new_struct{Int32}}")
        text = replace(text, "Ptr{$old_struct{$precision,Int64}}" => "Ref{$new_struct{Int64}}")
      end
    end
  end

  write(path, text)
  format_file(path, YASStyle())
end
