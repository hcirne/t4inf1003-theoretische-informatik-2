from __future__ import annotations

class Node:
    next: Node | None

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
