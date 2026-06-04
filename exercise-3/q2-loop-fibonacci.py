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
