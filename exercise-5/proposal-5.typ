#set page(
  paper: "a4",
)

= Assignment 5 - Henrique Cirne

== Identify the Structure

*Instructions:* Read the scenarios below and determine which data structure (Stack, Queue,
Linked List, Tree, or Graph) best fits the situation. \

*1. Scenario A:* You are designing the navigation history for a web browser. When a user clicks the "Back" button, they should see the most recent page they visited.

*A:* Stack

*2. Scenario B:* You are building a system for a call center. Incoming customer calls need to be answered in the exact order they were received.

*A:* Queue

*3. Scenario C:* You are creating a GPS navigation app like Google Maps to find the shortest route between multiple cities.

*A:* Graph

*4. Scenario D:* You are coding the file explorer for an operating system, managing folders that contain subfolders, which contain files.

*A:* Tree

*5. Scenario E:* You are developing a photo slideshow app where the user can easily insert or delete photos in the middle of the slideshow without lagging the system.

*A:* Linked List

#pagebreak()

== Problem 1: The Stack (Reverse a String)

Write a function _reverse_string(text)_ that uses a Python list as a *Stack* to reverse a given string. \
_Hint: Loop through the string to push characters into the stack, then pop them off one by
one._

```Python
def reverse_string(text):
    if text == '':
        return

    stack = []
    reversed = []

    for l in text:
        stack.append(l)

    print(stack)

    while stack:
        reversed += stack.pop()

    return reversed

print(reverse_string('hello'))
print(reverse_string('World'))
print(reverse_string('!'))
print(reverse_string(''))

# Expected output
# ['h', 'e', 'l', 'l', 'o']
# ['o', 'l', 'l', 'e', 'h']
# ['W', 'o', 'r', 'l', 'd']
# ['d', 'l', 'r', 'o', 'W']
# ['!']
# ['!']
# None
```

#pagebreak()

== Problem 2: The Queue (First Come, First Served)

A ticketing office serves customers in the order they arrive. Write a class _TicketQueue_ with two methods:
1. _add_customer(name)_: Adds a customer's name to the back of the queue.
2. _serve_customer()_: Removes and returns the name of the customer at the front of the queue. If empty, return _"No customers in line"_.

```python
class TicketQueue:
    def __init__(self):
        self.queue = []

    def add_customer(self, name):
        self.queue.append(name)

    def serve_customer(self):
        if self.isEmpty():
            return "No customers in line"
        return self.queue.pop(0)

    def isEmpty(self):
        return len(self.queue) == 0

myQueue = TicketQueue()

myQueue.add_customer('H')
myQueue.add_customer('A')
myQueue.add_customer('B')

print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())

# Expected output
# Customer served: H
# Customer served: A
# Customer served: B
# Customer served: No customers in line
```

#pagebreak()

== Problem 3: The Linked List (Find the Length)

Given a simple Node class, write a function _count_nodes(head)_ that travels through a *Linked List* and returns the total number of nodes.

```python
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

# Expected output
# 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> Total number of elements in linked list: 7
# A -> Total number of elements in linked list: 1
```
