# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    ary = str.chars
    x = 0
    
    while x <= ary.length
        if ary.length <= 1
            return ary[x]
        elsif ary[x] == ary[x + 1] || ary[x + 1] == ary[x + 2]
            x += 1
        else 
            return ary[x + 1]
        end
    end
end
#I know there has to be an simpler way to do this but I wanted to find a solution without being too specific in my research for more of a challange.
#My first attempt, I realized, didn't work for arrays with a single element, so I modified it.