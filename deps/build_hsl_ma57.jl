open(hsl_ma57_archive) do f
  if bytes2hex(sha256(f)) != hsl_ma57_sha256
    error("SHA256 of HSL MA57 doesn't match")
  end
end
run(`tar -zxf $hsl_ma57_archive -C $builddir`)
cd("$builddir/hsl_ma57-$hsl_ma57_version")
if isfile(hsl_ma57_patch)
  run(`patch -p1 -i $hsl_ma57_patch`)
end
run(`./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
run(`$(HSL_FC) -fPIC -shared -Wl,$all_load $libdir/libhsl_ma57.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma57.$so`)
cd(@__DIR__)
