# Pseudocode
# 
# Algoritm VowelCounter(word)
#
# // This function iterates through a string and counts the frequency of each vowel.
#
# {
#     a := 0; 
#     e := 0;
#     i := 0;
#     o := 0;
#     u := 0;
# 
#     for letter := 0 to (length of word) do
#     {
#         if (word[letter] = 'a') then
#         {
#             a = a + 1;
#         }
#         if (word[letter] = 'e') then
#         {
#             e = e + 1;
#         }
#         if (word[letter] = 'i') then
#         {
#             i = i + 1;
#         }
#         if (word[letter] = 'o') then
#         {
#             o = o + 1;
#         }
#         if (word[letter] = 'u') then
#         {
#             u = u + 1;
#         }
#     }
#     write('Frequency of each vowel in:', word)
#     write('A:', a)
#     write('E:', e)
#     write('I:', i)
#     write('O:', o)
#     write('U:', u)
# }

def VowelCounter(word):
    a = 0
    e = 0
    i = 0
    o = 0
    u = 0
    
    for letter in word:
        if (letter == 'a'):
            a += 1
        elif (letter == 'e'):
            e += 1
        elif (letter == 'i'):
            i += 1
        elif (letter == 'o'):
            o += 1
        elif (letter == 'u'):
            u += 1

    print('Frequency of each vowel in:', word)
    print('A:', a)
    print('E:', e)
    print('I:', i)
    print('O:', o)
    print('U:', u)

VowelCounter("pineapple")
