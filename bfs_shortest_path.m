## [path, dist] = bfs_shortest_path(A, s, t)
## Encuentra la cadena más corta (camino dirigido) desde s hasta t en un grafo
## dirigido representado por la matriz de adyacencia A (0/1). Devuelve:
##  - path: vector con los vértices del camino desde s hasta t (incluidos).
##          Si no existe camino, devuelve [].
##  - dist: longitud del camino (número de aristas). Si no existe camino, Inf.
function [path, dist] = bfs_shortest_path(A, s, t)
  n = size(A,1);
  if (size(A,2) != n)
    error("bfs_shortest_path: A debe ser cuadrada");
  endif
  if (s < 1 || s > n || t < 1 || t > n)
    error("bfs_shortest_path: índices s,t fuera de rango");
  endif

  ## cola sencilla con índices
  visited = false(1,n);
  parent = zeros(1,n);  ## para reconstruir camino
  q = zeros(1, n); head = 1; tail = 0;

  ## iniciar
  tail = tail + 1; q(tail) = s;
  visited(s) = true;
  parent(s) = 0;

  found = false;
  while (head <= tail)
    u = q(head); head = head + 1;
    if (u == t)
      found = true;
      break;
    endif
    ## explorar vecinos v con arista u->v (A(u,v) ~= 0)
    for v = 1:n
      if (A(u,v) ~= 0 && ~visited(v))
        visited(v) = true;
        parent(v) = u;
        tail = tail + 1; q(tail) = v;
      endif
    endfor
  endwhile

  if (~found)
    path = [];
    dist = Inf;
    return;
  endif

  ## reconstruir camino de t hacia s
  rev = [];
  cur = t;
  while (cur ~= 0)
    rev = [rev, cur];
    cur = parent(cur);
  endwhile
  path = fliplr(rev);
  dist = length(path) - 1;
endfunction
