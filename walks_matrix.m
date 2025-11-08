## W = walks_matrix(A, n)
## Devuelve la matriz W = A^n, donde W(i,j) es el número de cadenas (walks)
## dirigidas de longitud exactamente n desde i hacia j.
function W = walks_matrix(A, n)
  ## comprobaciones simples
  if (size(A,1) != size(A,2))
    error("walks_matrix: A debe ser cuadrada");
  endif
  if (n < 0)
    error("walks_matrix: n debe ser >= 0");
  endif
  W = mat_pow(A, n);
endfunction
