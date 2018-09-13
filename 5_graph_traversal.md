# Graph traversal

vertices (points) and edges (lines) - 

## Categories

- Undirected vs directed - Most interesting problems are undirected
- Weighted vs unweighted (shortest path for unwieghted - breadth first search)
- simple vs nonsimple (with loops to itself or with multiple same edges)
- sparse vs dense
- cyclic vs acyclic
 - Trees are undirected, acyclic, can be recursed
 - DAG - directed acyclic graphs **scheduling**
 - embedded vs topological - embedded has geographical representation

degree of vertex - how many egdes are adjented

 ## Adjencency matrix vs adjencency list

 ### Matrix
  - fast insertion and deletion
  - fast checking if vertex is in the graph

 ### List
 - checking the vertex degree
 - traversing

 ## Traversing graphs 

 three states: undiscovered, discovered (not all edges are processed) and processed
 
## BFS

 produces tree which has closest nodes close to the root

- graph is connected when there is path from each vertex to each. Checking connectedness can be done with BFS
- bipartite graph - can be coloured with two colors

## DFS

difference between DFS and BFS is the order they store discovered vertices. For BFS we have queue, for DFS we have stack (but you can use recursion to avoid stack)

Generating DFS leaves us with tree edges and back edges (you cannot have other types as you explore everything )

DFS can be used to find cycle. Every path with a back edge has cycle.
to check connectivity delete an edge and do BFS or DFS

## Topological sorting

- only for DAG
- sort vertices from left to right
- finding topology -> reverse processed order of DFS


 - list
