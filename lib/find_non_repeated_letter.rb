# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    stingray = str.split(//)
    stingray.detect{ |i| stingray.count(i) == 1 }
end
find_first_non_repeated_letter("aaabbbcddd")
#I spent a lot of time trying to find a method to find and delete duplicate characters, and
#in reading about enumerators, I set up a loop using detect/find to search for characters that
#appear more than once in a string, then I thought about the original objective, and instead
#of searching for characters that appear more than once, this looks for an instance that only
#occurs once, which happneds to be the first one, and displays it, if there arent any single 
#instance characters, it returns nil