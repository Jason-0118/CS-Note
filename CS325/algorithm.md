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

# MaxSub O(n)
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






# Sorting Algorithm

## Bubble Sort

## Merge Sort

## Binary Search
