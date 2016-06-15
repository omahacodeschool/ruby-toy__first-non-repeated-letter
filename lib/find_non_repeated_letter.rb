# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  #Create array from string.
  arr1 = str.split("")
  
  #Create new hash with default value of zero.
  myhash = Hash.new 0
  
  #Loop through array and count instances.
  arr1.each do |index|
  	myhash[index] += 1
  end
  
  #Use if-then code to return nil if no non-repeats, else return the first non-repeating element.
  if myhash.values.min != 1
  	nil
  else
  	first_occur = myhash.key(myhash.values.min)
  end

end
