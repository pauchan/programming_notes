# Dynamic programming

- applicable where you have combinatorial problems that have left to right order among components (recursive)
- if resursive solution is computed over and over again

## Caching vs computation

- you need to decide on tradeoff: caching (memory) vs computation (cpu and time)
- **try to eliminate recursion by specyfing the order of execution** - try to find small subset of parameters that can be reused 
- dynamic programming can be used on the consequences of solutions (len = 16) not the solutions itself (1,4,5)