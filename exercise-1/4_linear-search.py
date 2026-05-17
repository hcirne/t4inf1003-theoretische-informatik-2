# Pseudocode
#
# Algorithm LinearSearch(l, element)
#
# // This function iterates through a list "l", searches for an element "element" and returns its index 
#
# {
#     for i := to (length of l) do 
#     {
#         if (l[i] = element) then
#         {
#             return i;
#         }
#     }
#     return "not found";
# }

def LinearSearch(l, element):
    for i in range(len(l)):
        if (l[i] == element):
            return i
    return 'not found'

array = ['apple', 'banana', 'peach', 'mango'] 
print(LinearSearch(array , 'peach'))
print(LinearSearch(array , 'blueberry'))
