# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  # Begin at the beginning.
  i = 0
  
  while i < str.length
  
    # Is the next character different or nonexistent?
  	if str[i] != str[i+1]
  
  	  # Is this the first character, or is the previous character different?
  		if i == 0 || str[i] != str[i-1]
  
  		  # If so, this character wasn't repeated.
  		  # Return the first time this happens.
  			return str[i]
  		end
  	end
  
  	# If we're still here, go to the next character.
    i += 1
  end
  
  # If we got through that whole loop, everything repeats.
  return nil
end
