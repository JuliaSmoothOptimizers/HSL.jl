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

### General Guidelines on Compilers

The version of gcc and gfortran used to compile HSL.jl should be based on the same version of the shared `libgfortran` library as the version of Julia being used.
On Linux, Julia ≥ 1.8 is based on `libgfortran` version 5, whereas on macOS, they are based on `libgfortran` version 4.
Thus for instance, versions of gcc/gfortran as recent as 11 are appropriate on Linux, but version 7 could be used on macOS.
On macOS, the compilers can be installed with Homebrew using
```
brew install gcc@7
```

### Installing on Apple Silicon

Homebrew does not (yet) provide precompiled binaries for gcc/gfortran based on `libgfortran` version 4.
One solution is to use Julia and the compilers built for Intel Macs via Rosetta.
First make sure that Rosetta is installed by following, e.g., [these instructions](https://osxdaily.com/2020/12/04/how-install-rosetta-2-apple-silicon-mac).

You may now install Homebrew for Intel Macs on your Silicon Mac:
```
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Note that Homebrew for Silicon installs in `/opt/homebrew` whereas Homebrew for Intel installs in `/usr/local`.

Next, install gcc/gfortran version 7 for Intel:
```
/usr/local/bin/brew install gcc@7
```

Finally, define the environment variables
* `HSL_FC=/usr/local/bin/gfortran-7 -arch x86_64`
* `HSL_CC=/usr/local/bin/gcc-7 -arch x86_64`
prior to building HSL.jl from the Julia command prompt.

## Supported Packages

### HSL_MA97

Supported versions:
* 2.6.0
* 2.7.0

[HSL_MA97](http://www.hsl.rl.ac.uk/catalogue/hsl_ma97.html): an OpenMP-based direct solver for symmetric linear systems.

### HSL_MA57

[HSL_MA57](http://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:
a sparse, multifrontal solver for symmetric linear systems.
