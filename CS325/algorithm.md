# BFS & DFS && shorest path via BFS
- input: a graph G represented in adjacency list form.
```
BFS(G):                                     DFS(G):                                     SP-BFS(G):
Queue q                                     Stack s                                     Queue q
# Add staring vertex to q
G[0].discovered = true                      G[0].discovered = true                      G[0].discovered = true
q.enqueue(G[0])                             s.push(G[0])                                q.enqueue(G[0])
                                                                                        G[0].dist = 0
while not q.is_empty():                     while not s.is_empty():                     while not q.is_empty:
    Vertex v = q.dequeue()                      Vertex v = s.pop()                          Vertex v = q.dequeue()
    for u in v.neighbors:                       for u in v.neighbors:                       for u in v.neighbors:
        if not u.discovered:                        if not u.discovered:                        if not u.discovered
            u.discovered = true                         u.discovered = true                         u.discovered = true
            q.enqueue(u)                                   s.push(u)                                q.enqueue(u)
                                                                                                    u.dist = v.dist + 1
```
# Divide-and-Conquer Template
1. Divide - Split the original problem into several smaller subproblems
2. Conquer - Solve each subproblem recursively
3. Combine - Aggregate the solutions

# Max-sub-array O(n)
```
    //CPP format
    int max_current;
    int max_global;
    max_current = max_global = array[0];
    for (int i = 1; i < array.size(); i++)
    {
        if (array[i] > array[i] + max_current)
            max_current = array[i];
        else
            max_current = max_current + array[i];
        max_global = max(max_current, max_global);
    }
    return max_global;
```

# Karatsuba Algorithm
Time complexity: T(n) = 4T(n/2) + O(n) = O(n^2) => T(n) = 3T(n/2) + O(n) = O(n^log2(3)) = O(n^1.58)
```
    a   b                                         c   d
X: 146 123 => X = a * 10^(n/1) + b            Y: 123 456 => Y = c * 10^(n/1) + d
X * Y = (ac)*10^n + (ad + bc)*10^(n/2) + bd
optimal:            (ad + bc)*10^(n/2) = (a+b)(c+d)-ac-bd
```

# Closest Pair
```
ClosestPair(s):
    left = ClosestPair(P-Left)
    right = ClosestPair(P-right)
    P-Strip = Strip of width is min(left, right)
    strip = ∞
    for p in P-Strip:
        for q in P-Strip with p.y - min(left, right) ≤ q.y ≤ p.y:
            if(p.x-q.x)^2 + (p.y-q.y)^2 < strip
                strip = (p.x-q.x)^2 + (p.y-q.y)^2
    return min(left, right, strip)
```






# Sorting Algorithm

## Bubble Sort

## Merge Sort

## Binary Search
