# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    new_array=[]
    new_array=str.split""
    (1..(new_array.length-1)).each do |i|
        if new_array[0] != new_array[1]
            return new_array[0]
        elsif new_array[i] != new_array[i-1] && new_array[i] != new_array[i+1]
            return new_array[i]
        elsif new_array.last != new_array[new_array.length-1]
            return new_array.last
        else
            return nil
        end
    end
end
