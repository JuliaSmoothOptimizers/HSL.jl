if hsl_ma97_version.ext == ".tar.gz"
  run(`tar -zxf $hsl_ma97_archive -C $builddir`)
elseif hsl_ma97_version.ext == ".zip"
  run(`unzip $hsl_ma97_archive -d $builddir`)
end
cd("$builddir/hsl_ma97-$(hsl_ma97_version.version)")
run(
  `./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`,
)
run(`make install`)
cd(@__DIR__)
