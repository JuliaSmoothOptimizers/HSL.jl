const hsl_collection = Dict{String, Vector{HSLVersion}}()

## EA: Eigenvalues and eigenvectors of real symmetric matrices

hsl_collection["ea16"] = []
hsl_collection["hsl_ea19"] = []
hsl_collection["hsl_ea20"] = []
hsl_collection["ea22"] = []
hsl_collection["ea25"] = []

## EB: Eigenvalues and eigenvectors of general matrices

hsl_collection["eb13"] = []
hsl_collection["eb22"] = []

## EP: Parallel eigenvalues and eigenvectors of real symmetric matrices

hsl_collection["ep25"] = []

## FA: Random numbers

hsl_collection["fa14"] = []
hsl_collection["hsl_fa14"] = []

## FD: Simple Functions

hsl_collection["fd15"] = []

## KB: Sorting numbers

hsl_collection["kb05"] = []
hsl_collection["kb06"] = []
hsl_collection["kb07"] = [
  HSLVersion("1.0.0", "24e5016b06768561773fd0172b9647f239b44c533eb9596815a6d8c4c60d940f", ".tar.gz"),
  HSLVersion("1.0.0", "df731a4ca9728ec085c7b12b9a4dbb573f779763bd5c37ae918823a67aca68ba", ".zip"),
]
hsl_collection["kb08"] = []
hsl_collection["hsl_kb22"] = []

## LA: Linear prgramming, i.e. minimization of a linear function subject to linear constraints

hsl_collection["la04"] = []
hsl_collection["la15"] = []

## MA: Solution of linear systems

hsl_collection["ma38"] = []
hsl_collection["ma41"] = []
hsl_collection["ma42"] = []
hsl_collection["hsl_ma42_element"] = []
hsl_collection["hsl_ma42"] = []
hsl_collection["ma43"] = []
hsl_collection["ma44"] = []
hsl_collection["ma46"] = []
hsl_collection["ma48"] = []
hsl_collection["hsl_ma48"] = []
hsl_collection["ma49"] = []
hsl_collection["ma50"] = []
hsl_collection["ma51"] = []
hsl_collection["ma52"] = []
hsl_collection["hsl_ma54"] = []
hsl_collection["hsl_ma55"] = []
hsl_collection["ma57"] = []
hsl_collection["hsl_ma57"] = [
  HSLVersion("5.2.0","aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584", ".tar.gz"),
]
hsl_collection["ma60"] = []
hsl_collection["ma61"] = []
hsl_collection["ma62"] = []
hsl_collection["hsl_ma64"] = []
hsl_collection["ma65"] = []
hsl_collection["ma67"] = []
hsl_collection["ma69"] = []
hsl_collection["hsl_ma69"] = []
hsl_collection["ma72"] = []
hsl_collection["hsl_ma74"] = []
hsl_collection["ma75"] = []
hsl_collection["hsl_ma77"] = []
hsl_collection["hsl_ma78"] = []
hsl_collection["hsl_ma79"] = []
hsl_collection["hsl_ma85"] = []
hsl_collection["hsl_ma86"] = []
hsl_collection["hsl_ma87"] = []
hsl_collection["hsl_ma97"] = [
  HSLVersion("2.7.0","ac3a081d3a28e9ecb8871ce769f4ced2a5ffa5a9c36defbd2c844ae3493ccb37",".tar.gz"),
  HSLVersion("2.7.0","8221b607d96554d7a57cc60483c7305ef43a8785dc4171ac2e8da087900a1100",".zip"),
  HSLVersion("2.6.0","be5fe822674be93e3d2e1a7d7ed6c5ad831b91cf8ca5150beb473f67af5fcb66",".tar.gz"),
]

## MC: Computations with real matrices and vectors

