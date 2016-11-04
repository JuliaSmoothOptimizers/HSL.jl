# BLAS/LAPACK dependency for HSL.jl

libblas = library_dependency("libblas")
liblapack = library_dependency("liblapack")

provides(AptGet, "libblas-dev", libblas, os=:Linux)
provides(AptGet, "liblapack-dev", liblapack, os=:Linux)
