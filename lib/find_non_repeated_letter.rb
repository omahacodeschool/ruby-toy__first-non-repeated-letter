# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def how_many_times_is_repeated(str)
  #create hash to store key and value
  h={}
  #split up the string into individual characters and put it in an array
  arr = str.split("")
  #for each character in the array, if it does not have a previous occurence in the 'h' hash, add it to the hash with a value of '1'
  arr.each do |n|
    if h.has_key?(n) == false
      h[n]=1
  #if it does have a previous occurence in the 'h' hash, add '1' to the previously occuring value of that key
    elsif h.has_key?(n) == true
      h[n]= h[n] +1
    end
    #return the completed hash
    return h
  end
end

def find_first_non_repeated_letter(str)
    #assign the above block inside this block
    h = how_many_times_is_repeated(str)
    #return the first hash hey with a value of '1' from the hash created by the 'how many times is repeated' method
    #first_non_repeat = h.index(1)
    #return first_non_repeat
    return h.key(1)
end