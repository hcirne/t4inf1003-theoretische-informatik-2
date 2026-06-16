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
