# Chapter 4: Sorting and searching

Computers spent more time sorting than on anything else

## Applications of sorting:

- sort preprocessing - finding elements is o(logn) if elements are sorted
- closest pair
- uniquiness
- distributions
- how often element appear - sort, do binary search and go left right
- testing for intersection (however this might be done in O(n) by builidng hashes)

## Considerations: 

- complex key
- stability
- increasing or decreasing

## Heap

- can be useful to speed up selection sort to O(nln)
- can be used to implement priority queue
- parents dominate the childrends (min or max)
- can be inserted to array -> childrens sits 2k and 2k+1 positions from parent
- heap is constructed in o(nlogn) - by heapyfiying after adding a new element
- after extracting min element, insert rightmost element to the top and heapyfiy
- insertion sort takes usually o(n^2 time) but can be reduced to o(nlogn) if you have binary tree as your input structure