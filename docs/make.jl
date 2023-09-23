using Documenter
using HSL

makedocs(
  modules = [HSL],
  doctest = false,
  linkcheck = true,
  format = Documenter.HTML(
    assets = ["assets/style.css"],
    ansicolor = true,
    prettyurls = get(ENV, "CI", nothing) == "true",
    mathengine = Documenter.MathJax(
      Dict(:TeX => Dict(:equationNumbers => Dict(:autoNumber => "AMS"))),
    ),
  ),
  sitename = "HSL.jl",
  pages = ["Home" => "index.md", "Tutorial" => "tutorial.md", "Reference" => "reference.md"],
)

deploydocs(
  repo = "github.com/JuliaSmoothOptimizers/HSL.jl.git",
  devbranch = "main",
  push_preview = true,
)
