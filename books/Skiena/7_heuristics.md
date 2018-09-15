# Combinatorial and heuritsics

## Backtracking

- usually imposible -> make sure you iterate over evey item once
- use deep first -> takes less space

## Pruning
- exploiting symmetry
- can be used between 15 and 50 items

## Sudoku

there are two decision to make
- what should be the next square to fill -> the most constrained one
- with what -> look ahead for the impossible solutions

- sometimes, try to solve easiest (less constrained problem first). It might be easier to calculate and provide solution for that one

## Heuristic method

- require two things: soltion space and cost function
Possible solutions: 
 - random - good where there is a lot of acceptible solutions or there is no coherence in solutions (no idea to find out if we are getting closer)
 - local search - king of the hill -> find the best, adjenced solution
 - simulated annealing - cooling schedule -> how likely we are to accept bad solution