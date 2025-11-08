## c = walks_count(A, n, i, j)
## Devuelve el número de cadenas de longitud n desde vértice i a vértice j.
## Asume índices 1-based (convención Octave/Matlab).
function c = walks_count(A, n, i, j)
  [r,cA] = size(A);
  if (r != cA)
    error("walks_count: A debe ser cuadrada");
  endif
  if (i < 1 || i > r || j < 1 || j > r)
    error("walks_count: índices i,j fuera de rango (1..n)");
  endif
  W = walks_matrix(A, n);
  c = W(i, j);
endfunction
