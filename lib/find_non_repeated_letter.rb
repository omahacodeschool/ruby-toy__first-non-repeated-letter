# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


#Am I thinking about this correctly?

def find_first_non_repeated_letter(str)
    str = str.chars
    
#somehow group the chars array into array like below....group_by????

a = ['aaa', 'bbb', 'c', 'ddd']
max = 1
a.each do |str| 
    if str.length <= max
        break puts str
    else puts nil
    end
end

end

#i also have been fidiling with somthing like
#str.scan(/[a-z]{1}/)
#but if I am reading that correctly that means 1 of any character a-z so... the whole string returns. 
