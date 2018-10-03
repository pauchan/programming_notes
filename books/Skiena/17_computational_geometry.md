# Computational geometry

## geometric primitives

- numeric stablility
 - use integers
 - use double
 - user arbitrary precision

- for area of triangle use matrix formula, not height formula

## convex hull

- dynamic programming?
- get the rough shape of data points
- for 2,3 dimensions there a o(nlogn) algs
- find left,right,top,bottom and check the ones laying outside
- graham scan

## trialugulation

- replace complex polyhydron with the set of triangles
- triangulating a polygon -> complex hull and go from left to right

## voronoi driagrams

- region of influence around given set of sites
- fortune sweepline algorithm -> something about projecting cones into 3d 

## nearest neighbour search

- kd tree or voronoi diagarms

## range search 

- try to convert your nonconverx polygon to set of convex. its easy to check if point is within convex polygon

## point location

- which region contains point x?
- draw horizontal lines a count overlaps with the polygon
- slab method - draw vertical lines through vertex and do binary search on y coordinate

## intersection detection

- for line intersection, compare each line with each line for on^2
- for two convex poygons, sweepline algorithm which is o(n+m) - we go from left to right and encounter insertion (new polygon), deletion (polygon removed), or intersetion

## bin packing 

- store all items using the smallest amount of bins
- np-complete
- keep asking questions: is it online (real time) or offline (you know all the objects so you can plan ahead)
- sort objects by size from the biggest one and keep instering

## medial axis transform

- thinning of the polygon

## polygon partitioning

- tirangulation is the most basic
- there are n-2 triangles for n vertex
- herthel-merthon heuristic - 

## simplyfiying polygons
 
- create convex hull
- fourier transform

## shape similarity

- overlay one shape with other and count hamiltonian distance
- thin with skeleton and compare 
- suport vector machines

## motion planning 

- for point moving in space, create a visibity graph - vertex for each obstacle and edge if the two vertices see each other
- if robot is shape, try to replace it with enclosing disk
- have minkowski sum with the shape of the robot

## maintaining line arragements

- decomposition of space defined by the lines
- which point in plane satisfies the largest number of constraints?

## minkowsky sum

- sum of two shapes
- allows converting robots to points moving over minkowsky sum of terrain
- if two shapes are convex, sum can be counted in o(n+m) -> triangulate each shape, and count their sums



