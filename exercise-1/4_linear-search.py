def LinearSearch(l, element):
    for i in range(len(l)):
        if (l[i] == element):
            return i
    return 'not found'

array = ['apple', 'banana', 'peach', 'mango'] 
print(LinearSearch(array , 'peach'))
print(LinearSearch(array , 'blueberry'))
