# Data Structures

## Dictionary

- avoid bad data structure at all costs
- figure out if you will be doing deletions
- is there a distribution?
- splay trees can take advantage of skewed data structures

- For small set of keys -> you can use linked lists or arrays -> o(n) access. 
- Self organizing lists -> accessed element is moved to the beginning of the list
- sorted linked lists are usually useless as you can binary search them
- hash map -> elements that are linked lists (its good to pick prime number of buckets)
- binary search trees -> log n lookup
- b-trees -> log n lookup -> used when you have a lot of keys that need to be stored on disk -> b tree minimize disk access count

## Priority queue
- give access to the smallest/biggest element
- no inserts -> no need for queue

Options:
- list or arrays -> access and deletion are fast, inserts are slow
- binary heap -> faster access (remember that it can be implemented as an array!)
- bounded height priority queue -> array with fixed size, use when max value to insert is known
- binary trees -> when other operations are needed

## Suffix trees

- speed up o(n^2) problems to a linear ones
- trie -> fast to build and search, take a lot of memory
- suffix tree -> trie of proper suffixes of S - alow to search for substrings
- suffix array -> simpler implementation of suffix tree, allow to searches in ologn time

## Graphs
- what to chooes: adjencency matrix or adjencency list. Usually list is better. Matrix is good when you ask if (i,j) is in the graph.
- conversion between list and array takes linear time
- usually you shouldnt need to modify graph after init. Maybe only its attributes
- planary graph -> can be drawn so that two edges wont cross. Planar graphs are sparse

## Sets
- union on sets is linear if your sets are sorted
- if only subset contains two elements, they can be thought as edges

### Implementations
- binary vector -> adding and substracting sets is easy. O(n) -> slow on finding all members of a (sparse) set
- dictionary -> good for sparse set, for unions, sort the elements
- bloom filters -> multiple hashes, multiple binary vectors

- set partition - element can be a member of only one subset

- **IMPORTANT** union-find -> tree with pointers to parents -> to merge two subset change parent in elements of one of them

## KD - trees

k dimensional trees - structure that gradually partition space to contain less and less members until there is only one each
- we can cut dimensions alternating or the biggest one
- applications: point location, nearest neighbour, range search, partial key search
- Practical up to 20 dimensions