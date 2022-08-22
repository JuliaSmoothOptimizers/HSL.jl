if hsl_ma97_version.ext == ".tar.gz"
  run(`tar -zxf $hsl_ma97_archive -C $builddir`)
elseif hsl_ma97_version.ext == ".zip"
  run(`unzip $hsl_ma97_archive -d $builddir`)
end
cd("$builddir/hsl_ma97-$(hsl_ma97_version.version)")
run(
  `./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS="-O3 -fPIC" FFLAGS="-O3 -fPIC -fopenmp" FCFLAGS="-O3 -fPIC -fopenmp" --with-blas="-L$libblas_dir $libblas" --with-metis="-L$libmetis_dir -lmetis"`,
)
run(`make install`)
cd(@__DIR__)
