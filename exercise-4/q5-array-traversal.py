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
