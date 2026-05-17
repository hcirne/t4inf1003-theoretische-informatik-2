# Pseudocode
#
# Algorithm FizzBuzz()
#
# // This function iterates from 1 to 100, printing the word "Fizz" for multiples of 3, 
# // "Buzz" for multiples of 5 and "FizzBuzz" for mutiples of both.
# // The while loop, altough not as code effiecient as the "for loop" for this scenario, was used to simply practice writing pseudocode.
#
# {
#     i := 1;
#     while i < 101 do
#     (
#         if (i % 3 = 0) AND (i % 5 = 0) then
#         {
#             write(i, "FizzBuzz");
#         }
#         if (i % 3 = 0) then
#         {
#             write(i, "Fizz");
#         }
#         if (i % 5 = 0) then
#         {
#             write(i, "Buzz");
#         }
#         else
#         {
#             write(i);
#         }
#         i := i + 1;
#     ) 
# }

def FizzBuzz():
    i = 1
    while i < 101:
        if ((i % 3 == 0) and (i % 5 == 0)):
            print(i, 'FizzBuzz')
        elif (i % 3 == 0):
            print(i, 'Fizz')
        elif (i % 5 == 0):
            print(i, 'Buzz')
        else:
            print(i)
        i += 1

FizzBuzz()
