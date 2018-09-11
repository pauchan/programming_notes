# Data structures

**Solving problems might be easier when the underlying data representation changes**

## Contigiuos vs Linked data structures

Contigiuos: Arrays, Hashes, Matrixes
Linked: List, trees, graphs

## Arrays vs Linked lists

|  | Array | Linked lists |
| memory | contagious | sparse |
| access | o(1) | o(n) |
| insertion/deletion | hard | easy(use two pointers) |
| adding new elements | hard (easy for dynamic arrya) | easy |

List can be searched resursively!!! -> serch on the sublists

## Queue and Stacks

Queues -> minimize maximum time waiting in the queue, average time is the same as stack

## Dictionaries

Can be used to remove duplicates

## Unsorted vs sorted arrays

- Sorted arrays are good for finding elements: min, max, given value (binary serch)
- Unsorted arrays are good for adding and removing elements

## Binary serach trees 

- both fast search and flexible editing
- Log n height on average, but can be n in degenerated cases
- You can sort in n log n time if you insert to binary tree and then traverse

### Insertions and deletions in binary tree

- Insertions can be done in a recursive way, where we find a place to insert and element and cascade down the remining part of a tree (whch is also a tree)
- Deletion is easy when the node is a leaf or has one descendad, bit more trickier for two descendants
- Binary trees search for elements in O(log) time, but can be slower if the tree is unbalanced. On average however, they are O(log)
- Sorting can be done in nlogn time if our underlying structure is a tree

### Priority queues

Priority queues do three things:
- Insert new element
- Find min element
- Delete min element

This can be implemented with: binary tree: inserition -> logn, finding -> 1, deleting -> logn

Hamiltionian path -> wisiting each element once

## Hashes and strings

### Resolving collisions

- chaining (array linked to elements) 
- open addressing (elements fill next slots, more memory efficient but deletions are ugly)

### Applications of hashes

- Hashes can be used for string matching by using Rabin-Karp algrorithm -> you test hashes of string, not the strings itself
- Duplicate deletion
- Checking if document exists in corpus
- Check if document is plagiarized from corpus (compare it subparts against some other subparts)
- Checksums

Hashing allows you to get linear times for algorithms that would require nlogn or n^2 otherwise
