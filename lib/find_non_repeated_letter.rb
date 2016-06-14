# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  i = 0

  if str[i] != str[i+1]
	  return str[0]
  else
	  while i < str.length
		  if str[i] == str[i+1]
			  i += 1
		  elsif str[i+1] == str[i+2]
			  i += 1
		  else
			  return str[i+1]
		  end
	  end
  end
  return nil
end
