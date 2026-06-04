def countdown(n):
    # the base case was missing
    if (n < 1):
        return

    print(n)
    countdown(n - 1)

countdown(1)
countdown(2)
countdown(3)
countdown(4)
countdown(5)
