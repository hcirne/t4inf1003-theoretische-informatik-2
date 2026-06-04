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
