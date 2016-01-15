# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter (str)
  n = Hash.new(0)
  return_array = []
  str.split(//).each do |i|
    n[i] += 1
  end
  
  n.each_pair { |k,v| 
    if v == 1
      return_array << k
    end
  }
  
  return return_array [0]
end

#(I recycled some of my code from the last exercise here. It seems to solve the problem nicely!)