# Wrapping headers

This directory contains a script that can be used to automatically generate wrappers from C headers provided by the HSL libraries.
This is done using Clang.jl.
We also have a script to generate the skeleton of wrappers for Fortran functions and subroutines.

# Usage

Either run `julia wrapper.jl` directly, or include it and call the `main()` function.
Be sure to activate the project environment in this folder (`julia --project`), which will install `Clang.jl` and `JuliaFormatter.jl`.
The `main` function supports the boolean keyword argument `optimized` to clear the generated wrappers.
You can also call `main(library)` if you want to generate the wrapper for a specific HSL `library`.
The possible values for `library` are:
- `"all"` (default);
- `"juliahsl"`;
- `"hsl_ma48"`;
- `"hsl_ma57"`;
- `"hsl_ma77"`;
- `"hsl_ma86"`;
- `"hsl_ma87"`;
- `"hsl_ma97"`;
- `"hsl_mc64"`;
- `"hsl_mc68"`;
- `"hsl_mc69"`;
- `"hsl_mc78"`;
- `"hsl_mc79"`;
- `"hsl_mi20"`;
- `"hsl_mi28"`.

If a package doesn't have a C interface, we are still able to use it in Julia but we need to call the Fortran functions and subroutines.
The wrappers for Fortran functions and subroutines can't be easily generated and are generally written by hand but the file `analyzer.jl` helps to partially generate the wrappers.
`analyzer.jl` is only able to fully generate the wrappers of functions and subroutines written in FORTRAN 77.
You just need to provide the path of the `JuliaHSL` on your computer (`julihsl` variable) and call `main(library)`.
`library` can be any HSL package available in the `JuliaHSL` folder.

# Maintenance

If a new C interface is available, add an entry for it in the `main` function of `wrapper.jl`.
