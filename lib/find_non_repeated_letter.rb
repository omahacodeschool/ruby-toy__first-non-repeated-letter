# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    #create a variable to add too
    idx = 0
    #continue running through the block until condition is met or the index reaches the string length
    while idx < str.length
        #check if each character is different than the next character
        if str[idx] != str[idx+1]
            #check if each character is different than the previous character or if there is one character
            if str[idx] != str[idx-1] || idx == 0
                #return the character if any
                return str[idx]
            end
        end
        #increment the index by one after each execution of the block
        idx += 1
    end
    #if nothing was returned after the loop return nil
    return nil
end
