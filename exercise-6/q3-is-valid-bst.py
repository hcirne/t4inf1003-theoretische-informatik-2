from __future__ import annotations

class Node:
    next: Node | None

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

print(isValidBST(root))  # Expected: True

root1 = Node(10)
root1.left = Node(5)
root1.right = Node(15)
root1.left.right = Node(12)

print(isValidBST(root1))  # Expected: False

root3 = Node(10)
root3.left = Node(5)
root3.right = Node(15)
root3.left.right = Node(12)

print(isValidBST(root3))  # Expected: False

root2 = Node(42)

print(isValidBST(root2))  # Expected: True
