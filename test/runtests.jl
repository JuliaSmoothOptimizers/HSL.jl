using HSL

if VERSION < v"0.7.0-DEV.2005"
   using Base.Test
   lu(A) = lufact(A)
 else
   using Test
   using SparseArrays
   using LinearAlgebra
 end

isdefined(HSL, :libhsl_ma97) && include("test_ma97.jl")
