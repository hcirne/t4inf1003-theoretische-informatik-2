def CheckPalindrome(word):
	l = len(word)
	for x in range(l // 2):
		if word[x] != word[l - 1 - x]:
			return False
	return True

print(CheckPalindrome('radar'))
print(CheckPalindrome('boat'))
