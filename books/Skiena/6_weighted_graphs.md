# Weighted graphs

## Minimum spanning trees

- tree - minimum connected graph
- spanning tree -> connecting all vertices in the graph with edges
- minimum spanning tree - minimum values between edges

- prim - greedy - keep connecting the lowest edge among non connected vertices in o(n^2)
- kruskal - effective on sparse, find lowest value in non connected components -> o(mlogn)
- used for clustering

## Shortest path

- dijkstra algorithm -> find shortest path of prefix, recursively. LEads to dynamic programming solution. Runs in o(n^2)
- short all paths -> Floyd-Warshall, runs in o(n^3)
- for unreachable paths, set it to max, not 0
 

