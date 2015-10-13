using BinDeps
using Compat

@BinDeps.setup

# General dependencies.
libblas = library_dependency("libblas")
liblapack = library_dependency("liblapack")
libmetis4 = library_dependency("libmetis")  # METIS 5 not ok!

so = "so"
all_load = "-whole_archive"
noall_load = "-no-whole-archive"

@osx_only begin
  so = "dylib"
  all_load = "-all_load"
  noall_load = "-noall_load"
  using Homebrew
  Homebrew.add("homebrew/science/metis4")
  provides(Homebrew.HB, "metis4", libmetis4, os = :Darwin)
  push!(Libdl.DL_LOAD_PATH, joinpath(Homebrew.prefix("metis4"), "lib"))
end

provides(AptGet, "libblas-dev", libblas, os = :Linux)
provides(AptGet, "liblapack-dev", liblapack, os = :Linux)

provides(Sources,
         URI("http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz"),
         libmetis4,
         SHA="5efa35de80703c1b2c4d0de080fafbcf4e0d363a21149a1ad2f96e0144841a55",
         unpacked_dir="metis-4.0.3", os = :Unix)

metis_depsdir = BinDeps.depsdir(libmetis4)
metis_srcdir = joinpath(metis_depsdir, "src", "metis-4.0.3")
metis_prefix = joinpath(metis_depsdir, "usr")

# The METIS Makefile is quite rudimentary and will only build a static library.
provides(SimpleBuild,
         (@build_steps begin
            GetSources(libmetis4)
            (@build_steps begin
               ChangeDirectory(metis_srcdir)
               CreateDirectory(metis_prefix)
               CreateDirectory(joinpath(metis_prefix, "lib"))
               CreateDirectory(joinpath(metis_prefix, "include"))
               (@build_steps begin
                  `make COPTIONS=-fPIC`
                  `cc -fPIC -shared -Wl,$all_load $metis_srcdir/libmetis.a -Wl,$noall_load -o $metis_prefix/lib/libmetis.$so`
                  # `cp $metis_srcdir/Lib/*.h $metis_prefix/include`  # broken
                end)
             end)
          end), [libmetis4], os = :Unix)

# HSL package-specific dependencies.
libhsl_ma97 = library_dependency("libhsl_ma97", depends=[libblas, liblapack, libmetis4])

# Users should place hsl_ma97-2.3.0.tar.gz in ~/.julia/v0.x/HSL/deps/downloads

@unix_only begin
  # Set metis_libpath for all Unix platforms.
  # TODO: update this when there are more providers.
  metis_libpath = joinpath(metis_prefix, "lib")
  @osx_only begin
    # It's different on OSX because we used Homebrew.
    metis_libpath = joinpath(Homebrew.prefix("metis4"), "lib")
  end
end

depsdir = BinDeps.depsdir(libhsl_ma97)
srcdir = joinpath(depsdir, "src")
hslsrc = joinpath(srcdir, "hsl_ma97-2.3.0")
prefix = joinpath(depsdir, "usr")
libdir = joinpath(depsdir, "usr", "lib")
hsl_src_archive = joinpath(BinDeps.downloadsdir(libhsl_ma97), "hsl_ma97-2.3.0.tar.gz")

provides(SimpleBuild,
         (@build_steps begin
            BinDeps.ChecksumValidator("e3133eba520abcabaf1700106f8a1310d4286c61721f707e94fb7d45a220abf2", hsl_src_archive)
            CreateDirectory(srcdir)
            FileUnpacker(hsl_src_archive, srcdir, "hsl_ma97-2.3.0")
            (@build_steps begin
              ChangeDirectory(hslsrc)
              `./configure CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --prefix=$prefix --with-blas=-lblas --with-lapack=-llapack --with-metis="-L$metis_libpath -lmetis"`
              `make install`
              `gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma97.a -lblas -llapack -L$metis_libpath -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma97.dylib`
            end)
          end), libhsl_ma97, os = :Unix)

@BinDeps.install @compat Dict(:libhsl_ma97 => :libhsl_ma97)
