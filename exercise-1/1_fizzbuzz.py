def FizzBuzz():
    i = 0
    while i < 100:
        if ((i % 3 == 0) and (i % 5 == 0)):
            print(i, 'FizzBuzz')
        elif (i % 3 == 0):
            print(i, 'Fizz')
        elif (i % 5 == 0):
            print(i, 'Buzz')
        i += 1

FizzBuzz()
