# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  word = str.split("")
  list = []
  
  if word.length > 1
    word.each_index do |i|
      if (word[i] != word[i+1] && word[i] != word[i-1])
        list << word[i]
      end
    end
  else 
    list[0] = word[0]
  end
  return list[0]
end