hsl_collection["mc13"] = []
hsl_collection["mc21"] = [
  HSLVersion("1.0.0","9d2a509a35e7826f564ff637098e7d0e205a87cb99826ec1ee9c1e9b21c6d71a",".tar.gz"),
  HSLVersion("1.0.0","fc5b2cdced0486a18ae1ee0ea375040d779fe17cd69db9c5c8819b50dd962c63",".zip"),
]
hsl_collection["mc22"] = []
hsl_collection["mc25"] = []
hsl_collection["mc26"] = []
hsl_collection["mc29"] = []
hsl_collection["mc30"] = []
hsl_collection["mc33"] = []
hsl_collection["mc34"] = []
hsl_collection["hsl_mc34"] = []
hsl_collection["mc37"] = []
hsl_collection["mc38"] = []
hsl_collection["mc44"] = []
hsl_collection["mc46"] = []
hsl_collection["mc47"] = []
hsl_collection["mc53"] = []
hsl_collection["mc54"] = []
hsl_collection["mc55"] = []
hsl_collection["mc56"] = []
hsl_collection["hsl_mc56"] = []
hsl_collection["mc57"] = []
hsl_collection["mc58"] = []
hsl_collection["mc59"] = []
hsl_collection["mc60"] = []
hsl_collection["mc61"] = []
hsl_collection["mc62"] = []
hsl_collection["mc63"] = []
hsl_collection["mc64"] = []
hsl_collection["hsl_mc64"] = []
hsl_collection["hsl_mc65"] = []
hsl_collection["hsl_mc66"] = []
hsl_collection["mc67"] = []
hsl_collection["hsl_mc68"] = []
hsl_collection["hsl_mc69"] = []
hsl_collection["mc71"] = []
hsl_collection["mc72"] = []
hsl_collection["hsl_mc73"] = []
hsl_collection["mc75"] = []
hsl_collection["mc77"] = []
hsl_collection["hsl_mc78"] = []
hsl_collection["hsl_mc79"] = []
hsl_collection["hsl_mc80"] = []
hsl_collection["hsl_mc81"] = []

## ME: Solution of complex linear systems and other calculations for complex matrices

hsl_collection["me22"] = []
hsl_collection["me38"] = []
hsl_collection["me42"] = []
hsl_collection["me43"] = []
hsl_collection["me48"] = []
hsl_collection["me50"] = []
hsl_collection["me57"] = []
hsl_collection["hsl_me57"] = []
hsl_collection["me62"] = []

## MF: Computations with complex matrices and vectors

hsl_collection["mf29"] = []
hsl_collection["mf30"] = []
hsl_collection["mf64"] = []
hsl_collection["mf71"] = []

## MI: Iterative methods for sparse matrices

hsl_collection["hsl_mi02"] = []
hsl_collection["mi11"] = []
hsl_collection["mi12"] = []
hsl_collection["hsl_mi13"] = []
hsl_collection["mi15"] = []
hsl_collection["hsl_mi20"] = []
hsl_collection["mi21"] = []
hsl_collection["mi23"] = []
hsl_collection["mi24"] = []
hsl_collection["mi25"] = []
hsl_collection["mi26"] = []
hsl_collection["hsl_mi27"] = []
hsl_collection["hsl_mi28"] = []
hsl_collection["hsl_mi29"] = []
hsl_collection["hsl_mi30"] = []
hsl_collection["hsl_mi31"] = []
hsl_collection["hsl_mi32"] = []
hsl_collection["hsl_mi35"] = []

## MP: MPI dependant packages

hsl_collection["hsl_mp01"] = []
hsl_collection["hsl_mp42"] = []
hsl_collection["hsl_mp43"] = []
hsl_collection["hsl_mp48"] = []
hsl_collection["hsl_mp54"] = []
hsl_collection["hsl_mp62"] = []
hsl_collection["hsl_mp82"] = []

## NS: Solution of systems of nonlinear equations in several unknowns

hsl_collection["ns23"] = []

## OF: File management

hsl_collection["of01"] = []

## PA: Zeros of polynomials

hsl_collection["pa16"] = []
hsl_collection["pa17"] = []

## YM: Generate test programs for chapter M of the library

hsl_collection["ym11"] = []

## ZB: Array allocation

hsl_collection["hsl_zb01"] = []

## ZD: Derived types

hsl_collection["hsl_zd11"] = []
