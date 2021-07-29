using Documenter
using HSL

makedocs(
  modules = [HSL],
  doctest = false,
  strict = false,
  assets = ["assets/style.css"],
  format = Documenter.HTML(),
  sitename = "HSL.jl",
  pages = ["Reference" => "index.md"]
)

deploydocs(deps = nothing, make = nothing,
  repo = "github.com/JuliaSmoothOptimizers/HSL.jl.git",
  target = "build",
  devbranch = "main"
)
