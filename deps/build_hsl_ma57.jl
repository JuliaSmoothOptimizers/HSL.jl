if hsl_ma57_version.ext == ".tar.gz"
    run(`tar -zxf $hsl_ma57_archive -C $builddir`)
elseif hsl_ma57_version.ext == ".zip"
    run(`unzip -o $hsl_ma57_archive -d $builddir`)
end

cd("$builddir/hsl_ma57-$(hsl_ma57_version.version)")
if isfile(hsl_ma57_patch)
  run(`patch -p1 -i $hsl_ma57_patch`)
end
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma57.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma57.$so`)
cd(@__DIR__)
