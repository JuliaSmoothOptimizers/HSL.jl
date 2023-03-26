# Script to partially generate wrappers from Fortran files
using HSL_jll
using JuliaFormatter
juliahsl = "/home/alexis/Bureau/git/hsl/juliahsl/"

# Symbols of the shared library libhsl
symbols_path = "symbols.txt"
run(pipeline(`nm -D $(HSL_jll.libhsl_path)`, stdout=symbols_path))

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

"""
Return the name and the arguments of a Fortran function or subroutine.
"""
function fortran_name_arguments(signature::String)
  v = split(signature, "(")
  fname = v[1]
  arguments = split(v[2], ", ")
  return fname, arguments
end

"""
Determine if a Fortran variable is an array or not.
If it's an array, we remove the size at the end of the variable name.
We will also know if `Ref` or `Ptr` should be use within the @ccall.
"""
function reference_type(variable::AbstractString, type::String)
  if occursin('(', variable)
    ref = "Ptr"
    var = split(variable, '(')[1]
  elseif occursin('*', variable) && type == "CHARACTER"
    ref = "Ptr"
    var = split(variable, '*')[1]
  else
    ref = "Ref"
    var = variable
  end
  return ref, var
end

"""
Mapping between Fortran and Julia types.
"""
function type_mapping(type::String)
  julia_type = ""
  (type == "INTEGER") && (julia_type = "Cint")
  (type == "LOGICAL") && (julia_type = "Cint")
  (type == "REAL") && (julia_type = "Float32")
  (type == "real(wp)") && (julia_type = "Float64")
  (type == "DOUBLEPRECISION") && (julia_type = "Float64")
  (type == "COMPLEX") && (julia_type = "ComplexF32")
  (type == "DOUBLECOMPLEX") && (julia_type = "ComplexF64")
  (type == "COMPLEX*16") && (julia_type = "ComplexF64")
  (type == "CHARACTER") && (julia_type = "UInt8")
  return julia_type
end

function type_detector(types::Vector{String}, arguments::Vector{<:AbstractString}, line::AbstractString, type::String)
  taille = length(line)
  len = length(type)
  julia_type = type_mapping(type)
  if (taille ≥ len) && (line[1:len] == type || line[1:len] == lowercase(type))
    variables = split(line[len+1:end], ',')
    for variable in variables
      ref, variable = reference_type(variable, type)
      for (i, argument) in enumerate(arguments)
        if (argument == variable) || (uppercase(argument) == variable)
          types[i] = "$ref{$(julia_type)}"
        end
      end
    end
  end
  return types
end

function fortran_types(code::AbstractString, arguments::Vector{<:AbstractString}; verbose::Bool=false)
  narguments = length(arguments)
  types = ["" for i=1:narguments]
  lines = split(code, "\n")
  nlines = length(lines)
  for i = nlines:-1:1
    lines[i] = replace(lines[i], "\t" => "")
    lines[i] = replace(lines[i], "\r" => "")
    lines[i] = replace(lines[i], " " => "")

    # For code written in FORTRAN 90
    lines[i] = replace(lines[i], "::" => "")
    lines[i] = replace(lines[i], ",intent(in)" => "")
    lines[i] = replace(lines[i], ",intent(out)" => "")
    lines[i] = replace(lines[i], ",intent(inout)" => "")
    lines[i] = replace(lines[i], ",INTENT(IN)" => "")
    lines[i] = replace(lines[i], ",INTENT(OUT)" => "")
    lines[i] = replace(lines[i], ",INTENT(INOUT)" => "")
    lines[i] = replace(lines[i], ",allocatable" => "")

    if occursin("!", lines[i])
      find = false
      for (k, value) in enumerate(lines[i])
        if value == '!' && !find
          find = true
          lines[i] = lines[i][1:k-1]
        end
      end
    end

    # The variables of the same type inside a function or a subroutine are sometimes split across multiple lines
    for p = 5:-1:2
      if (i ≥ p) && mapreduce(index -> length(lines[index]) ≥ 1, &, i-p+2:i) && mapreduce(index -> (lines[index][1] == '+') || (lines[index][1] == '$') || (lines[index][1] == '*') || (lines[index][1] == '&'), &, i-p+2:i)
        lines[i-p+1] = lines[i-p+1] * "," * lines[i][2:end] * ","
        lines[i] = ""
      end
    end
  end

  for line in lines
    taille = length(line)
    verbose && println(line)

    type_detector(types, arguments, line, "INTEGER")
    type_detector(types, arguments, line, "LOGICAL")
    type_detector(types, arguments, line, "REAL")
    type_detector(types, arguments, line, "real(wp)")
    type_detector(types, arguments, line, "DOUBLEPRECISION")
    type_detector(types, arguments, line, "COMPLEX")
    type_detector(types, arguments, line, "DOUBLECOMPLEX")
    type_detector(types, arguments, line, "COMPLEX*16")
    type_detector(types, arguments, line, "CHARACTER")

    if (taille ≥ 10) && (line[1:10] == "CHARACTER*" || line[1:10] == "character*")
      # start=12 -> CHARACTER*N with N < 10
      # start=13 -> CHARACTER*N with N ≥ 10 and N < 100
      # start=14 -> CHARACTER*N with N ≥ 100 and N < 1000
      for start in (12, 13, 14)
        length(line) ≥ start || continue
        variables = split(line[start:end], ',')
        for variable in variables
          for (i, argument) in enumerate(arguments)
            if (argument == variable) || (uppercase(argument) == variable)
              types[i] = "Ptr{UInt8}"
            end
          end
        end
      end
    end
  end
  return types
