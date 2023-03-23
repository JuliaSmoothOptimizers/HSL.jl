# Script to partially generate wrappers from Fortran files
juliahsl = "/home/alexis/Bureau/git/hsl/juliahsl/"

# Function to easily get the extension of a file
function file_extension(file::String)
  pos_dot = findlast(==('.'), file)
  extension = pos_dot == nothing ? "" : file[pos_dot+1:end]
  return extension
end

function fortran_output(case::String, text::AbstractString)
  if case in ("SUBROUTINE", "subroutine")
    output_type = "Cvoid"
  else
    # Check the return type before the occurence of "function" or "FUNCTION".
    taille = length(text)
    if (taille ≥ 8) && mapreduce(pattern -> occursin(pattern, text[end-7:end-1]), |, ["integer", "INTEGER"])
      output_type = "Cint"
    elseif (taille ≥ 17) && mapreduce(pattern -> occursin(pattern, text[end-16:end-1]), |, ["double precision", "DOUBLE PRECISION"])
      output_type = "Float64"
    elseif (taille ≥ 5) && mapreduce(pattern -> occursin(pattern, text[end-4:end-1]), |, ["real", "REAL"])
      output_type = "Float32"
    elseif (taille ≥ 8) && mapreduce(pattern -> occursin(pattern, text[end-7:end-1]), |, ["complex", "COMPLEX"])
      output_type = "ComplexF32"
    elseif (taille ≥ 11) && mapreduce(pattern -> occursin(pattern, text[end-10:end-1]), |, ["complex*16", "COMPLEX*16"])
      output_type = "ComplexF64"
    else
      output_type = ""
    end
  end
end

function fortran_name_arguments(signature::String)
  v = split(signature, "(")
  fname = v[1]
  arguments = split(v[2], ", ")
  return fname, arguments
end

function reference_type(variable::AbstractString)
  if occursin('(', variable)
    ref = "Ptr"
    var = split(variable, '(')[1]
  else
    ref = "Ref"
    var = variable
  end
  return ref, var
end

