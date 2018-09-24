# polynominal graph 

## Connected components

- testing if the graph is connected is usually the first step of each problem
- BFS or DFS is usually enough
- strongly connected -> respecting directions, weakly -> irrespective of directions
- checking if graph is tree -> if it is connected and has n-1 edges, it is a tree
- checking for cycles -> check for back edges

## Topological sorting

- for each edge i,j i is left to j
- scheduling
- only DAG can be topologically sorted
- every DAG can be topologically sorted
- find source vertices, delete their outogoing edges and keep goin, linear o(n+m)
- feedback set -> smallest set of eddges or verteces that creates dag

## Minumum spanning tree

- minimum set of edges connecting all vertices
- clusters found by eliminating longest paths in branch
- mst gives aproximate soluton to steiner tree and travelling salesman
- prim and kruskal -> greedy

## shortes path

- dijkistra algorithm for wiegthed
- bfs for unweighted
- most dynamic programming problems can be formulated as shortest path on dag


## Transative closure

- create edges between vertex that has paths
- transative reduction - remove edges with maintaining reachablity

## Matching

- paring workers with tasks
- pairing boys with girls
- easy if graph is bipartiate (two sets that vertices are not connected)

## Eulerian cycle

- visit each edge once
- undirected graph is eulerial if connected and each vertice has even no of edges

## Edge connectivity 

- check if graph can be disconnected by removing edges

## Network flow

- READ UP ON IT
- can solve bipartiate matching, connectivity and shortest path

