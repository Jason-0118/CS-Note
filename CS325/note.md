# Asymptotic notation
## Big-O
- upper bounds the growth rate of a function up to a constant
- If f(n)/g(n) = c for 0 ≤ c < ∞ then f(n) = O(g(n))
## Big-Ω
- lower bounds
- f(n) = Ω(g(n)) iif g(n) = O(f(n))
## Small-o
- f(n) = o(g(n)) if and only if f(n)/g(n) = 0
- e.g: 100n and e^n (derivative both)
## Small-w
- f(n) = w(g(n)) iif g(n) = o(f(n))
![alt text](./images/IMG_F69B8CB5D2F6-1.jpeg "Asymptotic notation")

# Graph
## Simple graph
- Undirected and unweighted
- No self loop
- No parallel edges
## induced subgraph
- a subset of the vertices in the original graph together with all of the edges running between them.
## cyclicity
-acyclic if it does not contain a cycle as a subgraph

# Recurrences T(n) = aT(n/b) + f(n)
- a is # of subproblems; 
- n/b is upper bound size of each subproblem; 
- f(n) work done to aggregate the subproblems
## Solving recurrences using Recursion Tree 
- height of tree: logb(n)
![alt text](./images/IMG_EBF3B7275F0D-1.jpeg "Recursion tree example")
## Solving recurrences using Master Theorem
![alt text](./images/IMG_99550F772125-1.jpeg "Master Theorem")

# Spanning Tree
- Possibility of ST: n^(n-2)

# Dynaic Programming
- Memoization
    1. "Top-down" dynamic programming
    2. Recursive. Stores solutions to subproblems for reuse
- Tabulation
    1. "Bottom-up" dynamic programming
    2. Iterative. Builds a table with solutions to subproblems

# P VS. NP
## P
- P stands for "polynomial"
- Set of efficiently solvable problems in polynomial time
- Problems in P: logn, n, nlogn, n^2
- Ex: addition, multiplication, closest pair of points, sorting, shortest paths, MST, ED...
## NP
- NP stands for "nondeterministic polynomial"
- Set of efficientlyverifiable problems in polynomial time
- Problems in NP: 2^n, n^n, n!
- Ex: Sudoku
## NP-comolete
- The hardest problems in NP
## Three versions of problems
- Decision problem
    1. A problem with a binary (YES or NO) answer
- Optimization problem
    1. What is the optimal value of the solutiom?
- Search problem
    1. What is the optimal solution itself?
## Verifiability

# Reductions 
- A decision problem B is NP-hard if there is a polynomial-time reduction from **every** problem in NP to B.
    - B is at least as hard as the ahrdest problems in NP
- A decision problem B is NP-complete if it is in NP and is NP-hard.
    - B is one of the hardest problems in NP
![alt text](./images/IMG_0DBE07C8CE3A-1.jpeg "reduction")
