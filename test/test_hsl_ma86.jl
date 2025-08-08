using HSL
using SparseArrays
using LinearAlgebra
using Test
using Random

function getallocs(A,b)
    T = eltype(A)
    n = size(A,1)
    ma86 = Ma86(A)
    allocs = @allocated HSL.analyse!(ma86)
    allocs += @allocated HSL.factor!(ma86)
    x = copy(b)
    allocs += @allocated HSL.solve!(ma86, x)
end

T = Float64
n = 10
A = convert(T, 3) * sprand(T, n, n, 0.5)
Aindef = A + A' + one(T)*I
ma86 = Ma86(Aindef)
ma86.flags.isanalysisdone
HSL.factor!(ma86)
b = rand(T,n)
HSL.solve!(ma86, b)

@testset "MA86 ($T)" for T in (Float32, Float64, ComplexF32, ComplexF64)
    # @info "Testing hsl_ma86 with $T data"
    n = 10
    A = convert(T, 3) * sprand(T, n, n, 0.5)
    Aindef = A + A' + one(T)*I

    Apsd = A'A + one(T)*I
    @test isposdef(Matrix(Apsd))


    # Test symmetric indefinite A
    @testset "$label" for (label,A) in (("Indefinite", Aindef), ("Positive Definite",Apsd))
        n = size(A,1)
        T = eltype(A)

        # Test constructors
        L = SparseMatrixCSC{T,Cint}(tril(A))
        let ptr = L.colptr, row = L.rowval, val = L.nzval
            # Check that new arrays aren't allocated if the input in Cint
            let ma86 = Ma86(ptr, row, val)
                @test ma86.colptr === ptr
                @test ma86.rowval === row
                @test ma86.nzval === val 
                @test ma86.flags.isanalysisdone == true
                @test !HSL.isnull(ma86.__keep)
            end

            # Check the keyword constructor            
            control = Ma86_Control(T)
            info = Ma86_Info(T)
            S = HSL.data_map[T]
            order = randperm(Cint(n))
            scale = fill(one(S), n)
            let ma86 = HSL.Ma86(ptr, row, val, 
                    control=control, info=info, order=order, scale=scale)
                @test ma86.order === order
                @test ma86.scale === scale 
                @test ma86.control === control
                @test ma86.info === info 
            end

            # Pass in Int64 data
            let ma86 = HSL.Ma86(Int64.(ptr), Int64.(row), val, 
                    order=randperm(Int64(n)), scale=Float64.(scale))
                @test ma86.colptr !== ptr
                @test ma86.rowval !== row
                @test ma86.order !== order
                @test ma86.scale !== scale 
            end

            # Pass in lower trianglar matrix
            # Make sure it doesn't reallocate new data
            let ma86 = HSL.Ma86(L) 
                @test ma86.colptr === L.colptr
                @test ma86.rowval === L.rowval
                @test ma86.nzval === L.nzval
            end

            # Check analyse skipping
            let ma86 = HSL.Ma86(L, doanalyse=false)
                @test ma86.flags.isanalysisdone == false
            end
        end

        @testset "with $(size(b,2)) rhs vectors" for b in (rand(T, n), rand(T, n, 3))
            n = size(A,1)
            T = eltype(A)

            # factor, then solve
            ma86_0 = Ma86(A)
            let ma86 = ma86_0
                x = copy(b)
                HSL.factor!(ma86)
                @test ma86.info.flag == 0
                HSL.solve!(ma86, x)
                @test ma86.info.flag == 0
                @test A*x ≈ b atol=sqrt(eps(norm(x)))
                @test HSL.solve(ma86, b) ≈ x  # out-of-place solve
                @test ma86 \ b ≈ x            # backslash
                x2 = copy(b)
                ldiv!(ma86, x2)
                @test x2 ≈ x
            end

            # in-place
            ma86_1 = Ma86(A)
            let ma86 = ma86_1
                x = copy(b)
                HSL.factorsolve!(ma86, x)
                @test A*x ≈ b atol=sqrt(eps(norm(x)))
            end

            # out-of-place
            ma86_2 = Ma86(A)
            let ma86 = ma86_2
                x = HSL.factorsolve(ma86, b)
                @test A*x ≈ b atol=sqrt(eps(norm(x)))
            end

            # Test linear algebra
            ma86_3 = Ma86(A)
            x = ma86_3 \ b
            @test A*x ≈ b atol=sqrt(eps(norm(x)))

            ma86_4 = Ma86(A)
            x = copy(b)
            ldiv!(ma86_4, x)
            @test A*x ≈ b atol=sqrt(eps(norm(x)))

            # Test errors
            ma86_err = Ma86(Apsd, doanalyse=false)
            let ma86 = ma86_err
                @test_throws ErrorException HSL.factor!(ma86)
                b = rand(T, n)
                @test_throws ErrorException HSL.solve!(ma86, b)
                @test_throws ErrorException HSL.factorsolve!(ma86, b)

                HSL.analyse!(ma86)
                @test_throws ErrorException HSL.solve!(ma86, b) 

                b = rand(T, n)
                x = copy(b)
                HSL.factorsolve!(ma86, x)
                @test Apsd*x ≈ b atol=sqrt(eps(norm(x)))

                x = copy(b)
                HSL.solve!(ma86, x)
                @test Apsd*x ≈ b atol=sqrt(eps(norm(x)))

                b_bad = rand(T, 2n)
                @test_throws DimensionMismatch HSL.solve!(ma86, b_bad)
                @test_throws DimensionMismatch HSL.factorsolve!(ma86, b_bad)

                # Test allocations
                @test getallocs(A, b) == 0
            end

            # Test HSL Errors
            # Prints out annoying warning message from MC78.
            # Not sure how to avoid this.
            # Should we even allow for non-square matrices to be passed to the constructor?
            # B = sprand(T, n, n, 0.1)
            # ma86_hslerr = Ma86(B, doanalyse=false)
            # ma86_hslerr.control.diagnostics_level = -1
            # ma86_hslerr.control.unit_diagnostics = -1
            # ma86_hslerr.control.unit_error = -1
            # ma86_hslerr.control.unit_warning = -1
            # @test_throws HSL.Ma86Exception HSL.analyse!(ma86_hslerr)
        end
    end
end
