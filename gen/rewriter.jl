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

function rewrite!(path::String, name::String, optimized::Bool)
  text = read(path, String)
  if name == "libhsl"
    updated_text = replace(text, "# no prototype is found for this function at libhsl.h:44:6, please use with caution\n" => "")
    updated_text = replace(updated_text, "major, minor, patch)\n" => ")\n    major = Ref{Cint}(0)\n    minor = Ref{Cint}(0)\n    patch = Ref{Cint}(0)\n")
    updated_text = replace(updated_text, "Ptr{Cint}" => "Ref{Cint}")
    updated_text = replace(updated_text, "Cvoid\n" => "Cvoid\n    VersionNumber(major[], minor[], patch[])\n")
  else
    solver = split(name, "_")[2]
    updated_text = replace(text, "struct $solver" => "mutable struct $solver")
    if optimized
      for (keys, vals) in type_modifications
        updated_text = replace(updated_text, solver * keys => vals)
      end
      for (keys, vals) in structure_modifications
        updated_text = replace(updated_text, solver * keys => solver * vals)
      end
      for structure in ("control", "info", "solve_control", "ainfo", "sinfo", "finfo")
        updated_text = replace(updated_text, "mutable struct $(solver)_$(structure)_s" => "mutable struct $(solver)_$(structure){T}")
        updated_text = replace(updated_text, "mutable struct $(solver)_$(structure)_i" => "mutable struct $(solver)_$(structure){T}")
        updated_text = replace(updated_text, "Ptr{$(solver)_$(structure)" => "Ref{$(solver)_$(structure)")
      end
      updated_text = replace(updated_text, "::Float32\n" => "::T\n")
      updated_text = replace(updated_text, "Float32}\n" => "T}\n")  # NTuple{N, Float32} → NTuple{N, T}

      # Special cases where the structures are not parameterized.
      if name == "hsl_ma48"
        for type in ("T", "Float32", "Float64")
          updated_text = replace(updated_text, "$(solver)_sinfo{$type}" => "$(solver)_sinfo")
        end
      end

      if name == "hsl_mc64"
        for type in ("T", "Float32", "Float64")
          updated_text = replace(updated_text, "$(solver)_control{$type}" => "$(solver)_control")
          updated_text = replace(updated_text, "$(solver)_info{$type}" => "$(solver)_info")
        end
      end

      if name == "hsl_mc68" || name == "hsl_mc78" || name == "hsl_mc79"
        for type in ("T", "Cint", "Clong")
          updated_text = replace(updated_text, "$(solver)_control{$type}" => "$(solver)_control")
          updated_text = replace(updated_text, "$(solver)_info{$type}" => "$(solver)_info")
        end
      end
    end
  end
  write(path, updated_text)
end
