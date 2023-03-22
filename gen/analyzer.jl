# Script to partially generate wrappers from Fortran files
juliahsl = "/home/alexis/Bureau/git/hsl/juliahsl/"

# Function to easily get the extension of a file
function file_extension(file::String)
  pos_dot = findlast(==('.'), file)
  extension = pos_dot == nothing ? "" : file[pos_dot+1:end]
  return extension
end

function fortran_analyzer(str::String)
  fnames = Tuple{String,String}[]
  # We only want the signature of the subroutines and functions
  str = replace(str, "END SUBROUTINE" => "")
  str = replace(str, "end subroutine" => "")
  str = replace(str, "subroutines" => "")
  str = replace(str, "SUBROUTINES" => "")
  str = replace(str, "of subroutine" => "")
  str = replace(str, "see subroutine" => "")
  str = replace(str, "A subroutine" => "")
  str = replace(str, "This subroutine" => "")
  str = replace(str, "END FUNCTION" => "")
  str = replace(str, "end function" => "")

  for case in ["SUBROUTINE", "subroutine", "FUNCTION", "function"]
    v = split(str, case)
    if length(v) != 1
      # We found at least one subroutine or one function
      for (index, text) in enumerate(v[2:end])
        fname = split(text, ")")[1]
        # It's not the definition of a function if we find one of these patterns
        excluded_patterns = ["/", "-", ".", ":", "!", "'", "=", "EXTERNAL", "TYPE"]
        mapreduce(excluded_pattern -> occursin(excluded_pattern, fname), |, excluded_patterns) && continue
        for pattern in [" ", "\n", "\r", "&", "\$", "+", "*"]
          fname = replace(fname, pattern => "")
        end
        fname = replace(fname, "," => ", ")
        fname = lowercase(fname)
        
        # Determine the type of the ouput
        if case in ("SUBROUTINE", "subroutine")
          output_type = "Cvoid"
        else
          # Check the return type before the occurence of "function" or "FUNCTION".
          taille = length(v[index])
          if (taille ≥ 8) && mapreduce(pattern -> occursin(pattern, v[index][end-7:end-1]), |, ["integer", "INTEGER"])
            output_type = "Cint"
          elseif (taille ≥ 17) && mapreduce(pattern -> occursin(pattern, v[index][end-16:end-1]), |, ["double precision", "DOUBLE PRECISION"])
            output_type = "Float64"
          elseif (taille ≥ 5) && mapreduce(pattern -> occursin(pattern, v[index][end-5:end-1]), |, ["real", "REAL"])
            output_type = "Float32"
          else
            output_type = ""
          end
        end
        push!(fnames, (fname, output_type))
      end
    end
  end
  return fnames
end

function main(name::String)
  for (root, dirs, files) in walkdir(juliahsl)

    # We don't want to go inside "metis" and "juliahsl" folders
    mapreduce(excluded_folder -> occursin(excluded_folder, root), |, ["metis", "juliahsl/juliahsl"]) && continue

    # Test that we are in one subfolder of juliahsl
    if root != juliahsl
      package = split(root, juliahsl, keepempty=false)[1]
      # We are in the main folder of an HSL package
      if package == name
        path_wrapper = joinpath("..", "src", "wrappers", "Fortran", "$(package).jl")
        file_wrapper = open(path_wrapper, "w")
        
        # Debug mode (also replace `package == name` by `'/' ∉ package`)
        # path_wrapper = joinpath("..", "src", "wrappers", "Fortran", "debug.jl")
        # file_wrapper = open(path_wrapper, "a")

        @info "The wrappers of $package will be generated in $path_wrapper"
        fnames_package = String[]
        for file in files
          if file_extension(file) ∈ ("f", "f90")
            path_fortran = joinpath(root, file)
            file_fortran = open(path_fortran, "r")
            str = read(file_fortran, String)
            close(file_fortran)
            fnames = fortran_analyzer(str)
            fnames_package = vcat(fnames_package, fnames)
          end
        end

        # Remove duplicates
        fnames_package = unique(fnames_package)
        num_fnames = length(fnames_package)
        
        for (index, fname) in enumerate(fnames_package)
          # Only define functions directly related to the HSL package
          hsl_name = occursin("hsl_", package) ? package[5:end] : package
          if occursin(hsl_name, fname[1])
            fname_mangling = replace(fname[1], "(" => "_(")
            if fname[2] == ""
              write(file_wrapper, "function $(fname[1]))\n  @ccall libhsl.$(fname_mangling))\nend\n")
            else
              write(file_wrapper, "function $(fname[1]))\n  @ccall libhsl.$(fname_mangling))::$(fname[2])\nend\n")
            end
            index < num_fnames && write(file_wrapper, "\n")
          end
        end
        close(file_wrapper)
      end
    end
  end
end
