@enum hsl_matrix_type::Int32 begin
  HSL_MATRIX_UNDEFINED = 0
  HSL_MATRIX_REAL_RECT = 1
  HSL_MATRIX_REAL_UNSYM = 2
  HSL_MATRIX_REAL_SYM_PSDEF = 3
  HSL_MATRIX_REAL_SYM_INDEF = 4
  HSL_MATRIX_REAL_SKEW = 6
  HSL_MATRIX_CPLX_RECT = -1
  HSL_MATRIX_CPLX_UNSYM = -2
  HSL_MATRIX_CPLX_HERM_PSDEF = -3
  HSL_MATRIX_CPLX_HERM_INDEF = -4
  HSL_MATRIX_CPLX_SYM = -5
  HSL_MATRIX_CPLX_SKEW = -6
end

function mc69_verify_s(unit, type, findex, m, n, ptr, row, val, more)
  @ccall libhsl.mc69_verify_s(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                              ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float32},
                              more::Ptr{Cint})::Cint
end

function mc69_print_s(unit, lines, type, findex, m, n, ptr, row, val)
  @ccall libhsl.mc69_print_s(unit::Cint, lines::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                             n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                             val::Ptr{Float32})::Cvoid
end

function mc69_set_values_s(type, lmap, map, val_in, ne, val_out)
  @ccall libhsl.mc69_set_values_s(type::hsl_matrix_type, lmap::Cint, map::Ptr{Cint},
                                  val_in::Ptr{Float32}, ne::Cint,
                                  val_out::Ptr{Float32})::Cvoid
end

function mc69_cscl_clean_s(unit, type, findex, m, n, ptr, row, val, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_clean_s(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float32},
                                  noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                  map::Ptr{Ptr{Cint}})::Cint
end

