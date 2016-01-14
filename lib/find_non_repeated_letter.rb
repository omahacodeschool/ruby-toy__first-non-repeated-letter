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
  
  answer = ""
  
  array.each_index do |i|
    if i == 0 && array[i] != array[(i+1)]
      answer = array[i]
      break
    elsif i == final && array[i] != array[(i-1)]
      answer = array[i]
      break
    elsif array[i] != array[(i-1)] && array[i] != array[(i+1)]
      answer = array [i]
      break
    else
      answer = nil
    end 
  end
  
  return answer
end

