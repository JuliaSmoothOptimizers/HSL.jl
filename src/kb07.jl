export kb07

"""
    v, perm = kb07(v)

Sort an array of numbers `v` in-place into ascending order maintaining an index array
`perm` to preserve a record of the original order.
"""
function kb07 end

for (fname, elty) in ((:kb07a_ , :Float32),
                      (:kb07ad_, :Float64),
                      (:kb07ai_, :Cint))
  @eval begin
    function kb07(v::Vector{$elty})
      n = length(v)
      perm = zeros(Cint, n)
      @ccall libhsl.$fname(v::Ptr{$elty}, n::Ref{Cint}, perm::Ptr{Cint})::Cvoid
      return v, perm
    end
  end
end
