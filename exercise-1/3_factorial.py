# Pseudocode
#
# Algorithm Factorial(n) 
# 
# // This function takes an input "n" and calculates the factorial 
#
# {
#     result := 1;
#     for x := 1 to (n + 1) do
#     {
#         result = result * x;    
#     }
#     return result;
# }

def Factorial(n):
    result = 1
    for x in range(1, n+1):
        result *= x
    return result

print(Factorial(0))
print(Factorial(1))
print(Factorial(5))
