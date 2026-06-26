#set page(
  paper: "a4",
)

= Assignment 6 - Henrique Cirne

== Part 1: Binary Search Trees (BST)

=== Logic & Conceptual Questions

*Q1.* How many structurally unique Binary Search Trees can be created using 3 distinct keys
(e.g., keys 1, 2, and 3)? Draw or list their root nodes to justify your answer.

*A:* We can have a total of 2 + 1 + 2 = 5 unique Binary Search Trees according to the drawing below.

#figure(
  image("q1.png"),
)

#pagebreak()

*Q2.* Suppose you are searching for the number 45 in a valid BST. Which of the following
sequences could not be the sequence of nodes examined? Explain why.
- *Sequence A:* 10, 75, 20, 60, 30, 50, 45
- *Sequence B:* 90, 20, 80, 30, 70, 40, 50, 45
- *Sequence C:* 20, 35, 65, 40, 55, 38, 45

*A:* The sequence _C_ could not be the sequence of nodes examined. While searching for _45_, after visiting _40_, the search goes to the right because _45 > 40_.
Therefore, every subsequent node must be greater than _40_ since they are in the right subtree of _40_.

The next nodes are _55_, then _38_. Well, _38 < 40_ so it cannot be in the right subtree of _40_.
This goes against the binary search tree propery, making the sequence impossible.

#figure(
  image("q2.png", fit: "contain", width: 200pt),
)

#pagebreak()

*Q3.* Write a function _isValidBST(root)_ in your preferred language that takes the root of a binary
tree and determines if it is a valid Binary Search Tree. Constraint: Time complexity must be _O(N)_,
where _N_ is the number of nodes.

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

def isValidBST(root):
    def validate(node, min_val = float('-inf'), max_val = float('inf')):
        if node is None:
            return True

        if node.data <= min_val or node.data >= max_val:
            return False

        return (
            validate(node.left, min_val, node.data) and
            validate(node.right, node.data, max_val)
        )
    return validate(root)

root = Node(8)
root.left = Node(3)
root.right = Node(10)
root.left.left = Node(1)
root.left.right = Node(6)
root.left.right.left = Node(4)
root.left.right.right = Node(7)
root.right.right = Node(14)
root.right.right.left = Node(13)
print(isValidBST(root))

root1 = Node(10)
root1.left = Node(5)
root1.right = Node(15)
root1.left.right = Node(12)
print(isValidBST(root1))

root3 = Node(10)
root3.left = Node(5)
root3.right = Node(15)
root3.left.right = Node(12)
print(isValidBST(root3))

root2 = Node(42)
print(isValidBST(root2))

# Expected output
# True
# False
# False
# True
```

*Q4:* Given a Binary Search Tree and two target values present in the tree, _p_ and _q_, write a
concise function to find their Lowest Common Ancestor (LCA).

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

def findLCA(root, p, q):
    if root is None:
        return None

    # if both p and q are smaller than root => right subtree
    if root.data > p.data and root.data > q.data:
        return findLCA(root.left, p, q)

    # if both p and q are greater than root => left subtree
    if root.data < p.data and root.data < q.data:
        return findLCA(root.right, p, q)

    # if p and q are on opposite sides of the BST, root is the LCA
    return root

root = Node(20)

root.left = Node(10)
root.right = Node(30)

root.left.left = Node(5)
root.left.right = Node(15)

root.right.left = Node(25)
root.right.right = Node(35)

root.left.left.left = Node(2)
root.left.left.right = Node(7)

lca = findLCA(root, root.left, root.right)  # 10 and 30
print(lca.data)

lca1 = findLCA(root, root.left.left, root.left.right)  # 5 and 15
print(lca1.data)

lca2 = findLCA(root, root.left.left.left, root.left.left) # 2 and 5
print(lca2.data)

print(findLCA(None, Node(1), Node(2)))

# Expected output
# 20
# 10
# 5
# None
```

== Part 2: Dijkstra’s Algorithm

=== Logical & Conceptual Questions

*Q5.* Dijkstra's algorithm is guaranteed to work on graphs with non-negative edge weights.
1. Sketch a simple 3-node directed graph with one negative edge where Dijkstra's algorithm fails to find the correct shortest path.
2. Trace the algorithm step-by-step on your sketch to prove why it fails.

*Q6.* What is the time complexity of Dijkstra’s algorithm when implemented using:
1. An unsorted array/list to find the minimum distance vertex?
2. A Min-Heap (Binary Heap)?
State your answers in terms of vertices (V) and edges (E). Under what graph density
condition is the array implementation preferred over the heap implementation?

*Q7.* You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of
directed travel times where times[i] = (ui, vi, wi).
Write a function to find the minimum time it takes for a signal sent from a given source node k to
reach all nodes. If it is impossible for all nodes to receive the signal, return -1.
Requirement: Use an adjacency list representation and an efficient priority queue (Min-Heap).
