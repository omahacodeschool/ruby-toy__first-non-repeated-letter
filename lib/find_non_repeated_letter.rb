# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  str = str.split("")
  newarr = []
  str.each_index do |x|
	  if str[x] != str[x-1] && str[x] != str[x+1]
	  	newarr.push(str[x])
	  elsif str.length == 1
	  	newarr.push(str[x])
	  end
	end
	return newarr[0]
end
#A nonrepeated letter will be unique compared to both characters around it. I began by converting the inputted string
#to an array so it would be easier to manipulate. I wrote an if statement that compares each element in the array
#to the elements next to it. I used the .each_index method to increment and decrement the indices of the elements
#in the if statement. The unique elements are then pushed to a new array. I had to write an elsif to catch an array
#with only a single element, since it wasn't pushing them to the new array. My guess is because a single-element array 
#doesn't have surrounding elements for the if statement to compare it to. The function ends by returning the
#first element of the new array, which would be the first unique element found.