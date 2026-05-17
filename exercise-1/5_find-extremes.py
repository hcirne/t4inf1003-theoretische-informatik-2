# Pseudocode
#
# Algorithm FindExtremes(array)
#
# // This algorithm takes an unsorted list "array" and returns the minimum and maximum values in it.
#
# {
#     minimum := array[0];
#     maximum := array[0];
#     for item := 0 to (length of array) do
#     {
#         if (item < minimum) then
#         {
#             minimum := item;
#         }
#         if (item > maximum) then
#         {
#             maximum := item;
#         }
#     }
#     return minimum, maximum;
# }

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
