@testset "mc26" begin
    # Define the matrix A:
    # [1.0 4.0]
    # [0.0 3.0]
    # [5.0 0.0]
    rowval = Cint[1, 2, 3, 1]  # rows of nonzeros (Fortran-style indexing)
    colptr = Cint[1, 3, 5]     # column pointer (CSC)
    nzval  = [1.0, 3.0, 5.0, 4.0]  # nonzero values

    @testset "Precision $T" for T in (Float32, Float64)
        A = SparseMatrixCSC{T,Cint}(3, 2, colptr, rowval, T.(nzval))

        jptr, iptr, ata = mc26(A)

        @test jptr == Cint[1, 3, 4]   # two columns in AᵀA, jptr[3] = 4 means 3 nnz
        @test iptr == Cint[1, 2, 2]   # row indices for columns
        @test ata ≈ T[26.0, 4.0, 25.0] # AᵀA = [26 4; 4 25], stored by columns
    end
end
