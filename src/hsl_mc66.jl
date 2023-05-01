export mc66, mc66_control

mutable struct fa14_seed
  ix::Int32
end

fa14_seed() = fa14_seed(65535)

mutable struct mc66_control{T <: BLAS.BlasReal}
  lp::Int32
  wp::Int32
  mp::Int32
  print_level::Int32
  kl_aggressive::T
  max_imbalance::T
  mglevel::Int32
  grid_rdc_fac::T
  coarsest_size::Int32
  coarsen_scheme::Int32
  num_coarsest_kl::Int32
end

function mc66_control{T}(; lp=6, wp=6, mp=6, print_level=-1, kl_aggressive=-1, max_imbalance=0.01,
                           mglevel=typemax(Int32), grid_rdc_fac=0.75, coarsest_size=100,
                           coarsen_scheme=1, num_coarsest_kl=4) where {T <: BLAS.BlasReal}

  control = mc66_control{T}(lp, wp, mp, print_level, kl_aggressive, max_imbalance, mglevel,
                            grid_rdc_fac, coarsest_size, coarsen_scheme, num_coarsest_kl)
  return control
end

# Thanks to `nm -D libhsl_mc66.so`!
function mc66s(m, n, nz, irn, jcn, nblocks, control, seed, row_order, info, rowptr, column_order, colptr, netcut, rowdiff, kblocks)
  ccall((:__hsl_mc66_simple_MOD_monet, libhsl_mc66),
         Cvoid,
        (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ref{Int32}, Ref{mc66_control{Float32}}, Ref{fa14_seed}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}  , Ptr{Int32}, Ref{Int32}, Ref{Float32}, Ref{Int32}),
         m         , n         , nz        , irn       , jcn       , nblocks   , control                   , seed          , row_order , info      , rowptr    , column_order, colptr    , netcut    , rowdiff     , kblocks   )
end

function mc66s_print_message(info, control)
  context = ""
  ccall((:__hsl_mc66_single_MOD_monet_print_message, libhsl_mc66),
         Cvoid,
        (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{UInt8}),
         info      , control.lp, control.wp, context   )
end

function mc66d(m, n, nz, irn, jcn, nblocks, control, seed, row_order, info, rowptr, column_order, colptr, netcut, rowdiff, kblocks)
  ccall((:__hsl_mc66_double_MOD_monet, libhsl_mc66),
         Cvoid,
        (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}, Ref{Int32}, Ref{mc66_control{Float64}}, Ref{fa14_seed}, Ptr{Int32}, Ref{Int32}, Ptr{Int32}, Ptr{Int32}  , Ptr{Int32}, Ref{Int32}, Ref{Float64}, Ref{Int32}),
         m         , n         , nz        , irn       , jcn       , nblocks   , control                   , seed          , row_order , info      , rowptr    , column_order, colptr    , netcut    , rowdiff     , kblocks   )
end

function mc66d_print_message(info, control)
  context = ""
  ccall((:__hsl_mc66_double_MOD_monet_print_message, libhsl_mc66),
         Cvoid,
        (Ref{Int32}, Ref{Int32}, Ref{Int32}, Ptr{UInt8}),
         info      , control.lp, control.wp, context   )
end

"""
    rp, cp = mc66(A::SparseMatrixCSC, k::Integer)

Order an unsymmetric matrix A into singly bordered blocked diagonal (SBBD) form.

    A[rp, cp] = [ A₁₁                  S₁]
                [     A₂₂              S₂]
                [          •           • ]
                [             •        • ]
                [                •     • ]
                [                  Aₖₖ Sₖ]
"""
function mc66(A::SparseMatrixCSC, nblocks::Integer)
  m, n = size(A)
  nblocks ≤ min(m,n) || error("1 ≤ nblocks ≤ min(m,n)")
  m = Ref{Int32}(m)
  n = Ref{Int32}(n)
  nz = Ref{Int32}(nnz(A))
  irn, jcn, val = findnz(A)
  irn = convert(Vector{Cint}, irn)
  jcn = convert(Vector{Cint}, jcn)
  nblocks = Ref{Int32}(nblocks)
  control = mc66_control{Float64}()
  seed = fa14_seed()
  row_order = zeros(Cint, m[])
  info = Ref{Cint}()
  rowptr = zeros(Cint, nblocks[]+1)
  column_order = zeros(Cint, n[])
  colptr = zeros(Cint, nblocks[]+1)
  netcut = Ref{Cint}()
  rowdiff = Ref{Float64}()
  kblocks = Ref{Cint}()
  mc66d(m, n, nz, irn, jcn, nblocks, control, seed, row_order, info, rowptr, column_order, colptr, netcut, rowdiff, kblocks)
  mc66d_print_message(info, control)
  return row_order, column_order
end
