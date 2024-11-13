# Script to partially generate wrappers from Fortran files
using HSL_jll
using JuliaFormatter

release = "2024.11.8"
libhsl = "/home/alexis/Bureau/git/hsl/libhsl/libHSL.v$release/"

# Symbols of the shared library libhsl
symbols_path = "symbols.txt"
run(pipeline(`nm -D $(HSL_jll.libhsl_path)`, stdout=symbols_path))

# Relation between the hsl precision and the name of the symbols
hsl_precision = Dict{Char, String}('i' => "integer",
                                   'l' => "long_integer",
                                   's' => "single",
                                   'd' => "double",
                                   'c' => "complex",
                                   'z' => "double_complex")

# Function to easily get the extension of a file
function file_extension(file::String)
  pos_dot = findlast(==('.'), file)
  basename = pos_dot == nothing ? file : file[1:pos_dot-1]
  extension = pos_dot == nothing ? "" : file[pos_dot+1:end]
  return basename, extension
end

"""
Return the output type of a Fortran function or subroutine.
"""
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
  arguments = String.(arguments)
  return fname, arguments
end

"""
Determine if a Fortran variable is an array or not.
If it's an array, we remove the size at the end of the variable name.
We will also know if `Ref` or `Ptr` should be use within the @ccall.
"""
function reference_type(variable::AbstractString, type::String)
  if occursin('(', variable) && type != "TYPE"
    ref = "Ptr"
    var = split(variable, '(')[1]
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
  (type == "DOUBLEPRECISION") && (julia_type = "Float64")
  (type == "COMPLEX") && (julia_type = "ComplexF32")
  (type == "DOUBLECOMPLEX") && (julia_type = "ComplexF64")
  (type == "COMPLEX*16") && (julia_type = "ComplexF64")
  (type == "CHARACTER") && (julia_type = "UInt8")
  return julia_type
end

function type_detector(types::Vector{String}, arguments::Vector{String}, line::AbstractString, type::String)
  taille = length(line)
  len = length(type)
  julia_type = type_mapping(type)

  if startswith(line, type) || startswith(line, lowercase(type))
    if type == "TYPE" && !startswith(line, "TYPE=")  # We have a variable named TYPE in MA38...
      str = split(line[len+2:end], ')')
      julia_type = str[1]
      variables = split(str[2], ',')
    else
      variables = split(line[len+1:end], ',')
    end
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

"""
Determine all public symbols of a FORTRAN 90 file.
"""
function fortran_public(str::String)
  str = replace(str, " " => "")
  lines = split(str, "\n", keepempty=false)
  exported_symbols = String[]
  for line in lines
    if startswith(line, "public") || startswith(line, "PUBLIC")
      symbols = split(line[7:end], ',')
      for symbol in symbols
        push!(exported_symbols, symbol)
      end
    end
  end
  return exported_symbols
end

function fortran_types(code::AbstractString, arguments::Vector{String}; verbose::Bool=false)
  narguments = length(arguments)
  types = ["" for i=1:narguments]
  code = replace(code, " " => "")
  lines = split(code, "\n", keepempty=false)
  nlines = length(lines)

  # Number of characters for each string input
  strlen = Dict{String,Int}()

  for line in lines
    type_detector(types, arguments, line, "INTEGER")
    type_detector(types, arguments, line, "LOGICAL")
    type_detector(types, arguments, line, "REAL")
    type_detector(types, arguments, line, "real(wp)")
    type_detector(types, arguments, line, "DOUBLEPRECISION")
    type_detector(types, arguments, line, "COMPLEX")
    type_detector(types, arguments, line, "DOUBLECOMPLEX")
    type_detector(types, arguments, line, "COMPLEX*16")
    type_detector(types, arguments, line, "CHARACTER")
    type_detector(types, arguments, line, "TYPE")

    if startswith(line, "CHARACTER*") || startswith(line, "character*")
      # start=12 -> CHARACTER*N with N < 10
      # start=13 -> CHARACTER*N with N ≥ 10 and N < 100
      # start=14 -> CHARACTER*N with N ≥ 100 and N < 1000
      len = nothing
      start = 14
      while (len == nothing) && (start ≥ 12)
        len = length(line) ≥ start ? tryparse(Int, line[11:start-1]) : nothing
        (len == nothing) && (start = start - 1)
      end

      variables = split(line[start:end], ',')
      vec = [occursin('(', variable) for variable in variables]
      variables = [split(variable, '(')[1] for variable in variables]
      for (j, variable) in enumerate(variables)
        for (i, argument) in enumerate(arguments)
          if (argument == variable) || (uppercase(argument) == variable)
            if vec[j]
              types[i] = "Ptr{Ptr{UInt8}}"
            else
              types[i] = "Ptr{UInt8}"
            end
            strlen[argument] = len
          end
        end
      end
    end
  end
  return types, strlen
end

