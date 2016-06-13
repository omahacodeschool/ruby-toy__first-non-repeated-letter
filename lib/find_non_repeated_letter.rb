# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  
  x = 0
  y = 1
  
  
  while x < str.length
    
  
    if str[x] == str[y]
      
      x += 1
      y += 1
      
    elsif 1 == str.length
      return str[x]
      
    elsif str[y] == nil
      return nil
      
    elsif str[y] != str[y + 1]
      return str[y]
    end
   
  end
  
  
end
