## M = mat_pow(A, n)
## Calcula la potencia de una matriz cuadrada A^n usando exponenciación por
## cuadrados (log n multiplicaciones). n debe ser entero >= 0.
function M = mat_pow(A, n)
  ## validaciones
  if (n < 0)
    error("mat_pow: n debe ser entero >= 0");
  endif
  if (n == 0)
    M = eye(size(A));
    return;
  endif
  if (n == 1)
    M = A;
    return;
  endif

  ## exponenciación rápida
  M = eye(size(A));
  base = A;
  k = n;
  while (k > 0)
    if (mod(k,2) == 1)
      M = M * base;
    endif
    base = base * base;
    k = floor(k / 2);
  endwhile
endfunction
