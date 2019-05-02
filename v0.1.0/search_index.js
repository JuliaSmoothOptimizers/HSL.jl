var documenterSearchIndex = {"docs": [

{
    "location": "#",
    "page": "Reference",
    "title": "Reference",
    "category": "page",
    "text": ""
},

{
    "location": "#HSL.Ma57",
    "page": "Reference",
    "title": "HSL.Ma57",
    "category": "type",
    "text": "Instantiate an object of type Ma57 and perform the symbolic analysis on a sparse Julia matrix.\n\nM = Ma57(A; kwargs...)\n\nInput arguments\n\nA::SparseMatrixCSC{T<:Ma57Data,Int}: input matrix. The lower triangle will be extracted.\n\nKeyword arguments\n\nAll keyword arguments are passed directly to ma57_coord().\n\nExample:\n\n\njulia> T = Float64;\n\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\n\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\n\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\n\njulia> M = Ma57(A)\n\nHSL.Ma57{Float64}(5, 7, Int32[1, 1, 2, 2, 3, 3, 5], Int32[1, 2, 3, 5, 3, 4, 5], [2.0, 3.0, 4.0, 6.0, 1.0, 5.0, 1.0], HSL.Ma57_Control{Float64}(Int32[6, 6, 6, -1, 0, 5, 1, 0, 10, 1, 16, 16, 10, 100, 1, 0, 0, 0, 0, 0], [0.01, 1.0e-20, 0.5, 0.0, 0.0]), HSL.Ma57_Info{Float64}(Int32[0, 0, 0, 0, 12, 13, 4, 2, 48, 53  …  0, 0, 0, 0, 0, 2, 0, 0, 0, 0], [10.0, 34.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), 1.1, 81, Int32[5, 4, 3, 2, 1, 2, 9, 0, 0, 0  …  4, 3, 3, 2, 2, 1, 1, 0, 0, 0], 48, Float64[], 53, Int32[])\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma57Exception",
    "page": "Reference",
    "title": "HSL.Ma57Exception",
    "category": "type",
    "text": "Exception type raised in case of error.\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma57_Control",
    "page": "Reference",
    "title": "HSL.Ma57_Control",
    "category": "type",
    "text": "Main control type for MA57.\n\nMa57_Control(; kwargs...)\n\nKeyword arguments:\n\nprint_level::Int: integer controling the verbosit level. Accepted values are:\n<0: no printing\n0: errors and warnings only (default)\n1: errors, warnings and basic diagnostics\n2: errors, warning and full diagnostics\nunit_diagnostics::Int: Fortran file unit for diagnostics (default: 6)\nunit_error::Int: Fortran file unit for errors (default: 6)\nunit_warning::Int: Fortran file unit for warnings (default: 6)\n\nExample:\n\njulia> using HSL\njulia> Ma57_Control{Float64}(print_level=1)\nHSL.Ma57_Control{Float64}(Int32[6, 6, 6, -1, 1, 5, 1, 0, 10, 1, 16, 16, 10, 100, 1, 0, 0, 0, 0, 0], [0.01, 1.0e-20, 0.5, 0.0, 0.0])\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma57_Info",
    "page": "Reference",
    "title": "HSL.Ma57_Info",
    "category": "type",
    "text": "Main info type for MA57\n\ninfo = Ma57_Info{T <: Ma97Real}()\n\nAn info variable is used to collect statistics on the analysis, factorization, and solve.\n\nExample:\n\njulia> using HSL\njulia> T = Float64;\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\njulia> M = Ma57(A);\njulia> M.info\nHSL.Ma57_Info{Float64}(Int32[0, 0, 0, 0, 12, 13, 4, 2, 48, 53  …  0, 0, 0, 0, 0, 2, 0, 0, 0, 0], [10.0, 34.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma97-Union{Tuple{SparseMatrixCSC{T,Int64}}, Tuple{T}} where T<:Union{Complex{Float32}, Complex{Float64}, Float32, Float64}",
    "page": "Reference",
    "title": "HSL.Ma97",
    "category": "method",
    "text": "Instantiate and perform symbolic analysis on a sparse Julia matrix\n\nM = Ma97(A; kwargs...)\n\nInstantiate an object of type Ma97 and perform the symbolic analysis on a sparse Julia matrix.\n\nInput arguments\n\nA::SparseMatrixCSC{T<:Ma97Data,Int}: input matrix. The lower triangle will be extracted.\n\nKeyword arguments\n\nAll keyword arguments are passed directly to ma97_csc().\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma97Exception",
    "page": "Reference",
    "title": "HSL.Ma97Exception",
    "category": "type",
    "text": "Exception type raised in case of error.\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma97_Control",
    "page": "Reference",
    "title": "HSL.Ma97_Control",
    "category": "type",
    "text": "Main control type for MA97.\n\nMa97_Control(; kwargs...)\n\nKeyword arguments:\n\nprint_level::Int: integer controling the verbosit level. Accepted values are:\n<0: no printing\n0: errors and warnings only (default)\n1: errors, warnings and basic diagnostics\n2: errors, warning and full diagnostics\nunit_diagnostics::Int: Fortran file unit for diagnostics (default: 6)\nunit_error::Int: Fortran file unit for errors (default: 6)\nunit_warning::Int: Fortran file unit for warnings (default: 6)\n\n\n\n\n\n"
},

{
    "location": "#HSL.Ma97_Info",
    "page": "Reference",
    "title": "HSL.Ma97_Info",
    "category": "type",
    "text": "Main info type for MA97\n\ninfo = Ma97_Info{T <: Ma97Real}()\n\nAn info variable is used to collect statistics on the analysis, factorization and solve.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_alter_d",
    "page": "Reference",
    "title": "HSL.ma57_alter_d",
    "category": "function",
    "text": "Alter block diagonal matrix D\n\nInput arguments:\n\nM::Ma57: Ma57 object\nF::Array{Float64,2}: diagonal adjustment\n\nExample:\n\njulia> using HSL\n\njulia> T = Float64;\n\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\n\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\n\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\n\njulia> b = T[8, 45, 31, 15, 17]\n\njulia> ϵ = sqrt(eps(eltype(A)))\n\njulia> xexact = T[1, 2, 3, 4, 5]\n\njulia> M = Ma57(A)\n\njulia> ma57_factorize(M)\n\njulia> (L, D, s, p) = ma57_get_factors(M)\n\njulia> d1 = abs.(diag(D))\n\njulia> d2 = [diag(D, 1) ; 0]\n\njulia> F = [full(d1)\' ; full(d2)\']\n\njulia> ma57_alter_d(M, F)\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_factorize",
    "page": "Reference",
    "title": "HSL.ma57_factorize",
    "category": "function",
    "text": "Factorize Ma57 object.\n\nma57_factorize(M)\n\nInput arguments:\n\nM::Ma57: Ma57 object\n\nReturn values:\n\n(none)\n\nStored information:\n\nM.info.largest_front::Int: order of largest frontal matrix\nM.info.num_2x2_pivots::Int: number of 2x2 pivots used in factorization\nM.info.num_delayed_pivots::Int: total number of fully-summed variables that were passed to the father node because of pivoting considerations\nM.info.num_negative_eigs::Int: number of negative eigenvalues in factorization of M\nM.info.rank::Int: rank of factorization of M\nM.info.num_pivot_sign_changes::Int: number of sign changes of pivot when icntl(7) = 3 (ie, no pivoting)\n\nFactorize a sparse matrix.\n\nInput arguments:\n\nA::SparseMatrixCSC{T<:Ma57Data,Int}: sparse matrix\n\nReturn values:\n\nM::Ma57: factorized Ma57 object\n\nStored information:\n\nM.info.largest_front::Int: order of largest frontal matrix\nM.info.num_2x2_pivots::Int: number of 2x2 pivots used in factorization\nM.info.num_delayed_pivots::Int: total number of fully-summed variables that were passed to the father node because of pivoting considerations\nM.info.num_negative_eigs::Int: number of negative eigenvalues in factorization of A\nM.info.rank::Int: rank of factorization of A\nM.info.num_pivot_sign_changes::Int: number of sign changes of pivot when icntl(7) = 3 (ie, no pivoting)\n\nExample:\n\n\njulia> using HSL\n\njulia> T = Float64;\n\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\n\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\n\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\n\njulia> M = Ma57(A)\n\njulia> ma57_factorize(M)      ## factorize `Ma57` object in place\n\njulia> F = ma57_factorize(A)  ## factorize sparse matrix and return `Ma57` object\n\njulia> M.info.largest_front\n\n4\n\njulia> A.info.largest_front   ## same result\n\n4\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_get_factors",
    "page": "Reference",
    "title": "HSL.ma57_get_factors",
    "category": "function",
    "text": "Retrieve factors, scaling, and permutation.\n\nL, D, s, iperm = ma57getfactors(M)\n\nFunction will retrieve a unit triangular matrix L, a block-diagonal matrix D a scaling   vector s and a permutation vector p such that\n\nP * S * A * S * P\' = L * D * L\'\n\nwhere S = spdiagm(s) and P = speye(n)[p,:].\n\nNote that the numerical factorization must have been performed and have succeeded.\n\nInput arguments\n\nM::Ma57: factorized Ma57 object\n\nReturn values\n\nL::SparseMatrixCSC{T<:Ma57Data,Int}: L factor\nD::SparseMatrixCSC{T<:Ma57Data,Int}: D factor\ns::Array{T,1}: diagonal components of scaling matrix S\niperm::Array{Int,1}: array representin permutation matrix P\n\nExample:\n\n\njulia> using HSL\n\njulia> T = Float64;\n\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\n\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\n\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\n\njulia> b = T[8, 45, 31, 15, 17]\n\njulia> ϵ = sqrt(eps(eltype(A)))\n\njulia> xexact = T[1, 2, 3, 4, 5]\n\njulia> M = Ma57(A)\n\njulia> ma57_factorize(M)\n\njulia> (L, D, s, p) = ma57_get_factors(M)\n\njulia> S = spdiagm(s)\n\njulia> P = speye(M.n)[p, :]\n\njulia> vecnorm(P * S * A * S * P\' - L * D * L\') ≤ ϵ * vecnorm(A)\n\ntrue\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_least_squares-Union{Tuple{Ti}, Tuple{T}, Tuple{SparseMatrixCSC{T,Ti},Array{T,N} where N}} where Ti<:Integer where T<:Union{Float32, Float64}",
    "page": "Reference",
    "title": "HSL.ma57_least_squares",
    "category": "method",
    "text": "Solve the least-squares problem     minimize ‖Ax - b‖, where A has shape m-by-n with m > n, by solving the saddle-point system     [ I   A ] [ r ]   [ b ]     [ A\'    ] [ x ] = [ 0 ].\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_min_norm-Union{Tuple{Ti}, Tuple{T}, Tuple{SparseMatrixCSC{T,Ti},Array{T,N} where N}} where Ti<:Integer where T<:Union{Float32, Float64}",
    "page": "Reference",
    "title": "HSL.ma57_min_norm",
    "category": "method",
    "text": "Solve the minimum-norm problem     minimize ‖x‖  subject to Ax=b, where A has shape m-by-n with m < n, by solving the saddle-point system     [ I  A\' ] [ x ]   [ 0 ]     [ A     ] [ y ] = [ b ].\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_solve",
    "page": "Reference",
    "title": "HSL.ma57_solve",
    "category": "function",
    "text": "System solve.\n\nSolve after factorization without iterative refinement\n\nma57_solve(ma57, b; kwargs...)\n\nInput arguments:\n\nma57::Ma57{T<:Ma57Data}: an Ma57 structure for which the analysis and factorization have been performed\nb::Array{T}: vector of array of right-hand sides. Note that b will be overwritten. To solve a system with multiple right-hand sides, b should have size n by nrhs.\n\nKeyword arguments:\n\njob::Symbol=:A: task to perform. Accepted values are\n:A: solve Ax = b\n:LS: solve LPSx = PSb\n:DS: solve DPS⁻¹x = PSb\n:LPS: solve L\'PS⁻¹x = PS⁻¹b\n\nReturn values:\n\nx::Array{T}: an array of the same size as b containing the solutions.\n\nSolve after factorization with iterative refinement\n\nma57_solve(A, b, nitref; kwargs...)\n\nInput arguments:\n\nA::SparseMatrixCSC{T<:Ma57Data,Int}: input matrix. A full matrix will be converted to sparse.\nb::Array{T}: vector of array of right-hand sides. Note that b will be overwritten. To solve a system with multiple right-hand sides, b should have size n by nrhs.\nnitref::Int: number of iterative refinement steps\n\nReturn values:\n\nx::Array{T}: an array of the same size as b containing the solutions.\n\nStored information:\n\nAccessible through the Ma57 matrix object\'s `info` attribute\n\nma57.info.backward_error1::T: max{i} |b - Ax|i / (|b| + |A| |x|)_i\nma57.info.backward_error2::T: max{i} |b - Ax|i / ((|A| |x|)i + ||Ai||{∞} ||x||{∞})\nma57.info.matrix_inf_norm::T: ||A||_{∞}\nma57.info.solution_inf_norm::T: ||x||_{∞}\nma57.info.scaled_residuals::T: norm of scaled residuals = max{i} |sumj a{ij} xj - bi| / ||A||{∞} ||x||_{∞})\nma57.info.cond1::T: condition number as defined in Arioli, M. Demmel, J. W., and Duff, I. S. (1989). Solving sparse linear systems with sparse backward error. SIAM J.Matrix Anal. and Applics. 10, 165-190.\nma57.info.cond2::T: condition number as defined in Arioli, M. Demmel, J. W., and Duff, I. S. (1989). Solving sparse linear systems with sparse backward error. SIAM J.Matrix Anal. and Applics. 10, 165-190.\nma57.info.error_inf_norm::T: upper bound for the infinity norm of the error in the solution\n\nExample:\n\n\njulia> using HSL\n\njulia> T = Float64;\n\njulia> rows = Int32[1, 1, 2, 2, 3, 3, 5]; cols = Int32[1, 2, 3, 5, 3, 4, 5];\n\njulia> vals = T[2, 3, 4, 6, 1, 5, 1];\n\njulia> A = sparse(rows, cols, vals); A = A + triu(A, 1)\';\n\njulia> b = T[8, 45, 31, 15, 17]\n\njulia> ϵ = sqrt(eps(eltype(A)))\n\njulia> xexact = T[1, 2, 3, 4, 5]\n\njulia> M = Ma57(A)\n\njulia> ma57_factorize(M)\n\njulia> x = ma57_solve(M, b)      ## solve without iterative refinement\n\njulia> norm(x - xexact) ≤ ϵ * norm(xexact)\n\ntrue\n\njulia> xx = ma57_solve(M, b, 2)  ## solve with iterative refinement\n\njulia> norm(xx - xexact) ≤ ϵ * norm(xexact)\n\ntrue\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_solve!-Tuple{Ma57{Float32},Array{Float32,N} where N}",
    "page": "Reference",
    "title": "HSL.ma57_solve!",
    "category": "method",
    "text": "Solve a symmetric linear system. The symbolic analysis and numerical factorization must have been performed and must have succeeded.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma57_solve!-Tuple{Ma57{Float64},Array{Float64,N} where N}",
    "page": "Reference",
    "title": "HSL.ma57_solve!",
    "category": "method",
    "text": "Solve a symmetric linear system. The symbolic analysis and numerical factorization must have been performed and must have succeeded.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_coord",
    "page": "Reference",
    "title": "HSL.ma97_coord",
    "category": "function",
    "text": "Instantiate and perform symbolic analysis using coordinate arrays\n\nM = ma97_coord(n, cols, rows, nzval; kwargs...)\n\nInstantiate an object of type Ma97 and perform the symbolic analysis on a matrix described in sparse coordinate format.\n\nInput arguments\n\nn::Int: the matrix size\ncols::Vector{T<:Integer}: array of column indices for the lower triangle\nrows::Vector{T<:Integer}: array of row indices for the lower triangle\nnzval::Vector{T<:Ma97Data}: array of values for the lower triangle\n\nKeyword arguments\n\nAll keyword arguments are passed directly to the Ma97_Control constructor.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_csc",
    "page": "Reference",
    "title": "HSL.ma97_csc",
    "category": "function",
    "text": "Instantiate and perform symbolic analysis using CSC arrays\n\nM = ma97_csc(n, colptr, rowval, nzval; kwargs...)\n\nInstantiate an object of type Ma97 and perform the symbolic analysis on a matrix described in sparse CSC format.\n\nInput arguments\n\nn::Int: the matrix size\ncolptr::Vector{T<:Integer}: CSC colptr array for the lower triangle\nrowval::Vector{T<:Integer}: CSC rowval array for the lower triangle\nnzval::Vector{T<:Ma97Data}: CSC nzval array for the lower triangle\n\nKeyword arguments\n\nAll keyword arguments are passed directly to the Ma97_Control constructor.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_enquire",
    "page": "Reference",
    "title": "HSL.ma97_enquire",
    "category": "function",
    "text": "ma97enquire: see the documentation for `ma97inquire`.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_factorise",
    "page": "Reference",
    "title": "HSL.ma97_factorise",
    "category": "function",
    "text": "ma97factorise: see the documentation for `ma97factorize`.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_factorise!",
    "page": "Reference",
    "title": "HSL.ma97_factorise!",
    "category": "function",
    "text": "ma97factorise!: see the documentation for `ma97factorize!`.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_factorize",
    "page": "Reference",
    "title": "HSL.ma97_factorize",
    "category": "function",
    "text": "Combined Analysis and factorization\n\nM = ma97_factorize(A; kwargs...)\n\nConvenience method that combines the symbolic analysis and numerical factorization phases. An MA97 instance is returned, that can subsequently be passed to other functions, e.g., ma97_solve().\n\nInput Arguments\n\nA::SparseMatrixCSC{T<:Ma97Data,Int}: Julia sparse matrix\n\nKeyword Arguments\n\nmatrix_type::Symbol=:real_indef: indicates the matrix type. Accepted values are\n:real_spd for a real symmetric and positive definite matrix\n:real_indef for a real symmetric and indefinite matrix.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_factorize!",
    "page": "Reference",
    "title": "HSL.ma97_factorize!",
    "category": "function",
    "text": "Perform numerical factorization.\n\nma97_factorize!(ma97; kwargs...)\n\nThe symbolic analysis must have been performed and must have succeeded.\n\nInput Arguments\n\nma97::Ma97{T<:Ma97Data}:: an Ma97 structure for which the analysis has been performed\n\nKeyword Arguments\n\nmatrix_type::Symbol=:real_indef: indicates the matrix type. Accepted values are\n:real_spd for a real symmetric and positive definite matrix\n:real_indef for a real symmetric and indefinite matrix.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_inquire",
    "page": "Reference",
    "title": "HSL.ma97_inquire",
    "category": "function",
    "text": "Inquire about a factorization or solve\n\nma97_inquire(ma97; kwargs...)\n\nObtain information on the pivots after a successful factorization or solve.\n\nInput Arguments\n\nma97::Ma97{T<:Ma97Data}: an Ma97 structure for which the analysis and factorization have been performed\n\nKeyword arguments\n\nmatrix_type::Symbol=:real_indef: indicates the matrix type. Accepted values are\n:real_spd for a real symmetric and positive definite matrix\n:real_indef for a real symmetric and indefinite matrix.\n\nReturn values\n\nAn inquiry on a real or complex indefinite matrix returns two vectors:\n\npiv_order: contains the pivot sequence; a negative value indicates that the corresponding variable is part of a 2x2 pivot,\nd: a 2 by n array whose first row contains the diagonal of D⁻¹ in the factorization, and whose nonzeros in the second row contain the off-diagonals.\n\nAn inquiry on a positive definite matrix returns one vector with the pivot values.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_least_squares-Union{Tuple{T}, Tuple{SparseMatrixCSC{T,Int64},Array{T,1}}} where T<:Union{Complex{Float32}, Complex{Float64}, Float32, Float64}",
    "page": "Reference",
    "title": "HSL.ma97_least_squares",
    "category": "method",
    "text": "Solve least-squares problem\n\nma97_least_squares(A, b)\n\nSolve the least-squares problem\n\nminimize ‖Ax - b‖₂\n\nwhere A has shape m-by-n with m > n, by solving the saddle-point system\n\n[ I   A ] [ r ]   [ b ]\n[ A\'    ] [ x ] = [ 0 ].\n\nInput arguments\n\nA::SparseMatrixCSC{T<:Ma97Data,Int}: input matrix of shape m-by-n with m > n. A full matrix will be converted to sparse.\nb::Vector{T}: right-hand side vector\n\nReturn value\n\nx::Vector{T}: solution vector.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_min_norm-Union{Tuple{T}, Tuple{SparseMatrixCSC{T,Int64},Array{T,1}}} where T<:Union{Complex{Float32}, Complex{Float64}, Float32, Float64}",
    "page": "Reference",
    "title": "HSL.ma97_min_norm",
    "category": "method",
    "text": "Solve a minimum-norm problem\n\nma97_min_norm(A, b)\n\nsolves\n\nminimize ‖x‖₂  subject to Ax=b,\n\nwhere A has shape m-by-n with m < n, by solving the saddle-point system\n\n[ I  A\' ] [ x ]   [ 0 ]\n[ A     ] [ y ] = [ b ].\n\nInput arguments\n\nA::SparseMatrixCSC{T<:Ma97Data,Int}: input matrix of shape m-by-n with m < n. A full matrix will be converted to sparse.\nb::Vector{T}: right-hand side vector\n\nReturn value\n\nx::Vector{T}: solution vector.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_solve",
    "page": "Reference",
    "title": "HSL.ma97_solve",
    "category": "function",
    "text": "System solve\n\nSolve after factorization\n\nma97_solve(ma97, b; kwargs...)\n\nInput arguments\n\nma97::Ma97{T<:Ma97Data}: an Ma97 structure for which the analysis and factorization have been performed\nb::Array{T}: vector of array of right-hand sides. Note that b will be overwritten. To solve a system with multiple right-hand sides, b should have size n by nrhs.\n\nKeyword arguments\n\njob::Symbol=:A: task to perform. Accepted values are\n:A: solve Ax = b\n:PL: solve PLx = Sb\n:D: solve Dx = b\n:LPS: solve L\'P\'S⁻¹x = b\n:DLPS: solve DL\'P\'S⁻¹x = b.\n\nReturn values\n\nx::Array{T}: an array of the same size as b containing the solutions.\n\nCombined analysis, factorization and solve\n\nma97_solve(A, b; kwargs...)\n\nInput arguments\n\nA::SparseMatrixCSC{T<:Ma97Data,Int}: input matrix. A full matrix will be converted to sparse.\nb::Array{T}: vector of array of right-hand sides. Note that b will be overwritten. To solve a system with multiple right-hand sides, b should have size n by nrhs.\n\nKeyword arguments\n\nmatrix_type::Symbol=:real_indef: indicates the matrix type. Accepted values are\n:real_spd for a real symmetric and positive definite matrix\n:real_indef for a real symmetric and indefinite matrix.\n\nReturn values\n\nx::Array{T}: an array of the same size as b containing the solutions.\n\n\n\n\n\n"
},

{
    "location": "#HSL.ma97_solve!",
    "page": "Reference",
    "title": "HSL.ma97_solve!",
    "category": "function",
    "text": "In-place system solve\n\nSee the documentation for ma97_solve(). The only difference is that the right-hand side b is overwritten with the solution.\n\n\n\n\n\n"
},

{
    "location": "#Reference-1",
    "page": "Reference",
    "title": "Reference",
    "category": "section",
    "text": "HSL MA57 and MA97 can be used for the solution of symmetric, possibly indefinite, linear systems. They are often used for the solution of saddle-point systems, i.e., systems of the formbeginbmatrix\nH  A^T \nA \nendbmatrix\nbeginbmatrix\nx  y\nendbmatrix\n=\nbeginbmatrix\nb  c\nendbmatrixSpecial cases occur when H is the identity matrix and either b = 0 or c = 0, which correspond to the least-squares problemmin_y  A^T y - band to the least-norm problemmin_x  x  textsubject to  Ax = crespectively.Modules = [HSL]\nPrivate = false\nOrder   = [:module, :constant, :type, :function, :macro]"
},

]}
