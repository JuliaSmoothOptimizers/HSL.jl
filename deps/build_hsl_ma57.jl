if hsl_ma57_version.ext == ".tar.gz"
  run(`tar -zxf $hsl_ma57_archive -C $builddir`)
elseif hsl_ma57_version.ext == ".zip"
  run(`unzip $hsl_ma57_archive -d $builddir`)
end

cd("$builddir/$(hsl_ma57_version.algname)-$(hsl_ma57_version.version)")
if isfile(hsl_ma57_patch)
  run(`patch -p1 -i $hsl_ma57_patch`)
end
run(
  `./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS="-O3 -fPIC" FFLAGS="-O3 -fPIC -fopenmp" FCFLAGS="-O3 -fPIC -fopenmp" --with-blas="-L$libblas_dir $libblas" --with-metis="-L$libmetis_dir -lmetis"`,
)
run(`make install`)
run(
  `$(split(HSL_FC)) -fPIC -shared -Wl,$all_load $libdir/libhsl_ma57.a -L$libblas_dir $libblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma57.$dlext`,
)
cd(@__DIR__)
