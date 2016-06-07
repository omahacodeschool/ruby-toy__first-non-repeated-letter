# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  str = str.split("")
  newarr = []
  str.each_index do |x|
	  if str[x] != str[x-1] && str[x] != str[x+1]
	  	newarr.push(str[x])
	  elsif str.length == 1
	  	newarr.push(str[x])
	  end
	end
	return newarr[0]
end