export mc26

"""
    jptr, iptr, ata = mc26(A::SparseMatrixCSC{Float32,Cint})
    jptr, iptr, ata = mc26(A::SparseMatrixCSC{Float64,Cint})

Compute the structure and optionally the values of `AᵀA`.

Returns:
- `jptr`: column pointer array for the compressed sparse column (CSC) format of `AᵀA`.
- `iptr`: row indices corresponding to each nonzero entry in `AᵀA`.
- `ata`: numerical values of `AᵀA` corresponding to the `(iptr, jptr)` structure.
"""
function mc26 end

for (mc26ir, mc26ar, T) in ((:mc26i , :mc26a , :Float32),
                            (:mc26id, :mc26ad, :Float64))
  @eval begin
    function mc26(A::SparseMatrixCSC{$T,Cint})
      icntl = zeros(Cint, 5)
      info = zeros(Cint, 5)
      $mc26ir(icntl)  # Set default control parameters

      m, n = size(A)
      itype = Cint(1)  # CSC format
      nz = nnz(A)
      a = A.nzval
      ind = A.rowval

      lata = max(1, nz + n)  # initial guess
      iata = Vector{Cint}(undef, lata)
      ata  = Vector{$T}(undef, lata)
      jptr = Vector{Cint}(undef, n + 1)
      iptr = Vector{Cint}(undef, lata)
      iw = zeros(Cint, max(1, 2 * n))
      nzata = Ref{Cint}(0)
      success = false

      while !success
        $mc26ar(m, n, itype, nz, a, ind, lata, iata, ata, jptr, iptr, nzata, iw, icntl, info)

        if info[1] == -4
          lata = max(lata + n, iata[1])
          resize!(iata, lata)
          resize!(ata,  lata)
          resize!(iptr, lata)
        elseif info[1] == 0
          success = true
        else
          error("mc26a failed with info[1] = $(info[1])")
        end
      end

      resize!(ata, nzata[])
      resize!(iptr, nzata[])

      return jptr, iptr, ata
    end
  end
end
