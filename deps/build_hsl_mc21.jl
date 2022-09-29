if hsl_mc21_version.ext == ".tar.gz"
  run(`tar -zxf $hsl_mc21_archive -C $builddir`)
elseif hsl_mc21_version.ext == ".zip"
  run(`unzip $hsl_mc21_archive -d $builddir`)
end

cd("$builddir/$(hsl_mc21_version.algname)-$(hsl_mc21_version.version)")
run(
  `./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS="-O3 -fPIC" FFLAGS="-O3 -fPIC" FCFLAGS="-O3 -fPIC" --with-blas="-L$libblas_dir $libblas" --with-lapack="-L$libblas_dir $libblas"`,
)
run(`make install`)
run(
  `$(split(HSL_FC)) -fPIC -shared -Wl,$all_load $libdir/libmc21.a -L$libblas_dir $libblas -Wl,$noall_load -o $libdir/libhsl_mc21.$dlext`,
)
cd(@__DIR__)
