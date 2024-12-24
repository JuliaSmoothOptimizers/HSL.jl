function omp_set_num_threads(num_threads)
  @ccall libhsl.omp_set_num_threads_(num_threads::Ref{Cint})::Cvoid
  @ccall libhsl_subset.omp_set_num_threads_(num_threads::Ref{Cint})::Cvoid
  @ccall libhsl_subset_64.omp_set_num_threads_(num_threads::Ref{Cint})::Cvoid
end
