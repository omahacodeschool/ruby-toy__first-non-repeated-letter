# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)

def find_first_non_repeated_letter(str)
  #I'm guessing that this will require splitting the string into an array.
  # One method I can imagine involves removing all instances where one element is equal to the next, and then combine the new string with all matches removed (with pop?)  Would it be a problem if the pop removes the first element, and then the next will not be able to match to the first since it is popped?
  # Can't use unique since it removes all repeat elements...
  # First will return the first element in the array, that will probably be helpful?
  if str.length == 1
    return str
  #omg I spent way too much time trying to solve the solution for the str with one element.  this "if else" option was weird, i really did not think it would work.
  else
    x = 0
    while x < str.length
      if str[x] != str[x+1] && str[x] != str[x-1]
  #The above will figure out if the element is identical to the next element, but that won't necessarily give the first...
      nonrepeat = str[x]
      return nonrepeat
      else 
        x = x + 1
      end 
    end
  end
end
# So, this does pass all tests, but i don't know if it would work for all strings. It works for all tests, but would it work for all strings?