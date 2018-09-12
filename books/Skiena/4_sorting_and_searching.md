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

## Heap -> Heapsort

- can be useful to speed up selection sort to O(nln)
- can be used to implement priority queue
- parents dominate the childrends (min or max)
- can be inserted to array -> childrens sits 2k and 2k+1 positions from parent
- heap is constructed in o(nlogn) - by heapyfiying after adding a new element
- after extracting min element, insert rightmost element to the top and heapyfiy
- insertion sort takes usually o(n^2 time) but can be reduced to o(nlogn) if you have binary tree as your input structure and traverse it
- priority queues are perefect for finding largest element under deletion/insertion

## Mergesort

- o(nlogn) -> because you go logn deep when splitting list and it takes n time to merge
- perfect for sorting linked list
- disadvantage 

## Quicksort
- pick pivot and throw all elements lower on one side and higer on the other
- good things: point of pivot stays in place and we can go recursively
- nlogn but n^2 if pivot fails to split the table
- if you are worried about the input, randomize the order in o(n) time

## Bucketing
- works well for evenly distributed data
- counting occurcences -> find left and right boundary in logn
- to search one sided, keep increasing the step exponentially
- can use binary serach to find roots
