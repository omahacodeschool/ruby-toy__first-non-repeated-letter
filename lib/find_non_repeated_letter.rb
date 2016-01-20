# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_non_repeated_letter(str)
    repeated = []
    ray = str.split(//)
until ray.empty?
    repeated << ray.uniq.pop
  end
end
find_non_repeated_letter("aaabbbcddd")
#I am trying to use the .uniq command to 'pop' all the repeated letters into an empty array
#then I want to somehow cross reference this list of letters with the original string, and somehow delete
#the letters that appear in both