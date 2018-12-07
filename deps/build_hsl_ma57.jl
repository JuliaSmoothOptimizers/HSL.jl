# HSL_MA57 package-specific dependencies.

# Users should place hsl_ma57-x.y.z.tar.gz in ~/.julia/v0.j/HSL/deps/downloads
libhsl_ma57 = library_dependency("libhsl_ma57", depends=[libblas, liblapack, libmetis4])

hsl_ma57_depsdir = BinDeps.depsdir(libhsl_ma57)
hsl_ma57_srcdir = joinpath(hsl_ma57_depsdir, "src")
hsl_ma57_src = joinpath(hsl_ma57_srcdir, "hsl_ma57-$hsl_ma57_version")
hsl_ma57_prefix = joinpath(hsl_ma57_depsdir, "usr")
hsl_ma57_libdir = joinpath(hsl_ma57_depsdir, "usr", "lib")

provides(SimpleBuild,
         (@build_steps begin
            BinDeps.ChecksumValidator(hsl_ma57_sha256, hsl_ma57_archive)
            CreateDirectory(hsl_ma57_srcdir)
            FileUnpacker(hsl_ma57_archive, hsl_ma57_srcdir, "hsl_ma57-$hsl_ma57_version")
            (@build_steps begin
              ChangeDirectory(hsl_ma57_src)
              `patch -p1 -i $hsl_ma57_depsdir/downloads/get_factors.patch`
              `./configure F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --prefix=$hsl_ma57_prefix --with-blas="$blas_lib" --with-metis="$metis_libpath"`
              `make install`
              `gfortran -fPIC -shared -Wl,$all_load $hsl_ma57_libdir/libhsl_ma57.a $(split(blas_lib)) $(split(lapack_lib)) $(split(metis_libpath)) -lgomp -Wl,$noall_load -o $hsl_ma57_libdir/libhsl_ma57.$so`
            end)
          end), libhsl_ma57, os=:Unix)

hsl_modules[:libhsl_ma57] = :libhsl_ma57
