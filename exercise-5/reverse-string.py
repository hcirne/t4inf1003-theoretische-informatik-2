def reverse_string(text): 
    if text == '':
        return

    stack = []
    reversed = []

    for l in text:
        stack.append(l)

    print(stack)

    while stack:
        reversed += stack.pop()

    return reversed

print(reverse_string('hello'))
print(reverse_string('World'))
print(reverse_string('!'))
print(reverse_string(''))
