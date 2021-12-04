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
![alt text](./images/IMG_F69B8CB5D2F6-1.jpeg "Logo Title Text 1")

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


