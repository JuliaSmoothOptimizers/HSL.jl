# BLAS/LAPACK dependency for HSL.jl

libblas = library_dependency("libblas")
liblapack = library_dependency("liblapack")

@static if Sys.isapple()
  provides(Homebrew.HB, "homebrew/core/openblas", libblas, os=:Darwin)
  provides(Homebrew.HB, "homebrew/core/openblas", liblapack, os=:Darwin)
end

provides(AptGet, "libblas-dev", libblas, os=:Linux)
provides(AptGet, "liblapack-dev", liblapack, os=:Linux)

# try to guess what BinDeps installed
blas_lib = "-lblas"
lapack_lib = "-llapack"
@static if Sys.isapple()
  hb_libopenblas_dir = joinpath(Homebrew.prefix("openblas"), "lib")
  if isdir(hb_libopenblas_dir)
    blas_lib = "-L$hb_libopenblas_dir -lopenblas"
    lapack_lib = "-L$hb_libopenblas_dir -lopenblas"
  end
end
