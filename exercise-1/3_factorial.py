def Factorial(n):
    result = 1
    for x in range(1, n+1):
        result *= x
    return result

print(Factorial(3))
print(Factorial(5))
