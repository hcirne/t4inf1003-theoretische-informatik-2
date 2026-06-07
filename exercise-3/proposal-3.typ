#set page(
  paper: "a4",
)
= Assignment 3

== Part 1: Coding Challenges

=== Q1. The Factorial Countdown

Below is the function #emph[recursive_factorial(n)] that takes an input _n_ and returns its factorial.
```python
def recursive_factorial(n):
    # the if statement indicates the base case
    if (n <= 1):
        return 1
    else:
        # below we have the recursive call
        return n * recursive_factorial(n - 1)

print(recursive_factorial(1))
print(recursive_factorial(2))
print(recursive_factorial(3))
print(recursive_factorial(4))
print(recursive_factorial(5))

# Expected output
# 1
# 2
# 3
# 24
# 120
```

=== Q2. Building the Fibonacci Sequence

Below is the function #emph[loop_fibonnaci(n)] that returns a _list_ of the first _n_ Fibonacci numbers.
```python
def loop_fibonacci(n):
    if n <= 0:
        return []
    if n == 1:
        return [0]

    series = [0, 1]
    for _ in range(2, n):
        series.append(series[-1] + series[-2])

    return series

print(loop_fibonacci(0))
print(loop_fibonacci(1))
print(loop_fibonacci(2))
print(loop_fibonacci(3))
print(loop_fibonacci(4))
print(loop_fibonacci(5))

# Expected output
# []
# [0]
# [0, 1]
# [0, 1, 1]
# [0, 1, 1, 2]
# [0, 1, 1, 2, 3]
```

#pagebreak()

== Part 2: Core Theory
=== Q3. Spot the Bug!

A student writes the following recursive function to print numbers from n down to 1. However,
when they run countdown(3), the program crashes with a RecursionError.
```python
def countdown(n):
    print(n)
    countdown(n - 1)
```
*1. What fundamental piece of recursion is missing from this function?* \
*A:* The fundamental piece of recursion missing is the base case.

*2. Rewrite the code correctly so that it stops when it reaches 1.*

```python
def countdown(n):
    # the base case was missing
    if (n < 1):
        return

    print(n)
    countdown(n - 1)

countdown(1)
countdown(2)
countdown(3)

# Expected output
# 1
# 2
# 1
# 3
# 2
# 1
```
=== Q4.The Memory Trade-Off
*Explain why an iterative loop is generally more memory-efficient than a naive recursive function.
Mention what happens to the computer's Call Stack during recursion.*

*A:* An iterative loop is generally more memory-efficient than a naive recursive function because it
doesn't require a new function call for each iteration.
With recursive functions, each function call adds a new stack frame to the computer's Call Stack.
These stack frames contain information such as function parameters, local variables, and the return address.
As the recursion depth increases, memory usage grows due to the creation of these stack frames.
Therefore, this can introduce performance overhead because of the repeated function calls.
In extreme cases, the Call Stack can exceed its size limit causing a stack overflow error that leads the program to crash.

#pagebreak()

== Part 3: Real-World Logic Riddles
=== Q5. The Stacking Box Dillema

*1. If you were writing a program to find the key, what is the recursive action you repeat over and over?*
A: The recursive action would be to open the current box and continue searching inside the next smaller box.

*2. What is the base case that tells you to finally stop opening boxes?*
A: Assuming that there's a golden key at the smallest, tiniest box, then the base case would be "when you find the key, stop".
If there's no guarantee that there's a key inside the boxes, we can stop when we reach the smallest one (there's no other box inside it).

=== Q6. The 29th Day Puzzle

A scientist places a single bacteria cell in a jar. This specific bacteria doubles its population
every single minute. \
At exactly 30 minutes, the jar is 100% full. \
*1. At what minute was the jar exactly half full?*

*A:* The jar is exactly half full at 29 minutes.

*2. Why does solving this problem require you to think "backward" like a recursive function?*

Because the bacteria doubles every minute, we can reason backward from the know state.
If the jar is completely full at  30 minutes, then a minute earlier it was half full, since doubling the bacteria filled the jar.
Continuing our backward chain of thought, the jar was a quarter full at 28 minutes, one-eight full at 27 minutes, and so on.
Therefore, this backward reasoning is similar to recursion, where each state can be derived from the next following a repeated rule.
