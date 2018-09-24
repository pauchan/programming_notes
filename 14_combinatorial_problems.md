# Combinatorial problems

- permutations, partitions, subsets, calendars, schedules
- rank - unrank operations -> assign unique integers

## Sroting

- when in doubt sort
- for small amount of keys -> insertion sort is enough
if keys are distributed -> bucket sort makes most sense
- if keys are hard to compare it might be useful to append prefix on the first search
- external disk access -> B-trees
- quicksort sucks for nearly sorted data so it might be useful to permute the data before sorting

## Searching

- start with the proper data structure. preparations be
- either sequential or binary
- are some items accessed more frequently? put them on the top
- zipf law
- for trees we want most popular elements close to root -> optimal binary search tree
- self organizing lists for changing access frequencies
- for external memory -> use btrees
- interpolation search -> how you use phone book

## Mean 

- simple -> sort an pick middle element
- quicksort is faster -> pivot until converge to media

## Permutations

- permutation -> arranging set of items
- there is n! permutations
- rank and unrank. Recursive and inverse. Alows you to generate random permutation, next permutation
- iterative approach -> next and previous to generate permutations
- 

## Subsets

- 2^n options
- good to keep items in the canonical order
- gray codes -> sets different by one insertion/deletion
- can be represented as binary string, that allows to easily generate all subsets by incressing this binary representation by 1
- n ksubsets-> there are exacly (n over k) subsets
- generate substrings over a distinct characters there will be a^n such strings

## Generating partitions

- Integer partitions - add up to n
- set partitions - elements from 1 to n to distinct sets
 -> vertex coloring and connected components return set partitions
 - its possible to enumerate partitions of 100

 ## Generating graphs

 - random edge generation
 - for directed graps, flip a coin on direction
 - prufer codes to generate trees

## Job scheduling

- input i best to be implemented as directed acyclic? graph
- precedence constraints -> topological sorting
- matching people with jobs -> bipartite matching
- assign jobs to timeslots -> vertex coloring
- most efficient route -> travelling salesman
- snowplow-> eulerian cycle
- critical path -> longest path from starting vertex to completion vertex
- minimum completion time -> o(N+M) -> sort in topological order and start when te prequisites finish
- divide load between machines -> job-shop scheduling -> each machine a bin a putting a jobs into a bin