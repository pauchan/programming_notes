# Numerical problems

- issue of precision and error


## Solving linear equations

- the simplest -> gaussian elimination -> eliminate variable from all but one, its on^3
- rounding errors might be a problem

## Bandwith reduction

- sort into line and minimize the length of the longest edge
- application -> sort elements to minimize search time (on the tape)
- np complete
- on3 heuristic -> breadth fs and line them from the left to right

## _matrix multiplication

- on^3 but can be speedup to xn^2

## determinants and permanents

- use to see if the matrix is singular, to  see if points lie on the left or right of the plane
- naive implementation of determinant is on!, smart is on^3 and permanents are np-hard

## constrained and unconstrained optimization

- finding min or max of the function (potentially) with the constrains on the values

## linear programming
- find the min/max within the inequalities
- simplest one -> simplex method
- inegral problem -> with integral constrains is np-complete

## Factoring and primality testing
- osqrtn for naive solution
- it can be eaisly shown that the numbers is composite without showing resudials
- best are randomizations

## Arbitrary precision arithmetics
- use array or linked list
- for large numbers, the biggest base - square root of the biggest number is optimal
- multipilcation and division - use hight school 
- exponantion -> n is n / 2 * n / 2 so a^n is a (a^n/2)^2

## kanpsack problem
- if items have the same worth -> take most of them so sort from the smallest and keep goin
- for integer values there is a dynamic programming solution

## Fourier transform

- converting from time to frequency
- used to filter noise or image compression
- computed in on^2, nlogn with FFT


