# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
array = str.split(//)
counts = Hash.new 0  #creates new hash 

array.each do |word|
  counts[word] += 1   #count the words in array and put in hash with key = letter and value= the character's frequency
end
counts.delete_if{|key, value| value >= 2} #delete key, value pair if it occurs more than once
counts.keys[0] #if there are more than 1 unique character need to return the first one in the string

end

find_first_non_repeated_letter("aaabbbc")
find_first_non_repeated_letter("abbccddee")
find_first_non_repeated_letter("aaabccd")
find_first_non_repeated_letter("abcde")
find_first_non_repeated_letter("aabbcc")