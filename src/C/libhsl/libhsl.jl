function LIBHSL_isfunctional()
  @ccall libhsl.LIBHSL_isfunctional()::Bool
end

function LIBHSL_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.LIBHSL_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_AD02_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_AD02_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_ZD13_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_ZD13_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA27_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA27_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA28_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA28_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA30_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA30_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA33_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA33_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC19_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC19_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC20_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC20_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC23_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC23_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC24_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC24_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function TD22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.TD22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function BTF_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.BTF_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function FA01_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.FA01_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function FA04_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.FA04_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function FD05_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.FD05_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ID05_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ID05_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC36_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC36_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC49_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC49_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME20_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME20_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MF36_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MF36_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function YM01_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.YM01_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EA16_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EA16_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EA22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EA22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EA25_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EA25_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EB13_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EB13_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EB22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EB22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function EP25_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.EP25_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function FA14_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.FA14_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function FD15_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.FD15_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_EA19_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_EA19_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_EA20_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_EA20_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_FA14_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_FA14_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_KB22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_KB22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA42_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA42_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA42_ELEMENT_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA42_ELEMENT_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA48_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA48_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA54_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA54_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA55_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA55_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA57_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA57_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA64_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA64_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA69_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA69_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA74_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA74_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA77_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA77_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA78_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA78_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA79_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA79_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA85_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA85_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA86_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA86_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA87_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA87_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MA97_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MA97_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC34_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC34_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC56_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC56_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC64_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC64_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC65_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC65_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC66_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC66_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC68_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC68_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC69_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC69_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC73_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC73_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC78_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC78_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC79_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC79_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC80_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC80_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MC81_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MC81_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_ME57_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_ME57_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI02_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI02_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI13_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI13_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI20_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI20_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI27_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI27_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI28_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI28_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI29_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI29_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI30_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI30_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI31_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI31_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI32_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI32_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MI35_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MI35_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP01_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP01_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP42_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP42_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP43_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP43_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP48_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP48_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP54_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP54_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP62_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP62_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_MP82_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_MP82_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_OF01_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_OF01_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_ZB01_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_ZB01_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function HSL_ZD11_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.HSL_ZD11_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function KB05_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.KB05_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function KB06_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.KB06_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function KB07_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.KB07_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function KB08_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.KB08_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function LA04_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.LA04_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function LA15_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.LA15_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA38_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA38_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA41_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA41_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA42_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA42_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA43_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA43_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA44_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA44_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA46_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA46_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA48_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA48_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA49_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA49_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA50_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA50_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA51_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA51_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA52_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA52_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA57_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA57_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA60_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA60_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA61_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA61_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA62_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA62_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA65_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA65_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA67_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA67_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA69_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA69_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA72_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA72_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MA75_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MA75_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC13_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC13_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC21_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC21_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC25_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC25_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC26_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC26_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC29_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC29_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC30_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC30_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC33_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC33_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC34_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC34_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC37_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC37_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC38_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC38_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC44_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC44_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC46_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC46_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC47_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC47_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC53_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC53_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC54_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC54_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC55_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC55_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC56_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC56_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC57_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC57_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC58_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC58_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC59_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC59_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC60_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC60_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC61_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC61_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC62_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC62_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC63_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC63_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC64_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC64_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC67_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC67_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC71_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC71_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC72_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC72_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC75_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC75_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MC77_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MC77_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME22_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME22_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME38_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME38_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME42_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME42_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME43_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME43_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME48_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME48_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME50_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME50_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME57_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME57_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function ME62_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.ME62_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MF29_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MF29_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MF30_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MF30_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MF64_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MF64_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MF71_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MF71_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI11_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI11_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI12_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI12_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI15_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI15_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI21_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI21_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI23_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI23_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI24_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI24_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI25_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI25_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function MI26_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.MI26_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function NS23_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.NS23_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function PA16_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.PA16_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function PA17_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.PA17_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

function YM11_version()
  major = Ref{Cint}(0)
  minor = Ref{Cint}(0)
  patch = Ref{Cint}(0)
  @ccall libhsl.YM11_version(major::Ref{Cint}, minor::Ref{Cint}, patch::Ref{Cint})::Cvoid
  return VersionNumber(major[], minor[], patch[])
end