function mc69_cscl_convert_s(unit, type, findex, m, n, ptr_in, row_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_cscu_convert_s(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscu_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csclu_convert_s(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csclu_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                     val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_csrl_convert_s(unit, type, findex, m, n, ptr_in, col_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrl_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csru_convert_s(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csru_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csrlu_convert_s(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrlu_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_coord_convert_s(unit, type, findex, m, n, ne, row_in, col_in, val_in, ptr_out, lrow,
                              row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_coord_convert_s(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                     n::Cint, ne::Cint, row_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{Float32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_verify_d(unit, type, findex, m, n, ptr, row, val, more)
  @ccall libhsl.mc69_verify_d(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                              ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float64},
                              more::Ptr{Cint})::Cint
end

function mc69_print_d(unit, lines, type, findex, m, n, ptr, row, val)
  @ccall libhsl.mc69_print_d(unit::Cint, lines::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                             n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                             val::Ptr{Float64})::Cvoid
end

function mc69_set_values_d(type, lmap, map, val_in, ne, val_out)
  @ccall libhsl.mc69_set_values_d(type::hsl_matrix_type, lmap::Cint, map::Ptr{Cint},
                                  val_in::Ptr{Float64}, ne::Cint,
                                  val_out::Ptr{Float64})::Cvoid
end

function mc69_cscl_clean_d(unit, type, findex, m, n, ptr, row, val, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_clean_d(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{Float64},
                                  noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                  map::Ptr{Ptr{Cint}})::Cint
end

function mc69_cscl_convert_d(unit, type, findex, m, n, ptr_in, row_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_cscu_convert_d(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscu_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csclu_convert_d(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csclu_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                     val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_csrl_convert_d(unit, type, findex, m, n, ptr_in, col_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrl_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csru_convert_d(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csru_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csrlu_convert_d(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrlu_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_coord_convert_d(unit, type, findex, m, n, ne, row_in, col_in, val_in, ptr_out, lrow,
                              row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_coord_convert_d(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                     n::Cint, ne::Cint, row_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{Float64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{Float64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_verify_c(unit, type, findex, m, n, ptr, row, val, more)
  @ccall libhsl.mc69_verify_c(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                              ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF32},
                              more::Ptr{Cint})::Cint
end

function mc69_print_c(unit, lines, type, findex, m, n, ptr, row, val)
  @ccall libhsl.mc69_print_c(unit::Cint, lines::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                             n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                             val::Ptr{ComplexF32})::Cvoid
end

function mc69_set_values_c(type, lmap, map, val_in, ne, val_out)
  @ccall libhsl.mc69_set_values_c(type::hsl_matrix_type, lmap::Cint, map::Ptr{Cint},
                                  val_in::Ptr{ComplexF32}, ne::Cint,
                                  val_out::Ptr{ComplexF32})::Cvoid
end

function mc69_cscl_clean_c(unit, type, findex, m, n, ptr, row, val, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_clean_c(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF32},
                                  noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                  map::Ptr{Ptr{Cint}})::Cint
end

function mc69_cscl_convert_c(unit, type, findex, m, n, ptr_in, row_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_cscu_convert_c(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscu_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csclu_convert_c(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csclu_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_csrl_convert_c(unit, type, findex, m, n, ptr_in, col_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrl_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csru_convert_c(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csru_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csrlu_convert_c(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrlu_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_coord_convert_c(unit, type, findex, m, n, ne, row_in, col_in, val_in, ptr_out, lrow,
                              row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_coord_convert_c(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                     n::Cint, ne::Cint, row_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF32}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF32},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_verify_z(unit, type, findex, m, n, ptr, row, val, more)
  @ccall libhsl.mc69_verify_z(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                              ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF64},
                              more::Ptr{Cint})::Cint
end

function mc69_print_z(unit, lines, type, findex, m, n, ptr, row, val)
  @ccall libhsl.mc69_print_z(unit::Cint, lines::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                             n::Cint, ptr::Ptr{Cint}, row::Ptr{Cint},
                             val::Ptr{ComplexF64})::Cvoid
end

function mc69_set_values_z(type, lmap, map, val_in, ne, val_out)
  @ccall libhsl.mc69_set_values_z(type::hsl_matrix_type, lmap::Cint, map::Ptr{Cint},
                                  val_in::Ptr{ComplexF64}, ne::Cint,
                                  val_out::Ptr{ComplexF64})::Cvoid
end

function mc69_cscl_clean_z(unit, type, findex, m, n, ptr, row, val, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_clean_z(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint, n::Cint,
                                  ptr::Ptr{Cint}, row::Ptr{Cint}, val::Ptr{ComplexF64},
                                  noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                  map::Ptr{Ptr{Cint}})::Cint
end

function mc69_cscl_convert_z(unit, type, findex, m, n, ptr_in, row_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscl_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_cscu_convert_z(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_cscu_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csclu_convert_z(unit, type, findex, n, ptr_in, row_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csclu_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, row_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_csrl_convert_z(unit, type, findex, m, n, ptr_in, col_in, val_in, ptr_out, lrow,
                             row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrl_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                    n::Cint, ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csru_convert_z(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                             val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csru_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                    ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                    val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                    row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                    noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                    map::Ptr{Cint})::Cint
end

function mc69_csrlu_convert_z(unit, type, findex, n, ptr_in, col_in, val_in, ptr_out, lrow, row_out,
                              val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_csrlu_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, n::Cint,
                                     ptr_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end

function mc69_coord_convert_z(unit, type, findex, m, n, ne, row_in, col_in, val_in, ptr_out, lrow,
                              row_out, val_out, noor, ndup, lmap, map)
  @ccall libhsl.mc69_coord_convert_z(unit::Cint, type::hsl_matrix_type, findex::Cint, m::Cint,
                                     n::Cint, ne::Cint, row_in::Ptr{Cint}, col_in::Ptr{Cint},
                                     val_in::Ptr{ComplexF64}, ptr_out::Ptr{Cint}, lrow::Cint,
                                     row_out::Ptr{Cint}, val_out::Ptr{ComplexF64},
                                     noor::Ptr{Cint}, ndup::Ptr{Cint}, lmap::Ptr{Cint},
                                     map::Ptr{Cint})::Cint
end
