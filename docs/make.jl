using Documenter
using HSL

makedocs(
  modules = [HSL],
  assets = ["assets/style.css"],
  format = :html,
  sitename = "HSL.jl",
  pages = Any["Reference" => "reference.md"]
)

deploydocs(deps = nothing, make = nothing,
  repo = "github.com/JuliaSmoothOptimizers/HSL.jl.git",
  deps = Deps.pip("pygments", "mkdocs", "python-markdown-math"),
  target = "build",
  julia = "0.6",
  latest = "master"
)
