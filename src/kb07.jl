export kb07

"""
    v, perm = kb07(v)

Sort an array of numbers `v` in-place into ascending order maintaining an index array
`perm` to preserve a record of the original order.
"""
function kb07 end

for (fname, elty) in (("kb07a_" , Float32),
                      ("kb07ad_", Float64),
                      ("kb07ai_", Cint))
  @eval begin
    function kb07(v::Vector{$elty})
      n = length(v)
      perm = zeros(Cint, n)
      ccall(($fname, libkb07),
             Cvoid,
            (Ptr{$elty}, Ref{Cint}, Ptr{Cint}),
             v         , n        , perm     )
      return v, perm
    end
  end
end
