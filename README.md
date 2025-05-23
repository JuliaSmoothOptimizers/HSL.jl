# HSL

[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaSmoothOptimizers.github.io/HSL.jl/stable)
[![Documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaSmoothOptimizers.github.io/HSL.jl/dev)
[![DOI](https://zenodo.org/badge/44119477.svg)](https://zenodo.org/badge/latestdoi/44119477)

Collection of interfaces for the packages provided by [libHSL](https://licences.stfc.ac.uk/products/Software/HSL/LibHSL).

## Installation

```julia
julia> ]
Pkg> add HSL
```

This installs the Julia interfaces, but **you need to manually install `HSL_jll.jl`**:

1. Download `HSL_jll.jl` from [STFC HSL website](https://licences.stfc.ac.uk/products/Software/HSL/LibHSL).

2. Install it in your Julia environment:

```julia
Pkg.develop(path = "/full/path/to/HSL_jll.jl")
```

## Additional resources

* [GERAD report (Cahier du GERAD)](http://dx.doi.org/10.13140/RG.2.2.30649.54889)
* [Poster on Julia and HSL solvers](http://dx.doi.org/10.13140/RG.2.2.35632.26883)
