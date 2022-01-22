open(hsl_ma97_archive) do f
  if bytes2hex(sha256(f)) != hsl_ma97_sha256
    error("SHA256 of HSL MA97 doesn't match")
  end
end
run(`tar -zxf $hsl_ma97_archive -C $builddir`)
cd("$builddir/hsl_ma97-$hsl_ma97_version")
run(`./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
cd(@__DIR__)
