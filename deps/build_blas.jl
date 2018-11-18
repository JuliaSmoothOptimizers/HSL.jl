# BLAS/LAPACK dependency for HSL.jl

libblas = library_dependency("libblas")
liblapack = library_dependency("liblapack")

@static if Sys.isapple()
  provides(Homebrew.HB, "homebrew/core/openblas", libblas, os=:Darwin)
  provides(Homebrew.HB, "homebrew/core/openblas", liblapack, os=:Darwin)
end

provides(AptGet, "libblas-dev", libblas, os=:Linux)
provides(AptGet, "liblapack-dev", liblapack, os=:Linux)
