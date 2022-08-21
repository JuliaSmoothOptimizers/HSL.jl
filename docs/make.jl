using Documenter
using HSL

makedocs(
  modules = [HSL],
  doctest = false,
  strict = true,
  assets = ["assets/style.css"],
  format = Documenter.HTML(
    mathengine = Documenter.MathJax(
      Dict(:TeX => Dict(:equationNumbers => Dict(:autoNumber => "AMS"))),
    ),
  ),
  sitename = "HSL.jl",
  pages = ["Home" => "index.md", "Tutorial" => "tutorial.md", "Reference" => "reference.md"],
)

deploydocs(
  deps = nothing,
  make = nothing,
  repo = "github.com/JuliaSmoothOptimizers/HSL.jl.git",
  target = "build",
  devbranch = "main",
  push_preview = true,
)
