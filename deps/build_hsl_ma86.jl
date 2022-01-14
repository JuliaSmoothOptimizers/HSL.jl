open(hsl_ma86_archive) do f
  if bytes2hex(sha256(f)) != hsl_ma86_sha256
    error("SHA256 of HSL MA86 doesn't match")
  end
end
run(`tar -zxf $hsl_ma86_archive -C $builddir`)
cd("$builddir/hsl_ma86-$hsl_ma86_version")
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma86.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma86.$so`)
cd(@__DIR__)