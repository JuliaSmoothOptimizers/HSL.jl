# HSL_MA97 package-specific dependencies.

# Users should place hsl_ma97-x.y.z.tar.gz in ~/.julia/v0.j/HSL/deps/downloads
libhsl_ma97 = library_dependency("libhsl_ma97", depends=[libblas, liblapack, libmetis4])

hsl_ma97_depsdir = BinDeps.depsdir(libhsl_ma97)
hsl_ma97_srcdir = joinpath(hsl_ma97_depsdir, "src")
hsl_ma97_src = joinpath(hsl_ma97_srcdir, "hsl_ma97-$hsl_ma97_version")
hsl_ma97_prefix = joinpath(hsl_ma97_depsdir, "usr")
hsl_ma97_libdir = joinpath(hsl_ma97_depsdir, "usr", "lib")

provides(SimpleBuild,
         (@build_steps begin
            BinDeps.ChecksumValidator(hsl_ma97_sha256, hsl_ma97_archive)
            CreateDirectory(hsl_ma97_srcdir)
            FileUnpacker(hsl_ma97_archive, hsl_ma97_srcdir, "hsl_ma97-$hsl_ma97_version")
            (@build_steps begin
              ChangeDirectory(hsl_ma97_src)
              `./configure F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --prefix=$hsl_ma97_prefix --with-blas=-lblas --with-lapack=-llapack --with-metis="-L$metis_libpath -lmetis"`
              `make install`
              `gfortran -fPIC -shared -Wl,$all_load $hsl_ma97_libdir/libhsl_ma97.a -lblas -llapack -L$metis_libpath -lmetis -lgomp -Wl,$noall_load -o $hsl_ma97_libdir/libhsl_ma97.$so`
            end)
          end), libhsl_ma97, os=:Unix)

hsl_modules[:libhsl_ma97] = :libhsl_ma97
