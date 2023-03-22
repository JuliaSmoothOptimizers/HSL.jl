export kb07

"""
    v, perm = kb07(v)

Sort an array of numbers `v` in-place into ascending order maintaining an index array
`perm` to preserve a record of the original order.
"""
function kb07 end

for (fname, elty) in ((:kb07a , :Float32),
                      (:kb07ad, :Float64),
                      (:kb07ai, :Cint))
  @eval begin
    function kb07(v::Vector{$elty})
      n = length(v)
      perm = zeros(Cint, n)
      $fname(v, n, perm)
      return v, perm
    end
  end
end