function fortran_analyzer(str::String, basename::String, extension::String)
  functions = []

  # Remove the comments
  lines = split(str, "\n", keepempty=false)
  str = ""
  for line in lines
    if extension == "f"
      if !startswith(line, 'C') && !startswith(line, 'c') && !startswith(line, '*')
        str = str * line * "\n"
      end
    elseif extension == "f90"
      line_nospace = replace(line, " " => "")
      if !startswith(line_nospace, '!')
        str = str * line * "\n"
      end
    else
      error("The extension $extension is not supported.")
    end
  end

  # Remove special caracters
  str = replace(str, "\t" => "")  # tab
  str = replace(str, "\r" => "")  # carriage return

  # The variables of the same type inside a function or a subroutine are sometimes splited across multiple lines
  lines = split(str, "\n", keepempty=false)
  str = ""
  for line in lines
    line_nospace = replace(line, " " => "")
    if startswith(line_nospace, '+') || startswith(line_nospace, '$') || startswith(line_nospace, '*') || startswith(line_nospace, '&')
      pos1 = startswith(line_nospace, '+') ? findfirst('+', line) : Inf
      pos2 = startswith(line_nospace, '$') ? findfirst('$', line) : Inf
      pos3 = startswith(line_nospace, '*') ? findfirst('*', line) : Inf
      pos4 = startswith(line_nospace, '&') ? findfirst('&', line) : Inf
      pos = min(pos1, pos2, pos3, pos4) |> Int
      str = str[1:end-1] * line[pos+1:end] * "\n"
    else
      str = str * line * "\n"
    end
  end

  # Remove some patterns to more easily parse files in FORTRAN 90
  if extension == "f90"
    str = replace(str, ", " => ",")
    str = replace(str, "::" => "")
    for pattern in ("in", "out", "inout")
      str = replace(str, " $pattern " => pattern)
      str = replace(str, " $(uppercase(pattern)) " => uppercase(pattern))
    end
    for pattern in (",intent(in)", ",intent(out)", ",intent(inout)")
      str = replace(str, pattern => "")
      str = replace(str, uppercase(pattern) => "")
    end
    str = replace(str, ",allocatable" => "")
    str = replace(str, ",OPTIONAL" => "")
    # str = replace(str, "CHARACTER(len=*)" => "CHARACTER(N),")

    lines = split(str, "\n", keepempty=false)
    str = ""
    for line in lines
      if occursin("!", line)
        find = false
        for (k, value) in enumerate(line)
          if value == '!' && !find
            find = true
            str = str * line[1:k-1] * "\n"
          end
        end
      else
        str = str * line * "\n"
      end
    end
  end

  # Remove double spaces
  double_spaces = occursin("  ", str)
  while double_spaces
    str = replace(str, "  " => " ")
    double_spaces = occursin("  ", str)
  end

  # Remove the first space if it's the first character of a line
  lines = split(str, "\n", keepempty=false)
  str = ""
  for line in lines
    pos = startswith(line, ' ') ? 2 : 1
    str = str * line[pos:end] * "\n"
  end

  # Remove double newlines
  double_newlines = occursin("\n\n", str)
  while double_newlines
    str = replace(str, "\n\n" => "\n")
    double_newlines = occursin("\n\n", str)
  end

  str = replace(str, "&\n" => "")
  str = replace(str, "( " => "(")
  str = replace(str, ", " => ",")
  str = replace(str, " )" => ")")

  # Rewrite some definitions related to characters
  lines = split(str, "\n", keepempty=false)
  str = ""
  for line in lines
    if startswith(line, "CHARACTER ")
      parameters = split(line, "CHARACTER ")[2]
      parameters = split(parameters, ",", keepempty=false)
      for parameter in parameters
        if occursin('*', parameter)
          param, size = split(parameter, "*")
          size = parse(Int, size)
          if size == 1
            str = str * "CHARACTER " * param * "\n"
          else
            str = str * "CHARACTER*" * "$size " * param * "\n"
          end
        else
          str = str * "CHARACTER " * parameter * "\n"
        end
      end
    else
      str = str * line * "\n"
    end
  end

  # --- DEBUG ---
  debug = false
  if debug
    lines = split(str, "\n", keepempty=false)
    for line in lines
      display(line)
    end
  end

  # For FORTRAN 90 files, not all functions or subroutines are public
  exported_symbols = fortran_public(str)
  (extension == "f90") && @info "The exported symbols of $(basename).f90 are $(exported_symbols)."

  for case in ["SUBROUTINE", "subroutine", "FUNCTION", "function"]
    # v is a list of subroutines and functions
    v = split(str, case)
    if length(v) ≥ 1
      # We found at least one subroutine or one function
      for (index, text) in enumerate(v[2:end])
        signature = split(text, ")")[1]
        code = split(text, signature)[2]

        # It's not a definition of a function if we don't find a "("
        !occursin("(", signature) && continue

        # It's not the definition of a function if we find one of these patterns
        excluded_patterns = ["/", "-", ".", ":", "!", "'", "="]
        mapreduce(excluded_pattern -> occursin(excluded_pattern, signature), |, excluded_patterns) && continue

        # Signature cleaning
        for pattern in [" ", "\n", "\r", "&", "\$", "+", "*"]
          signature = replace(signature, pattern => "")
        end
        signature = replace(signature, "," => ", ")
        signature = lowercase(signature)

        # Determine the name of the function / subroutine and its arguments
        fname, arguments = fortran_name_arguments(signature)

        # Subroutines in ma46 that we can't handle in Julia
        fname ∈ ("ma46u", "ma46ud", "ma46w", "ma46wd") && continue

        # The function or the subroutine is private
        (extension == "f90") && !isempty(exported_symbols) && !(fname ∈ exported_symbols) && !(uppercase(fname) ∈ exported_symbols) && continue

        # Determine the type of the arguments
        verbose = false
        (fname == "unknown") && (verbose = true)
        types, strlen = fortran_types(code, arguments, verbose=verbose)

        # Determine the type of the ouput
        output_type = fortran_output(case, v[index])

        # Update fname and signature
        if extension == "f"
          fname = fname * "_"
        else
          package = basename[1:end-1]
          precision = hsl_precision[basename[end]]
          fname = "__" * package * "_" * precision * "_MOD_" * fname
        end
        signature = signature * ")"

        push!(functions, (signature, fname, arguments, types, output_type, strlen))
      end
    end
  end
  return functions
