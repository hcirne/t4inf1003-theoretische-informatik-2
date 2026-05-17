# Pseudocode
#
# Algorithm Palindrome(input)
#
# // This algorithm verifies if an input (string or a number) reads the same backwward as forward.
# 
# {
#     word := str(input)
#     l := len(word);
#     for x := 0 to l // 2 do
#     {
#         if (word[x] =/ word[l - 1 -x]) then
#         {
#             return True;
#         }
#     }
#     return False;
# }

def CheckPalindrome(input):
    word = str(input)
    l = len(word)
    for x in range(l // 2):
        if word[x] != word[l - 1 - x]:
            return False

    return True

print(CheckPalindrome('radar'))
print(CheckPalindrome('boat'))
print(CheckPalindrome(123321))
print(CheckPalindrome(123))
