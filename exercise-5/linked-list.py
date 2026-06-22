from __future__ import annotations

class Node:
    next: Node | None #fix pyright error messages
    
    def __init__(self, data):
        self.data = data
        self.next = None

def count_nodes(head):
    total = 0
    currentNode = head
    while currentNode:
        print(currentNode.data, end=" -> ")
        currentNode = currentNode.next
        total += 1
    return total 

node1 = Node(1)
node2 = Node(2)
node3 = Node(3)
node4 = Node(4)
node5 = Node(5)
node6 = Node(6)
node7 = Node(7)
        
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node7

node_A = Node('A')

print('Total number of elements in linked list:', count_nodes(node1))
print('Total number of elements in linked list:', count_nodes(node_A))
