# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
	x = str.split(//) #start by splitting up the characters into single-letter substrings
	h = Hash.new(0) #here I'm going to create a hash that matches the key (the letters) and the value (number of times that letter appears)
	x.each{ |i| h[i] += 1 } #this each loop will populate the hash by increasing the value of each key when it occurs in the array
	return h.key(1) #this will return the first key for which the value is '1'
end