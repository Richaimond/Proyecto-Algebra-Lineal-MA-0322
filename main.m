## main.m
## Ejemplo de uso: carga matrices 1..7, calcula A^2,A^3,A^4 para A2 y A3,
## imprime totales y determina cuáles grafos (1..7) son fuertemente conexos.

## definir las matrices (tomadas del enunciado)
A1 = [0 1 1 0;
      0 0 0 0;
      1 1 0 0;
      1 0 0 0];

A2 = [0 1 1 0 0;
      0 0 0 1 0;
      1 1 0 1 0;
      0 0 1 0 1;
      1 0 1 0 0];

A3 = [0 0 1 0 0;
      1 0 0 0 0;
      0 1 0 1 0;
      1 1 1 0 1;
      0 1 0 0 0];

A4 = [0 0 1 1 0 0;
      1 0 0 1 0 0;
      0 0 0 1 0 1;
      1 0 0 0 1 0;
      0 0 0 1 0 0;
      1 0 0 0 1 0];

A5 = [0 1 0 1;
      1 0 0 0;
      1 1 0 1;
      1 0 1 0];

A6 = [0 1 0 1 0;
      0 0 1 1 1;
      1 1 0 0 0;
      1 0 0 0 0;
      0 1 1 1 0];

A7 = [0 1 1 1 0 0;
      1 0 0 0 1 0;
      1 1 0 1 0 1;
      0 0 1 0 0 0;
      0 0 0 1 0 1;
      1 1 0 0 1 0];

matrices = {A1, A2, A3, A4, A5, A6, A7};

## --- Ejercicio 1: matriz 2 (A2) ---
disp("---- Matriz 2: A^2, A^3, A^4 y totales ----");
for n = [2,3,4]
  W = walks_matrix(A2, n);
  fprintf("A2^%d =\n", n);
  disp(W);
  fprintf("Total de cadenas de longitud %d en A2: %d\n", n, sum(W(:)));
endfor

## --- Ejercicio 2: matriz 3 (A3) ---
disp("---- Matriz 3: A^2, A^3, A^4 y totales ----");
for n = [2,3,4]
  W = walks_matrix(A3, n);
  fprintf("A3^%d =\n", n);
  disp(W);
  fprintf("Total de cadenas de longitud %d en A3: %d\n", n, sum(W(:)));
endfor

## --- Ejercicio 3: grafos fuertemente conexos entre 1..7 ---
disp("---- Comprobando fuertemente conexos (1..7) ----");
for k = 1:length(matrices)
  A = matrices{k};
  flag = is_strongly_connected(A);
  if (flag)
    fprintf("Grafo %d: fuerte\n", k);
  else
    fprintf("Grafo %d: NO fuerte\n", k);
  endif
endfor

## Ejemplo de shortest path entre dos vértices (opcional):
## [p,d] = bfs_shortest_path(A2, 1, 4); disp(p); disp(d);
