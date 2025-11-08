## main.m
## Ejemplo de uso: carga matrices 1..7, calcula A^2,A^3,A^4 para A3,
## imprime totales y determina cuáles grafos (1..7) son fuertemente conexos.

clear; clc;

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


## --- Ejercicio 1: matriz 3 (A3) ---
disp("===============================================");
disp("                MATRIZ 3 - A3                  ");
disp("===============================================");

for n = [2,3,4]
  disp("-----------------------------------------------");
  fprintf("A3^%d:\n", n);
  W = walks_matrix(A3, n);
  disp(W);

  fprintf("Total de cadenas de longitud %d: %d\n", n, sum(W(:)));
endfor
disp("-----------------------------------------------");

disp(" ");
disp(" ");
disp(" ");

## --- Ejercicio 2: grafos fuertemente conexos ---
disp("===============================================");
disp("       ANALISIS DE FUERTE CONEXIDAD            ");
disp("===============================================");

for k = 1:length(matrices)
  A = matrices{k};
  flag = is_strongly_connected(A);
  if (flag)
    fprintf("Grafo %d -> Fuertemente conexo\n", k);
  else
    fprintf("Grafo %d -> NO fuertemente conexo\n", k);
  endif
endfor
disp("===============================================");
disp(" ");


## Ejemplo de shortest path entre dos vértices (opcional):
## [p, d] = bfs_shortest_path(A2, 1, 4);
## fprintf("Camino mas corto de 1 a 4: "); disp(p);
## fprintf("Distancia: %d\n", d);