end

function main(name::String="all"; verbose::Bool=false)
  # Create a vector with all symbols exported by the shared library libhsl
  symbols = read(symbols_path, String)
  symbols = split(symbols, "\n", keepempty=false)
  symbols = [symbol[20:end] for symbol in symbols]

  for (root, dirs, files) in walkdir(libhsl)

    # We don't want to go inside "examples", metis" and "libhsl" folders
    mapreduce(excluded_folder -> occursin(excluded_folder, root), |, ["examples", "metis", "libhsl/libhsl"]) && continue

    # Test that we are in one subfolder of libhsl
    if root != libhsl
      package = split(root, libhsl, keepempty=false)[1]
      # We are in the main folder of an HSL package
      # generate the wrappers for all packages
      all_flag = (name == "all") && ('/' ∉ package) && !occursin("hsl", package)
      if (name == package) || all_flag

        # Uncomment to update src/wrappers.jl
        # println("include(\"Fortran/$package.jl\")")

        path_wrapper = joinpath(@__DIR__, "..", "src", "Fortran", "$(package).jl")
        file_wrapper = open(path_wrapper, "w")
        
        # Debug mode (also replace `package == name` by `'/' ∉ package`)
        # path_wrapper = joinpath("..", "src", "Fortran", "debug.jl")
        # file_wrapper = open(path_wrapper, "a")

        @info "The wrappers of $package will be generated in $path_wrapper"
        fnames_package = String[]
        for file in files
          basename, ext = file_extension(file)
          if ext ∈ ("f", "f90")
            path_fortran = joinpath(root, file)
            file_fortran = open(path_fortran, "r")
            str = read(file_fortran, String)
            close(file_fortran)
            fnames = fortran_analyzer(str, basename, ext)
            fnames_package = vcat(fnames_package, fnames)
          end
        end

        # Remove duplicates
        fnames_package = unique(fnames_package)
        hsl_name = occursin("hsl_", package) ? package[5:end] : package
        num_fnames = count(i -> occursin(hsl_name, i[1]), fnames_package)

        format = true
        index = 0
        for fun in fnames_package
          signature, fname, arguments, types, output_type, strlen = fun
          narguments = length(arguments)

          # Only define functions directly related to the HSL package
          if occursin(hsl_name, signature)
            index = index + 1
            verbose && println()
            verbose && display(signature)
            verbose && display(types)
            # display(output_type)
            (fname ∉ symbols) && @warn "Unable to find the symbol $fname in the shared library libhsl"
            write(file_wrapper, "function $signature\n")
            write(file_wrapper, "  @ccall libhsl.$fname(")
            for k = 1:narguments
              if types[k] == ""
                format = false
                @warn "Unable to determine the type of $(arguments[k])"
              end
              write(file_wrapper, "$(arguments[k])::$(types[k])")
              (k < narguments) && write(file_wrapper, ", ")
            end

            # Hidden arguments
            if "Ref{UInt8}" ∈ types || "Ptr{UInt8}" ∈ types || "Ptr{Ptr{UInt8}}" ∈ types
              verbose && @info "Hidden argument in $fname."
            end
            for k = 1:narguments
              (types[k] == "Ref{UInt8}") && write(file_wrapper, ", 1::Csize_t")
              (types[k] == "Ptr{UInt8}") && write(file_wrapper, ", $(strlen[arguments[k]])::Csize_t")
              (types[k] == "Ptr{Ptr{UInt8}}") && write(file_wrapper, ", $(strlen[arguments[k]])::Csize_t")
            end

            if output_type == ""
              format = false
              @warn "Unable to determine the output type"
            end
            write(file_wrapper, ")::$(output_type)\n")
            write(file_wrapper, "end\n")
            index < num_fnames && write(file_wrapper, "\n")
          end
        end
        close(file_wrapper)
        format && format_file(path_wrapper, YASStyle())
      end
    end
  end
end
