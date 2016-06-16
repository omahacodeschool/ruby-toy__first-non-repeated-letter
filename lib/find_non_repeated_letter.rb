# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)

arr = str.split("")
if arr[0] != arr[1] then return arr[0]
end
i = 0
while i < arr.length
if arr[i] != arr[i + 1] && arr[i + 1] != arr[i + 2]
  return arr[i + 1]
elsif arr[-2] != arr[-1]
  return arr[-1]
else
  return nil
end
end
end