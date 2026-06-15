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