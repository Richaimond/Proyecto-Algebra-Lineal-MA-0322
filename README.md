# Proyecto Álgebra Lineal MA-0322
## Cálculo de cadenas y caminos mínimos en grafos dirigidos utilizando Octave

## Descripción General
El objetivo del proyecto es analizar relaciones dentro de redes representadas mediante grafos dirigidos.
A partir de matrices de adyacencia se debe:

- Calcular la cantidad de cadenas de longitud n desde el vértice i hasta el vértice j
- Determinar el camino más corto entre dos vértices
- Verificar si el grafo asociado es fuertemente conexo

Todo utilizando álgebra lineal mediante potencias de matrices y algoritmos de caminos mínimos.


## Matrices de ejercicios propuestos

### Matriz 1
```bash
0  1  1  0
0  0  0  0
1  1  0  0
1  0  0  0
```

### Matriz 2
```bash
0  1  1  0  0
0  0  0  1  0
1  1  0  1  0
0  0  1  0  1
1  0  1  0  0
```

### Matriz 3
```bash
0  0  1  0  0
1  0  0  0  0
0  1  0  1  0
1  1  1  0  1
0  1  0  0  0
```

### Matriz 4
```bash
0  0  1  1  0  0
1  0  0  1  0  0
0  0  0  1  0  1
1  0  0  0  1  0
0  0  0  1  0  0
1  0  0  0  1  0
```

### Matriz 5
```bash
0  1  1  0  0  0
1  0  0  1  0  0
0  1  0  0  1  0
1  1  0  0  1  0
0  0  1  0  0  1
1  0  0  0  1  0
```

### Matriz 6
```bash
0  1  0  0  0  1
1  0  1  0  0  0
0  0  0  1  0  0
0  0  1  0  1  0
0  0  0  0  0  1
1  0  0  0  0  0
```

### Matriz 7
```bash
0  1  0  1  0  0  0
1  0  1  0  0  0  0
0  0  0  1  1  0  0
1  0  0  0  0  1  0
0  0  0  0  0  1  1
0  0  0  0  0  0  1
1  0  0  0  0  0  0
```

## Archivos del Proyecto

### Punto de inicio del programa
```bash
main.m                         
```
### Cantidad de cadenas de longitud n entre vértices
```bash
contarCadenas.m                
```
### Algoritmo de camino más corto
```bash
caminoMasCorto.m               
```
### Evaluar fuerte conexidad del grafo
```bash
esFuertementeConexo.m          
```
### Potencias de la matriz de adyacencia
```bash
generarPotencias.m
```             
