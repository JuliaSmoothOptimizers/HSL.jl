# Users should place hsl_ma97-x.y.z.tar.gz in ~/.julia/v0.j/HSL/deps/downloads

open(hsl_ma97_archive) do f
  if bytes2hex(sha256(f)) != hsl_ma97_sha256
    error("SHA256 of HSL MA97 doesn't match")
  end
end
run(`tar -zxf $hsl_ma97_archive -C $builddir`)
cd("$builddir/hsl_ma97-$hsl_ma97_version")
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma97.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma97.$so`)
cd(@__DIR__)
