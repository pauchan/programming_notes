# Graps - hard problems

## Clique

- which vertices group points to each other

## Independent set

- find set that for each edge x,y either x or y does not belong to set
- opposite of clique
- used in edge coloring
- find the lowest degree vertex, add it to set, remove vertices adjecend and repeat

## Vertex cover

- smallest set of vertices that edges cover all vertices
- simplest heuristic is to pick vertex with the most edges, delete adjenced edge and repeat

## Travelling salesman

- find smallest cost when visiting all vertices exactly once
- if unweighted -> hamiltonian cycle
- easier if conforms to triangle inequality
- nice heuristic -> find miminum spanning tree and do bfs on it

## hamiltonian cycle

- try to find relaxations -> maybe you can travel vertices more than once
- hamiltonian cycle in DAG can be found in linear time using dynamic programming
- confirm that you are exploring vertices (ham) not edges (euler) as euler is easy
- solution -> backtracking with pruning

## Graph partition

- divide into subraphs that can be connected with edge of the cost at most k
- minimum cut set, graph partition, maximum cut 

## vertex coloring 

- adjenced vertices have different colors
- bipartite -> using two colors, can be done using dfs in linar time
- every planar graph can be colored with at most 4 colors
- often vertex coloring can be changed to edges coloring which is easier
- backtracking and incremetal sollutions give nice heuristcs

## Edge coloring

- matchmaking and scheduling between pair of people
- you can color each graph with at most (max degree + 1)

## Graph isomorphism

- checking if two graphs are the same
- check if subgraph G is a part of H. Clique, hamiltonian and independed set are subproblems of subgraph
- checking tree isomorphism -> start with leaves
- somewhere between P and NP

## Steiner tree

- find tree connecting vertices, but you can add vertices in between

## Feedback edge / vertex set

- finding edges or vertices eleminating which would allow us to create DAG
- generate vertex ordering and delete ones going in the wrong direction 