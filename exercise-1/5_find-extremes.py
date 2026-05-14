def FindExtremes(array):
    minimum = array[0]
    maximum = array[0]
    for item in array:
        if (item < minimum):
            minimum = item
        if (item > maximum):
            maximum = item
    return minimum, maximum

array = [1, 3, 2, 10, 5, 0, 20, 11]

print(FindExtremes(array))
