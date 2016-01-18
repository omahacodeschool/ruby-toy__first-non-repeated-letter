# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
is_front_repeat = false
is_back_repeat = false
for i in 0...str.length
  if i > 0 
    if str[i] != str[i+1]
        is_front_repeat = false
        if str[i] != str[i-1]
            is_back_repeat = false
            break
        else
            is_back_repeat = true
        end
    else
      is_front_repeat = true
      end
  elsif i == 0
      if str[i] != str[i+1]
        is_front_repeat = false
        is_back_repeat = false
        break
      else
        is_front_repeat = true
        is_back_repeat = false
      end    
  else
      is_front_repeat = true
      is_back_repeat = true
  end 
end
if  is_back_repeat
  return nil
elsif is_front_repeat
  return nil
else
  return str[i]
end
    
end
   
