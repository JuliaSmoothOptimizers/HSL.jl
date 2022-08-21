var documenterSearchIndex = {"docs":
[{"location":"reference/#Reference","page":"Reference","title":"Reference","text":"","category":"section"},{"location":"reference/","page":"Reference","title":"Reference","text":"​","category":"page"},{"location":"reference/#Contents","page":"Reference","title":"Contents","text":"","category":"section"},{"location":"reference/","page":"Reference","title":"Reference","text":"​","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"Pages = [\"reference.md\"]","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"​","category":"page"},{"location":"reference/#Index","page":"Reference","title":"Index","text":"","category":"section"},{"location":"reference/","page":"Reference","title":"Reference","text":"​","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"Pages = [\"reference.md\"]","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"​","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"Modules = [HSL]","category":"page"},{"location":"#Home","page":"Home","title":"HSL.jl documentation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"A set of interfaces to HSL packages for sparse linear algebra.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Certain HSL packages are freely available to all, others are freely available to academics only. Please refer to the website above for licensing information. In all cases, users are responsible for obtaining HSL packages.","category":"page"},{"location":"#Installing","page":"Home","title":"Installing","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"julia> ]\npkg> add HSL","category":"page"},{"location":"","page":"Home","title":"Home","text":"At this point, make sure that there isn't a stray METIS library on your library path. You especially want to make sure that METIS 5 is not accessible because the HSL library currently interfaced only supports METIS 4. If you have such library accessible, it is important to remove it from the library path, at least temporarily. For example, if you are on OSX and are using Homebrew, you can hide METIS 5 with brew unlink metis. After the install procedure is complete, it is fine to link metis again with brew link metis.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Set the environment variables HSL_MA57_PATH and HSL_MA97_PATH to specify where the source archives tar.gz are stored. Alternatively, you can use the zip archive as long as unzip is installed on your system. The HSL Julia module will take care of compilation. Once the source archives have been placed in the locations indicated by the environment variables, run","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> ]\npkg> build HSL\npkg> test HSL","category":"page"},{"location":"","page":"Home","title":"Home","text":"Note that a C and Fortran compilers are required. Should it be necessary, you can set the compilers to use by setting the environment variables","category":"page"},{"location":"","page":"Home","title":"Home","text":"HSL_FC: the Fortran 90/95 compiler (default: gfortran)\nHSL_F77: the Fortran 77 compiler (default: the same as FC)\nHSL_CC: the C compiler (default: gcc).","category":"page"},{"location":"#General-Guidelines-on-Compilers","page":"Home","title":"General Guidelines on Compilers","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"The version of gcc and gfortran used to compile HSL.jl should be based on the same version of the shared libgfortran library as the version of Julia being used. On Linux, Julia ≥ 1.8 is based on libgfortran version 5, whereas on macOS, they are based on libgfortran version 4. Thus for instance, versions of gcc/gfortran as recent as 11 are appropriate on Linux, but version 7 could be used on macOS. On macOS, the compilers can be installed with Homebrew using","category":"page"},{"location":"","page":"Home","title":"Home","text":"brew install gcc@7","category":"page"},{"location":"#Installing-on-Apple-Silicon","page":"Home","title":"Installing on Apple Silicon","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Homebrew does not (yet) provide precompiled binaries for gcc/gfortran based on libgfortran version 4. One solution is to use Julia and the compilers built for Intel Macs via Rosetta. First make sure that Rosetta is installed by following, e.g., these instructions.","category":"page"},{"location":"","page":"Home","title":"Home","text":"You may now install Homebrew for Intel Macs on your Silicon Mac:","category":"page"},{"location":"","page":"Home","title":"Home","text":"arch -x86_64 /bin/bash -c \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Note that Homebrew for Silicon installs in /opt/homebrew whereas Homebrew for Intel installs in /usr/local.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Next, install gcc/gfortran version 7 for Intel:","category":"page"},{"location":"","page":"Home","title":"Home","text":"/usr/local/bin/brew install gcc@7","category":"page"},{"location":"","page":"Home","title":"Home","text":"Finally, define the environment variables","category":"page"},{"location":"","page":"Home","title":"Home","text":"HSL_FC=/usr/local/bin/gfortran-7 -arch x86_64\nHSL_CC=/usr/local/bin/gcc-7 -arch x86_64","category":"page"},{"location":"","page":"Home","title":"Home","text":"prior to building HSL.jl from the Julia command prompt.","category":"page"},{"location":"#Supported-Packages","page":"Home","title":"Supported Packages","text":"","category":"section"},{"location":"#HSL_MA97","page":"Home","title":"HSL_MA97","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Supported versions:","category":"page"},{"location":"","page":"Home","title":"Home","text":"2.6.0\n2.7.0","category":"page"},{"location":"","page":"Home","title":"Home","text":"HSL_MA97: an OpenMP-based direct solver for symmetric linear systems.","category":"page"},{"location":"#HSL_MA57","page":"Home","title":"HSL_MA57","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"HSL_MA57 version 5.2.0: a sparse, multifrontal solver for symmetric linear systems.","category":"page"},{"location":"tutorial/#Tutorial","page":"Tutorial","title":"Tutorial","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"HSL MA57 and MA97 can be used for the solution of symmetric, possibly indefinite, linear systems. They are often used for the solution of saddle-point systems, i.e., systems of the form","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"beginequation\n  labelSP\n  beginbmatrix\n    -H  A^T \n     A  G\n  endbmatrix\n  beginbmatrix\n    x  y\n  endbmatrix\n  =\n  beginbmatrix\n    c  b\n  endbmatrix","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Special cases occur when H is the identity matrix and either b = 0 or c = 0, which correspond to the least-squares problem","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"beginequation\n  labelLS\n  min_x  A x - b_2\nendequation","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Another special case occur when H = -I, G = 0 and c = 0, which corresponds to the least-norm problem","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"beginequation\n  labelLN\n  min_x  x  textsubject to  Ax = b\nendequation\n\n HSL_MA97\n\nSupported versions\n* 260\n* 270\n\nHSL_MA97(httpwwwhslrlacukcataloguehsl_ma97html) an OpenMP-based direct solver for symmetric linear systems Example\n","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA using MatrixMarket using HSL","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"K = MatrixMarket.mmread(\"K.mtx\")  # only the lower triangle rhs = readdlm(\"rhs.rhs\")","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"LBL = Ma97(K) ma97factorize!(LBL) x = ma97solve(LBL, rhs)  # or x = LBL \\ rhs","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"\n### Rectangular Systems\n\nThere is a convenience interface to solve rectangular systems that complements\nthe sparse QR factorization in Julia.\n\nWhen $A$ is $m$-by-$n$ with $m \\geq n$ and has full column rank,","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (r, x) = ma97_solve(A, b)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"solves \\eqref{LS}.\nThe call","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (r, x) = ma97leastsquares(A, b)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"is also defined, and is equivalent to the above.\n\nWhen *A* is *m*-by-*n* with *m* < *n* and has full row rank,","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (x, y) = ma97_solve(A, c)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"solves \\eqref{LN}, i.e., *x* such that *Ax = c* and *x +\nAᵀ y = 0*. The call","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (x, y) = ma97minnorm(A, c)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"is also defined, and is equivalent to the above.\n\n## HSL_MA57\n\n[HSL_MA57](http://www.hsl.rl.ac.uk/specs/ma57.pdf) version 5.2.0:\na sparse, multifrontal solver for symmetric linear systems. Example:\n","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA using MatrixMarket using HSL","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"K = MatrixMarket.mmread(\"examples/K0.mtx\")  # only the lower triangle rhs = readdlm(\"examples/rhs0.rhs\") rhss = hcat(rhs, rhs)","category":"page"},{"location":"tutorial/#factorize-and-solve","page":"Tutorial","title":"factorize and solve","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"LDL = Ma57(K) ma57factorize(LDL) LDL.info.rank x = ma57solve(LDL, rhs)  # or x = LBL \\ rhs norm(K*x - rhs) xx = ma57_solve(LDL, rhss)  # or x = LBL \\ rhss","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"\n### Rectangular Systems\n\nThere is a convenience interface to solve rectangular systems that complements\nthe sparse QR factorization in Julia.\n\nWhen *m* > *n* and has full column rank,","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (r, x) = ma57_solve(A, b)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"solves \\eqref{LS}, i.e., *x* such that *r = b - Ax*\nsatisfies *Aᵀ r = 0*. The call","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (r, x) = ma57leastsquares(A, b)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"is also defined, and is equivalent to the above.\n\nWhen *A* is *m*-by-*n* with *m* < *n* and has full row rank,","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (x, y) = ma57_solve(A, c)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"solves \\eqref{LN}, i.e., *x* such that *Ax = c* and *x +\nAᵀ y = 0*. The call","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA (x, y) = ma57minnorm(A, c)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"is also defined, and is equivalent to the above. Example:\n\n","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"JULIA using MatrixMarket using HSL","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"K = MatrixMarket.mmread(\"examples/K0.mtx\")  # only the lower triangle rhs = readdlm(\"examples/rhs0.rhs\")","category":"page"},{"location":"tutorial/#solve-min-norm","page":"Tutorial","title":"solve min norm","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Kmn = K[1:200,:] xmn, ymn = ma57minnorm(Kmn, rhs[1:200]) # == ma57solve(Kmn, rhs[1:200])","category":"page"},{"location":"tutorial/#solve-least-squares","page":"Tutorial","title":"solve least squares","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Kls = K[:,1:200] rls, xls = ma57leastsquares(Kls, rhs)   # == ma57solve(Kls, rhs) ```","category":"page"}]
}
