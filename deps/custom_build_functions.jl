function build_coinhsl(ver, archive)
  so         = Sys.isapple() ? "dylib" : "so"
  all_load   = Sys.isapple() ? "-all_load" : "--whole-archive"
  noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

  libname = "lib" * ver.algname
  fp = FileProduct(prefix, "lib/$libname.$so", Symbol(libname))

  if ver.ext == ".tar.gz"
    run(`tar -zxf $archive -C $builddir`)
  elseif ver.ext == ".zip"
    run(`unzip -o $archive -d $builddir`)
  end
  
  name = getname(ver, false) 
  cd("$builddir/$name")
  download("http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz",joinpath(pwd(), "metis-4.0.3.tar.gz"))
  run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas"`)
  run(`make install`)
  run(`gfortran -fPIC -shared -Wl,$all_load $libdir/lib$(ver.algname).a -L$libopenblas_dir -lopenblas -lgomp -Wl,$noall_load -o $libdir/lib$(ver.algname).$so`)
  cd(@__DIR__)
  return [fp]
end

function buildma57(ver, archive)
  so         = Sys.isapple() ? "dylib" : "so"
  all_load   = Sys.isapple() ? "-all_load" : "--whole-archive"
  noall_load = Sys.isapple() ? "-noall_load" : "--no-whole-archive"

  libname = "lib" * ver.algname
  fp = FileProduct(prefix, "lib/$libname.$so", Symbol(libname))
  products = [fp]

  if ver.ext == ".tar.gz"
      run(`tar -zxf $archive -C $builddir`)
  elseif ver.ext == ".zip"
      run(`unzip -o $archive -d $builddir`)
  end

  archivedir = dirname(archive)
  hsl_ma57_patch = joinpath(archivedir, "get_factors.patch")

  name = getname(ver, false) 
  cd("$builddir/$name")
  if isfile(hsl_ma57_patch)
    run(`patch -p1 -i $hsl_ma57_patch`)
    push!(products, fp)
  end
  run(`./configure --prefix=$usrdir F77=gfortran CFLAGS=-fPIC FFLAGS="-fPIC -fopenmp" FCFLAGS="-fPIC -fopenmp" --with-blas="-L$libopenblas_dir -lopenblas" --with-metis="-L$libmetis_dir -lmetis"`)
  run(`make install`)
  run(`gfortran -fPIC -shared -Wl,$all_load $libdir/libhsl_ma57.a -L$libopenblas_dir -lopenblas -L$libmetis_dir -lmetis -lgomp -Wl,$noall_load -o $libdir/libhsl_ma57.$so`)
  cd(@__DIR__)
  return products
end