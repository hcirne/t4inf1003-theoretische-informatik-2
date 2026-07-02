#set page(
  paper: "a4",
)

= Practice Exam - Henrique Cirne

== SECTION A: Short Answer & Output Tracking (30 Marks)

*Q1. (Asymptotic Notations) Differentiate between O(n) and o(n) notation. Give a strict
mathematical definition or a conceptual explanation for both.*

Big-O notation defines an upper bound of a function's growth rate.

- $f(n) = O(g(n))$ if there exists positive constants $c$ and $n#sub[0]$ such that $f(n) <= c dot g(n)$ for all $n >= n#sub[0]$.

Little-O notation is used to describe an upper bound that cannot be tight.

- $f(n) = o(g(n))$ means $limits(lim)_(n -> #sym.infinity) f(n)/g(n) = 0$

*Q2. (Code Output) What is the exact output and the time complexity of the following Python
snippet?*
```python
def sample_func(n):
  count = 0
  i = 1
  while i < n:
    print(f"i={i}")
    i = i * 2
    count += 1
sample_func(10)
```

*A:* The time complexity is $O(log n)$.

*Q3. (Recursion vs Iteration) Briefly describe the stack overhead associated with finding the
n-th Fibonacci number using a naive recursive approach versus an iterative approach.*

*A:* For a naive recursive approach, the recursion depth is equivalent to $O(n)$, which means it has $O(n)$ stack frames, risking a stack overflow for a very large $n$.
On the other hand, the iteration approach uses $O(1)$ extra space, meaning no growth as $n$ increases.


*Q4. (Linear vs Binary Search Logic) An array contains the following elements: [2, 5, 8, 12, 16,
23, 38, 56, 72, 91]. Show the step-by-step element comparisons made by Binary Search to find
the target 56.*

*A:* Step 1:

- Low = 0, high = 9, mid = 4 (16)
  - 16 < 56 → search right half

Step 2:
- Low = 5, high = 9, mid = 7 (56)
  - 56 = 56 → found (2 comparisons in total).

*Q5. (Stack & Queue Applications) Explain why a circular queue is preferred over a simple
linear queue implemented using a fixed-size array.*

*A:* A circular queue is preferred over a linear queue for a fixed-size array because it connects the first position
with the last, forming a circle. This allows to efficiently use memory by reusing spaces freed after elements are
dequeued. It follows the FIFO (First In First Out) method, meaning that the element inserted first is removed first.

*Q6. (Graph Representation) Draw the Adjacency Matrix for a directed graph with 3 vertices (A,
B, C) and edges: A \to B, B \to C, C \to A, and B \to B (self-loop).*

*A:*

#table(
  columns: 4,
  table.header([], [A], [B], [C]),

  [A], [0], [1], [0],
  [B], [0], [1], [1],
  [C], [1], [0], [0],
)
== SECTION B: Core Concepts & Pseudocode (40 Marks)

*Q7. (Algorithm Design & Insertion Sort) Write the pseudocode for Insertion Sort to sort an
array of integers in ascending order.*

*A:*

*Q8. (Tower of Hanoi Logic) Trace the exact sequence of disk movements required to solve the
Tower of Hanoi problem for N = 3 disks from Source pole (A) to Destination pole (C) using an
Auxiliary pole (B).*

*A:*

*Q9. (Linked List Operations) Write pseudocode or a Python function to delete a node with a
specific value X from a Singly Linked List. Handle the case where the node to be deleted is the
head.*

*A:*

*Q10. (Binary Search Tree - BST) Given the sequence of numbers: [45, 23, 65, 12, 32, 54, 78].*
1. Sketch the Binary Search Tree resulting from inserting these numbers in order.
2. What is the time complexity of searching for an element in a perfectly balanced BST vs a
worst-case skewed BST?

== SECTION C: Advanced Tracing & Algorithms (30 Marks)

*Q11. (Dijkstra’s Algorithm Tracing)*
Trace Dijkstra's shortest path algorithm from source vertex A for the following undirected graph.
List the shortest distance from A to all other vertices at the end.
- Edges: (A-B, wt=4), (A-C, wt=2), (B-C, wt=1), (B-D, wt=5), (C-D, wt=8).

*A:*

*Q12. (Loops & Time Complexity Analysis)*
Analyze the total time complexity (Big-O) of the following code block. Explain your math clearly.
```python
def complex_loops(n):
  # Part 1
    for i in range(n):
        for j in range(n):
        print("Hello")

  # Part 2
  k = 1
  while k < n:
    print("World")
    k = k * 3
```