function fortran_types(code::AbstractString, arguments::Vector{<:AbstractString})
  narguments = length(arguments)
  types = ["" for i=1:narguments]
  lines = split(code, "\n")
  nlines = length(lines)
  for i = 1:nlines
    lines[i] = replace(lines[i], "\r" => "")
    lines[i] = replace(lines[i], " " => "")
    if (i ≥ 2) && (length(lines[i]) ≥ 1) && mapreduce(x -> x == lines[i][1], |, ['+', '$', '*'])
      lines[i-1] = lines[i-1] * "," * lines[i][2:end]
    end
    if (i ≥ 3) && (length(lines[i]) ≥ 1) && (length(lines[i-1]) ≥ 1) && mapreduce(x -> x == lines[i][1], |, ['+', '$', '*']) && mapreduce(x -> x == lines[i-1][1], |, ['+', '$', '*'])
      lines[i-2] = lines[i-2] * "," * lines[i][2:end]
    end
    if (i ≥ 4) && (length(lines[i]) ≥ 1) && (length(lines[i-1]) ≥ 1) && (length(lines[i-2]) ≥ 1) && mapreduce(x -> x == lines[i][1], |, ['+', '$', '*']) && mapreduce(x -> x == lines[i-1][1], |, ['+', '$', '*']) && mapreduce(x -> x == lines[i-2][1], |, ['+', '$', '*'])
      lines[i-3] = lines[i-3] * "," * lines[i][2:end]
    end
  end
  for line in lines
    taille = length(line)

    if (taille ≥ 7) && (line[1:7] == "INTEGER" || line[1:7] == "integer")
      variables = split(line[8:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{Cint}"
          end
        end
      end

    elseif (taille ≥ 9) && (line[1:9] == "CHARACTER" || line[1:9] == "character")
      variables = split(line[10:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          # *N at the end of the variable, N requires one or two characters
          if (argument == variable[1:end-2]) || (uppercase(argument) == variable[1:end-2]) || (argument == variable[1:end-3]) || (uppercase(argument) == variable[1:end-3])
            types[i] = "Ptr{UInt8}"
          end
        end
      end

    elseif (taille ≥ 10) && (line[1:10] == "CHARACTER*" || line[1:10] == "character*")
      variables = split(line[12:end], ',')  # CHARACTER*N with N < 10
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "Ptr{UInt8}"
          end
        end
      end
      variables = split(line[13:end], ',')  # CHARACTER*N with N ≥ 10 and N < 100
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "Ptr{UInt8}"
          end
        end
      end

    elseif (taille ≥ 7) && (line[1:7] == "LOGICAL" || line[1:7] == "logical")
      variables = split(line[8:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{Cint}"
          end
        end
      end

    elseif (taille ≥ 4) && (line[1:4] == "REAL" || line[1:4] == "real")
      variables = split(line[5:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{Float32}"
          end
        end
      end

    elseif (taille ≥ 15) && (line[1:15] == "DOUBLEPRECISION" || line[1:15] == "doubleprecision")
      variables = split(line[16:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{Float64}"
          end
        end
      end

    elseif (taille ≥ 13) && (line[1:13] == "DOUBLECOMPLEX" || line[1:13] == "doublecomplex")
      variables = split(line[14:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{ComplexF64}"
          end
        end
      end

    elseif (taille ≥ 10) && (line[1:10] == "COMPLEX*16" || line[1:10] == "complex*16")
      variables = split(line[11:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{ComplexF64}"
          end
        end
      end

    elseif (taille ≥ 7) && (line[1:7] == "COMPLEX" || line[1:7] == "complex")
      variables = split(line[8:end], ',')
      for variable in variables
        ref, variable = reference_type(variable)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            types[i] = "$ref{ComplexF32}"
          end
        end
      end
    end
  end
  return types
end

function fortran_analyzer(str::String)
  functions = []

  # We only want the signature of the subroutines and functions
  str = replace(str, "END SUBROUTINE" => "")
  str = replace(str, "end subroutine" => "")
  str = replace(str, "subroutine." => "")
  str = replace(str, "subroutines" => "")
  str = replace(str, "SUBROUTINES" => "")
  str = replace(str, "by subroutine" => "")
  str = replace(str, "of subroutine" => "")
  str = replace(str, "see subroutine" => "")
  str = replace(str, "compression subroutine" => "")
  str = replace(str, "A subroutine" => "")
  str = replace(str, "This subroutine" => "")
  str = replace(str, "END FUNCTION" => "")
  str = replace(str, "end function" => "")

  for case in ["SUBROUTINE", "subroutine", "FUNCTION", "function"]
    v = split(str, case)
    if length(v) != 1
      # We found at least one subroutine or one function
      for (index, text) in enumerate(v[2:end])
        signature = split(text, ")")[1]
        code = split(text, signature)[2]

        # It's not a definition of a function if we don't find a "("
        !occursin("(", signature) && continue

        # It's not the definition of a function if we find one of these patterns
        excluded_patterns = ["/", "-", ".", ":", "!", "'", "=", "EXTERNAL", "TYPE"]
        mapreduce(excluded_pattern -> occursin(excluded_pattern, signature), |, excluded_patterns) && continue

        # Signature cleaning
        for pattern in [" ", "\n", "\r", "&", "\$", "+", "*"]
          signature = replace(signature, pattern => "")
        end
        signature = replace(signature, "," => ", ")
        signature = lowercase(signature)

        # Determine the name of the function / subroutine and its arguments
        fname, arguments = fortran_name_arguments(signature)

        # Determine the type of the arguments
        types = fortran_types(code, arguments)

        # Determine the type of the ouput
        output_type = fortran_output(case, v[index])

        # Update fname and signature
        fname = fname * "_"
        signature = signature * ")"

        push!(functions, (signature, fname, arguments, types, output_type))
      end
    end
  end
  return functions
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
        path_wrapper = joinpath("..", "src", "Fortran", "$(package).jl")
        file_wrapper = open(path_wrapper, "w")
        
        # Debug mode (also replace `package == name` by `'/' ∉ package`)
        # path_wrapper = joinpath("..", "src", "Fortran", "debug.jl")
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
        
        for (index, fun) in enumerate(fnames_package)
          signature, fname, arguments, types, output_type = fun
          narguments = length(arguments)

          # Only define functions directly related to the HSL package
          hsl_name = occursin("hsl_", package) ? package[5:end] : package
          if occursin(hsl_name, signature)
            println()
            display(fname[1:end-1])
            display(types)
            display(output_type)
            write(file_wrapper, "function $signature\n")
            write(file_wrapper, "  @ccall libhsl.$fname(")
            for k = 1:narguments
              types[k] == "" && @info "Unable to determine the type of $(arguments[k])"
              write(file_wrapper, "$(arguments[k])::$(types[k])")
              (k < narguments) && write(file_wrapper, ", ")
            end
            output_type == "" && @info "Unable to determine the output type"
            write(file_wrapper, ")::$(output_type)\n")
            write(file_wrapper, "end\n")
            index < num_fnames && write(file_wrapper, "\n")
          end
        end
        close(file_wrapper)
      end
    end
  end
end
