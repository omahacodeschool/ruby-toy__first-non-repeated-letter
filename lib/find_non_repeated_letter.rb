# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)

def find_first_non_repeated_letter(str)
    array = str.to_s.split("")
    i=0
    if array.length==1 then return array[i]
    end
    while i<array.length
        if array[i]==array[i+1] || array[i]==array[i-1]
        else return array[i]
        end
    i= i+1
    end
end
