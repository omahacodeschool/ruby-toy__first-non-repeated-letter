# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def how_many_times_is_repeated(str)
  arr = str.split("")
  arr.each do |n|
    if h.has_key?(n) == false
      h[n]=1
    elsif h.has_key?(n) == true
      h[n]= h[n] +1
    end
end

def find_first_non_repeated_letter(str)
    a = how_many_times_is_repeated(str)
    #next line should create an array that stores the hash keys with a value of '1' from the hash created by the 'how many times is repeated' method
    b = [a.hash.index(1)]
    returns b(0)
end