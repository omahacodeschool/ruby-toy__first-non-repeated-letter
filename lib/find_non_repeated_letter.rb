# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  
  array = str.chars
  
  final = array.length - 1
  
  if array[0] != array[1]
    answer = array[0]
  else for i in 1..(final-1)
      if array[i] != array[(i-1)] && array[i] != array[(i+1)]
        answer = array[i]
        break
      elsif array[final] != array[(final-1)]
        answer = array[final]
      else 
        answer = nil
      end
    end
  end
  
  return answer
end

