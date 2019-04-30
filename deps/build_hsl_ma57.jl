# Users should place hsl_ma57-x.y.z.tar.gz in ~/.julia/v0.j/HSL/deps/downloads

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
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libdir -lopenblas" --with-metis="-L$libdir -lcoinmetis"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma57.a -L$libdir -lopenblas -lcoinmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma57.$so`)
cd(@__DIR__)
