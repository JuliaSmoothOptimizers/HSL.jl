# [HSL.jl documentation](@id Home)

A set of interfaces to [HSL](http://www.hsl.rl.ac.uk) packages for sparse linear algebra.

Certain HSL packages are freely available to all, others are freely available
to academics only. Please refer to the website above for licensing information.
In all cases, users are responsible for obtaining HSL packages.

## Installing

```JULIA
julia> ]
pkg> add HSL
```

At this point, make sure that there isn't a stray METIS library on your library
path. You especially want to make sure that METIS 5 is not accessible because
the HSL library currently interfaced only supports METIS 4. If you have such
library accessible, it is important to remove it from the library path, at
least temporarily. For example, if you are on OSX and are using Homebrew, you
can hide METIS 5 with `brew unlink metis`. After the install procedure is
complete, it is fine to link `metis` again with `brew link metis`.

Set the environment variables `HSL_MA57_PATH` and `HSL_MA97_PATH` to specify where the source archives `tar.gz` are stored.
Alternatively, you can use the `zip` archive as long as `unzip` is installed on your system.
The `HSL` Julia module will take care of compilation.
Once the source archives have been placed in the locations indicated by the environment variables, run

```JULIA
julia> ]
pkg> build HSL
pkg> test HSL
```

Note that a C and Fortran compilers are required.
Should it be necessary, you can set the compilers to use by setting the environment variables
* `HSL_FC`: the Fortran 90/95 compiler (default: `gfortran`)
* `HSL_F77`: the Fortran 77 compiler (default: the same as `FC`)
* `HSL_CC`: the C compiler (default: `gcc`).

## Supported Packages

### HSL_MA97

Supported versions:
* 2.6.0
* 2.7.0

[HSL_MA97](http://www.hsl.rl.ac.uk/catalogue/hsl_ma97.html): an OpenMP-based direct solver for symmetric linear systems.

### HSL_MA57

[HSL_MA57](http://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:
a sparse, multifrontal solver for symmetric linear systems.
