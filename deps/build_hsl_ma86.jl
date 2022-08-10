version = hsl_ma86_version
archive = hsl_ma86_archive
if version.ext == ".tar.gz"
    run(`tar -zxf $archive -C $builddir`)
elseif hsl_ma97_version.ext == ".zip"
    run(`unzip -o $archive -d $builddir`)
end
name = getname(version, false)
cd("$builddir/$name")
run(`./configure --prefix=$usrdir FC=$(HSL_FC) F77=$(HSL_F77) CC=$(HSL_CC) CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
run(`make install`)
cd(@__DIR__)
