function omp_set_num_threads(num_threads)
  @ccall libhsl.omp_set_num_threads_(num_threads::Ref{Cint})::Cvoid
end
