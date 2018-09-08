(CHECK SOURCE, looks like interviews exposed)
# Linked lists

## Can be implemented as stack (either dynamic array or list)

### Dynamic array

 - faster because you dont allocate elements that often
 - a lot of elements are not used (more space used)
 - random access (not used for stacks)


### Linked list

 - faster implementation
 - slower beause allocating new elements all the times

 usually O(N) but can be O(1) when using existing list nodes (to mark the end of the list?)
 dummy heads to check for empty list
