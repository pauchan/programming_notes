# Set and strings

## set cover

- given the subsets of set, what is the smallest amounts of subsets that cover set?
- set cover (pick item multiple times) vs set packing (only once)
- there is an optimal solution for two item subsets
- greedy -> pick the biggest one and keep going

## set packing 

- similar to the above but item can be picked only once
- np complete and exponential, need to look for relaxation of terms and heuristics
- again, greedy is the best

## string matching

- find instances of patern in string
- for small substrings, simple o(nm) search is the simplest and best
- knuth-morris-pratt creates jump tables to avoid going over checked strings
- ask questions about how many times do we do search and do we expect to find pattern
- for typos, approximate string matching
- karp-rabin algorithm

## approximate string matching 

- dynamic programming
- bitparallel algorithm has a bitmask that moves over the text

## text compression

- wheeler transform
- image data - run-length coding
- huffman code - replace alphabet code with the shortest code, depending on frequency
- lempel-ziv - builds coding table on the fly based on the fequencies of words and phrases in the text

## cryptography

## finite state machine minimization

- remove redundancy from the machine
- finite machines are defined by directed graphs

## longest common substring

- longest common substring can be found in linear time using suffix trees
- longest comonn subsequence and can be found in n+r*logn time

## shortest common superstring

- find the shortest string that contains two strings
- np complete
- greedy heuristic - merge strings together on overlap and search for the string