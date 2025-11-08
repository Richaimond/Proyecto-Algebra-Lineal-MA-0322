## flag = is_strongly_connected(A)
## Devuelve true si el grafo dirigido representado por A es fuertemente
## conexo (para todo par ordenado (i,j) existe un camino i->j).
function flag = is_strongly_connected(A)
  n = size(A,1);
  if (size(A,2) != n)
    error("is_strongly_connected: A debe ser cuadrada");
  endif

  ## para cada vértice i hacemos BFS (reutilizamos bfs_shortest_path pero
  ## podemos simplemente comprobar alcanzabilidad)
  for i = 1:n
    visited = false(1,n);
    ## cola
    q = zeros(1,n); head = 1; tail = 0;
    tail = tail + 1; q(tail) = i;
    visited(i) = true;
    while (head <= tail)
      u = q(head); head = head + 1;
      for v = 1:n
        if (A(u,v) ~= 0 && ~visited(v))
          visited(v) = true;
          tail = tail + 1; q(tail) = v;
        endif
      endfor
    endwhile
    if (~all(visited))
      flag = false;
      return;
    endif
  endfor
  flag = true;
endfunction
