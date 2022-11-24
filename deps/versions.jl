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
hsl_collection["hsl_ma48"] = [
  # HSLVersion("3.3.0", "fb0a537157c55ba839c6d11e3e9895814d1e1d8c09efb330f59014cef4445da0", ".tar.gz"),
  # HSLVersion("3.3.0", "12b14175e305b8242e1f9488683e7f9711720e85baa09fa5353f2c20dc5ecfa0", ".zip"),
]
hsl_collection["ma49"] = []
hsl_collection["ma50"] = []
hsl_collection["ma51"] = []
hsl_collection["ma52"] = []
hsl_collection["hsl_ma54"] = []
hsl_collection["hsl_ma55"] = []
hsl_collection["ma57"] = []
hsl_collection["hsl_ma57"] = [
  HSLVersion("5.2.0", "aedc5a3e22a7b86779efccaa89a7c82b6949768dbab35fceb85a347e326cf584", ".tar.gz"),
  HSLVersion("5.2.0", "caa11e4b5534886fc63f30a8d68302833146352a936aeab89392c35ccc24bf4a", ".zip"),
  HSLVersion("5.3.2", "98f38fa583e67c3e00a2897dc2b5d9940fb5b2b94eff1855cb2fe329c02317c7", ".tar.gz"),
  HSLVersion("5.3.2", "2d406ef8eaf4a876160324b7487e9abc5916ec1446b0a04c5846fc06eec2608a", ".zip"),
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
hsl_collection["hsl_ma77"] = [
  # HSLVersion("6.3.0", "7d0d8675aa0a80889853a3115c6cd4c07739ab5117c93d0a6cca9d234c97b3bb", ".tar.gz"),
  # HSLVersion("6.3.0", "2117c2ec285969ad50ed9b6b7e23fea4b66f8198eea3edba883845e8979b8ac0", ".zip"),
]
hsl_collection["hsl_ma78"] = []
hsl_collection["hsl_ma79"] = []
hsl_collection["hsl_ma85"] = []
hsl_collection["hsl_ma86"] = [
  # HSLVersion("1.7.2", "96d82da3d8125acee66901c6547d31d0f2a5374fc570728a3fbc6544212c7578", ".tar.gz"),
  # HSLVersion("1.7.2", "966bdb81fc88c0d33d28902f38df56ca04578afd30f774d140f1ae908cf81bb4", ".zip"),
]
hsl_collection["hsl_ma87"] = [
  # HSLVersion("2.6.3", "22178125cae4d40939795df1bc9d607802b1e5a4554633baa46e75c759fed473", ".tar.gz"),
  # HSLVersion("2.6.3", "f5a726f207347cb1f97179a8ba702f92bef616dec808173172648967a6ca987f", ".zip"),
]
hsl_collection["hsl_ma97"] = [
  HSLVersion("2.5.0", "9ceb858f09045d406c3cf399dcc07b4c7f716f29a5e5f55a77dc8b09d55e0c4e", ".tar.gz"),
  HSLVersion("2.5.0", "c976e73edf32accf3ca2270ed1c1f5c465642d9f086ec289f268b81bdff91c41", ".zip"),
  HSLVersion("2.6.0", "be5fe822674be93e3d2e1a7d7ed6c5ad831b91cf8ca5150beb473f67af5fcb66", ".tar.gz"),
  HSLVersion("2.7.2", "a81e4eef63cc52cee2df00061d7d9f915b03e29598d73f6017f12104b6321053", ".tar.gz"),
  HSLVersion("2.7.2", "15fbd570a7ccc1c0c31d9dd0c4fb01196f3c2fd2cbc348f549941dacde909fde", ".zip"),
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
hsl_collection["mc61"] = [
  # HSLVersion("1.1.0", "6f535c7d8919b8a3c8bcf8b847fc4d2616a4aaf60ea403f882fa9b14ecc856a5", ".tar.gz"),
  # HSLVersion("1.1.0", "a970314f841557dd8ec32414713461ffec8786ccafd07ca4ce006836af8e7701", ".zip"),
]
hsl_collection["mc62"] = []
hsl_collection["mc63"] = []
hsl_collection["mc64"] = [
  # HSLVersion("1.6.0", "a24621c88f8a535278e92b7f0f88ad880d137da8db8ef21e1da85c9817033217", ".tar.gz"),
  # HSLVersion("1.6.0", "71e9deb76913fac6e555f5c2117ada8911c606ca59beec87c8ebe60338d7e511", ".zip"),
]
hsl_collection["hsl_mc64"] = [
  # HSLVersion("2.4.0", "3c0b60479e3a473ec27b2082b4de3045782b21010806dcce6d503e4db1ae058e", ".tar.gz"),
  # HSLVersion("2.4.0", "f1e550a091d12e71ac562343c4d10ed13ceb2a788c967ee650bcf79e692f64f8", ".zip"),
]
hsl_collection["hsl_mc65"] = []
hsl_collection["hsl_mc66"] = [
  # HSLVersion("2.2.0", "3326abdab8fededbbaa6abebb24294dcc3cfa0e6810390664063a3f764a7f201", ".tar.gz"),
  # HSLVersion("2.2.0", "bc17cfca531bb2407ab53570bf8fa725e0c3265a0bfa4ce492ac54ad89856abc", ".zip"),
  # HSLVersion("2.2.1", "cb7df2591c1a01783f8a07cfe7a20bcd4ba9ef7a1169a68b0f117cd1683066dd", ".tar.gz"),
  # HSLVersion("2.2.1", "8ff58f90855a67081a35d79fcca60ad4fc97c2dce78c99c1ff4f225cdcd39b6c", ".zip"),
]
hsl_collection["mc67"] = []
hsl_collection["hsl_mc68"] = [
  # HSLVersion("3.3.2", "eecdc3d171821afde2f15eb56cd6c509f73d0869bdc6b823f06ad08bbe294f5c", ".tar.gz"),
  # HSLVersion("3.3.2", "b305a52c54cf0eb78431b9b658dc29b8f96b901788e13177e8d3624f8cd5eba2", ".zip"),
]
hsl_collection["hsl_mc69"] = [
  # HSLVersion("1.4.2", "281746f27956dad0b0c030300779c367aa0a346f2fddb0dec240f36a9043429e", ".tar.gz"),
  # HSLVersion("1.4.2", "74bcf41fea2d42f0486c8d1908c68ccbf2d59e47108ac9b8cdf370187bd8b2ed", ".zip"),
]
hsl_collection["mc71"] = []
hsl_collection["mc72"] = []
hsl_collection["hsl_mc73"] = []
hsl_collection["mc75"] = []
hsl_collection["mc77"] = [
  HSLVersion("1.0.1", "ce17e4bdb854a68e9813ebf03f2c22e7b9078c9cead57ee86798ecee3aaeb0b0", ".tar.gz"),
  HSLVersion("1.0.1", "0faea13e4ab2150a394b663e363d382e0e1409486e349513c7f66560321cb7a9", ".zip"),
]
hsl_collection["hsl_mc78"] = [
  # HSLVersion("1.5.0", "838b60669ee6bed33ae734783bb415fac3d675e015456d789c9a8a4a87c8ca12", ".tar.gz"),
  # HSLVersion("1.5.0", "7558656f8878f85d2cfd75af0f33cb172b3b0ab190c18a3f8ba008fa01e5d84f", ".zip"),
]
hsl_collection["hsl_mc79"] = [
  # HSLVersion("1.1.0", "605e10370f319fce1463bbfc6e4b8345dcf8f30d4316a581f1d454e30f8e152c", ".tar.gz"),
  # HSLVersion("1.1.0", "2adcc8bfc9c7f55a36babf8530de46740b3c7d52ef3030387438e1f4f8b1484f", ".zip"),
]
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
hsl_collection["hsl_mi20"] = [
  # HSLVersion("2.0.0", "944ac04e621809c032a88b37ddfc21dd74f2aff6613553b273caf64d6f613f2e", ".tar.gz"),
  # HSLVersion("2.0.0", "341badedce169b1fe15c18bc1aa9508c1cc08660467866ba9ab2a9e400ee1ca9", ".zip"),
]
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
hsl_collection["hsl_mi35"] = [
  # HSLVersion("2.0.1", "9a5ce9a56f5674c730d8d2a51ff53e8e8ae139d3e60b8eea899af8144b6c8d1d", ".tar.gz"),
  # HSLVersion("2.0.1", "39d22d55dd36776e5400313b8c2915bb39823b19740aee7a390937072f7cd7b1", ".zip"),
]

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

## HSL for IPOPT

hsl_collection["coinhsl"] = [
  HSLVersion("2021.05.05", "f4fa0eee24a181fbc88e8fe5a1c49443c34bb32b93b9f5b3a9c482324f87fa1d", ".tar.gz"),
  HSLVersion("2021.05.05", "80a38ddca1bbedc8eb03a941d9a39478a3fd7b1bddbd2ae8220214a4ef59e4f9", ".zip"),
]