end

function fortran_analyzer(str::String)
  functions = []

  # Remove the comments
  lines = split(str, "\n")
  str = ""
  for line in lines
    if (length(line) ≥ 1) && (line[1] != 'C' && line[1] != 'c' && line[1] != '*')
      str = str * line * "\n"
    end
  end

  # We only want the signature of the subroutines and functions
  patterns = ["END SUBROUTINE", "end subroutine", "subroutine.", "SUBROUTINES.",
              "subroutines", "SUBROUTINES", "by subroutine", "of subroutine",
              "see subroutine", "SUBROUTINE.", "the subroutine", "THE SUBROUTINE",
              "THIS SUBROUTINE", "TO SUBROUTINE", "HARWELL SUBROUTINE", "ANALYSIS SUBROUTINE",
              "compression subroutine", "A subroutine", "A SUBROUTINE", "This subroutine",
              "Factorization subroutine", "END FUNCTION", "end function", "THE FUNCTION",
              "THIS FUNCTION", "Subroutines", "Functions"]
  for pattern in patterns
    str = replace(str, pattern => "")
  end

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
        verbose = false
        (fname == "unknown") && (verbose = true)
        types = fortran_types(code, arguments, verbose=verbose)

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
  # Create a vector with all symbols exported by the shared library libhsl
  symbols = read(symbols_path, String)
  symbols = split(symbols, "\n", keepempty=false)
  symbols = [symbol[20:end] for symbol in symbols]

  for (root, dirs, files) in walkdir(juliahsl)

    # We don't want to go inside "metis" and "juliahsl" folders
    mapreduce(excluded_folder -> occursin(excluded_folder, root), |, ["metis", "juliahsl/juliahsl"]) && continue

    # Test that we are in one subfolder of juliahsl
    if root != juliahsl
      package = split(root, juliahsl, keepempty=false)[1]
      # We are in the main folder of an HSL package
      # if '/' ∉ package && package != "ma46" && !occursin("hsl", package) # generate the wrappers for all packages
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
        hsl_name = occursin("hsl_", package) ? package[5:end] : package
        num_fnames = count(i -> occursin(hsl_name, i[1]), fnames_package)

        index = 0
        for fun in fnames_package
          signature, fname, arguments, types, output_type = fun
          narguments = length(arguments)

          # Only define functions directly related to the HSL package
          if occursin(hsl_name, signature)
            index = index + 1
            println()
            display(fname[1:end-1])
            display(types)
            # display(output_type)
            (fname ∉ symbols) && @warn "Unable to find the symbol $fname in the shared library libhsl"
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
        format_file(path_wrapper, YASStyle())
      end
    end
  end
end
