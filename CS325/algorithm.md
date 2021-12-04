# BFS
- input: a graph G represented in adjacency list form.
```
BFS(G):
Queue q
# Add staring vertex to q
G[0].discovered = true
q.enqueue(G[0])

while not q.is_empty():
    Vertex v = q.dequeue()
    for u in v.neighbors:
        if not u.discovered:
            u.discovered = true
            q.enqueue(u)

```


# Sorting Algorithm

## Bubble Sort

## Merge Sort

## Binary Search
