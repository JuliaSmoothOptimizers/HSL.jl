# METIS4 dependency for HSL.jl

libmetis4 = library_dependency("libmetis")  # METIS 5 not ok!

metis4_tap = "dpo/openblas/metis@4"
@static if Compat.Sys.isapple()
  provides(Homebrew.HB, metis4_tap, libmetis4, os=:Darwin)
end

provides(Sources,
         URI("http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz"),
         libmetis4,
         SHA="5efa35de80703c1b2c4d0de080fafbcf4e0d363a21149a1ad2f96e0144841a55",
         unpacked_dir="metis-4.0.3", os=:Unix)

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
          end), [libmetis4], os=:Unix)

@static if Compat.Sys.isunix()
  # Set metis_libpath for all Unix platforms.
  # TODO: update this when there are more providers.
  metis_libpath = joinpath(metis_prefix, "lib")
  @static if Compat.Sys.isapple()
    # It's different on OSX because we used Homebrew.
    metis_libpath = joinpath(Homebrew.prefix(metis4_tap), "lib")
  end
end
