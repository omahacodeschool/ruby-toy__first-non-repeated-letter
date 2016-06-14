# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  
  new_array = str.chars.to_a
  new_hash = {}
  
  new_array.each do |x|
    new_hash[x] = 0 if new_hash[x].nil?
    new_hash[x] = new_hash[x] + 1
  end
  
  first_nonrepeat = new_hash.key(1)
  
  return first_nonrepeat
end
