#set page(
  paper: "a4",
)

= Assignment 4

== Part A: Conceptual & Logical Questions

=== Q1: The Locker Room Dilemma

You are given a task to store the monthly sales data of a store for the past 5 years (split by month). \
*1. Would you use a 1D array or a 2D array to store this data? Explain why.* \

*A:* I would use a 2D array to store this data because we have two categories (years and months).
This way, the 2D array allows us to access specific values using a year and month index, making it easier to organize and retrieve data.

*2. What would be the dimensions (rows and columns) of your choice?* \

*A:* Since we have 5 years and 12 months, the array dimensions are given by _5 x 12_.
With this, we would have 5 rows representing the years and 12 columns representing the months.

The table below is a visual representation of the 2D array.

#table(
  columns: 5,
  table.header([], [January], [February], [...], [December]),

  [Year 1], [], [], [], [],
  [Year 2], [], [], [], [],
  [Year 3], [], [], [], [],
  [Year 4], [], [], [], [],
  [Year 5], [], [], [], [],
)

=== Q2: The Efficiency Showdown

You have an unsorted list of 1,000,000 phone numbers. You need to find if "John Doe" is in the list.
*1. Can you use Binary Search right away? Why or why not?*

*A:* Binary Search is a searching algorithm that operates on sorted lists, repeatedly splitting the search space in half to find a match.
Therefore, the answer is no. We cannot use Binary Search because it requires the list to be sorted.
Since the problem states that the list is *unsorted*, the algorithm cannot correctly eliminate half of the remaining elements at each step.

*2. If you use Linear Search, what is the worst-case scenario for how many numbers you will have to check?*

*A:* Linear Search is a searching algorithm that sequently checks each element of a given list until it finds a match or the whole list has been searched through.
Knowing this, the worst-case scenario happens when we must examine all 1,000,000 contacts in the list.
This happens if "John Doe" is the last entry in the list or if "John Doe" is not present in the list at all.

=== Q3: The Shifting Problem

Why does deleting an element from the middle of an array take longer (O(n) time) than deleting an element from the very end of an array (O(1) time)? Use a simple analogy to explain.

*A:* Let's imagine that we have people standing in a queue. If the person at the end of the queue decides to leave, the rest of the queue remains unchanged.
However, if a person in the middle leaves, everyone behind them has to move forward to close the gap.
Similarly, deleting the last element in an array is a single operation with a time complexity of O(1).
On the other hand, deleting an element from the middle requires shifting all subsequent elements, resulting in a time complexity of O(n).

=== Q4: Time Complexity Check

Fill in the blanks with the correct Worst-Case Time Complexity (O(1), O(n), O(\log n), or O(n^2)):
- *Accessing a primitive integer:* O(1)
- *Searching for an item using Binary Search:* O(log n)
- *Traversing a 1D array of size n:* O(n)
- *Sorting a reverse-ordered array using Insertion Sort:* O($n^2$)
- *Merging two arrays of size n and m:* O(n + m) ; if n == m, then O(2n) = O(n)

== Part B: Coding & Pseudo-code Logic

=== Q5: Array Traversal & Logic

Write a function/program that takes a 1D array of integers as input and prints only the even
numbers present in the array.
- Example Input: [3, 8, 12, 5, 7, 14]
- Expected Output: 8, 12, 14

```python
def array_traversal(a):
    for i in a:
        if i % 2 == 0:
            print(i)


a = [1,2,3,4,5,6]
b = [1,3,5]
c = [0]
d = []
e = [3, 8, 12, 5, 7, 14]

array_traversal(a)
array_traversal(b)
array_traversal(c)
array_traversal(d)
array_traversal(e)

# Expected output
# 2
# 4
# 6
# 0
# 8
# 12
# 14
```

#pagebreak()

=== Q6: Linear Search Implementation

Write a function named linearSearch(array, target) that searches for a target number inside an
array.
- If the target is found, return its index (position).
- If the target is not found, return -1.
- Constraint: Do not use built-in search functions (like .index() or in). Write the loop yourself.

```python
def linear_search(a, t):
    i = -1
    for elm in a:
        i += 1
        if elm == t:
            return i
    return -1

a = [1,2,3,4,5,6,7,8,9,10]
b = []

print(linear_search(a, 10))
print(linear_search(a, 11))
print(linear_search(b, 0))

# Expected output
# 9
# -1
# -1
```
