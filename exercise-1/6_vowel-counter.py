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
