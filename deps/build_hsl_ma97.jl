if hsl_ma97_version.ext == ".tar.gz"
    run(`tar -zxf $hsl_ma97_archive -C $builddir`)
elseif hsl_ma97_version.ext == ".zip"
    run(`unzip -o $hsl_ma97_archive -d $builddir`)
end

cd("$builddir/hsl_ma97-$(hsl_ma97_version.version)")
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma97.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma97.$so`)
cd(@__DIR__)
