# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)



#update: going down this path now. gotta put in a conditional and break the loop once the first non-repeating letter is found.

def find_first_non_repeated_letter(str) 
   str = str.chars
   str.select { |char| str.count(char) <= 1 }


end true


