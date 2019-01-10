var documenterSearchIndex = {"docs": [

{
    "location": "#",
    "page": "Reference",
    "title": "Reference",
    "category": "page",
    "text": ""
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
