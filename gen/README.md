# Wrapping headers

This directory contains scripts that can be used to automatically generate wrappers for C headers by HSL libraries.
This is done using Clang.jl.

# Usage

Either run `julia wrapper.jl` directly, or include it and call the `main()` function.
Be sure to activate the project environment in this folder, which will install `Clang.jl` and `JuliaFormatter.jl`.
The `main` function supports the boolean keyword argument `optimized` to clear the generated wrappers.
You can also call `main(library)` if you want to generate the wrapper for a specific HSL `library`.
The possible values for `library` are:
- `"all"` (default);
- ``juliahsl`;
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
- `"hsl_mi20"`.

# Maintenance

If a new C interface is available, add an entry for it in the `main` function of `wrapper.jl`.
