# BFS
- input: a graph G represented in adjacency list form.
```
BFS(G):                                     DFS(G):
Queue q                                     Stack s
# Add staring vertex to q
G[0].discovered = true                      G[0].discovered = true
q.enqueue(G[0])                             s.push(G[0])

while not q.is_empty():                     while not s.is_empty():
    Vertex v = q.dequeue()                      Vertex v = s.pop()
    for u in v.neighbors:                       for u in v.neighbors:
        if not u.discovered:                        if not u.discovered:
            u.discovered = true                         u.discovered = true
            q.enqueue(u)                                   **s.push(u)**

```
# DFS

# Sorting Algorithm

## Bubble Sort

## Merge Sort

## Binary Search
