# If the string length is one, that is the unique character. If that first character in the string does not match the rest, then that is the first unique character.
# If the first character of the string is not unique, loop through the string while the string is longer than two characters.
# If none of the other conditions have met, if the first character in the string is not equal to the last character in the string, return the last character of the string.

def find_first_non_repeated_letter(str)
	x = 1
	if str.length == 1
	return str
	end
	if str[x] != str[0]
	return str[0]
	end
  while x < str.length - 2
  if str[x - 1] != str[x] and str[x+1] != str[x]
		return str[x]
  end
	x += 1  
  end
  if str[str.length-1] != str[x] 
  	return str[str.length-1]
  end
end