ver = hsl_coin_version
archive = hsl_coin_archive
if ver.ext == ".tar.gz"
    run(`tar -zxf $archive -C $builddir`)
elseif ver.ext == ".zip"
    run(`unzip $archive -d $builddir`)
end

name = getname(ver, false) 
cd("$builddir/$name")
download("http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz",joinpath(pwd(), "metis-4.0.3.tar.gz"))
run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas"`)
run(`make install`)
run(`gfortran -fPIC -shared -Wl,$all_load $libdir/lib$(ver.algname).a -L$libopenblas_dir -lopenblas -lgomp -Wl,$noall_load -o $libdir/lib$(ver.algname).$so`)
cd(@__DIR__)