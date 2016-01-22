# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
array=str.split""
array_triples=[]
moving_on_array=[]
  if array[0]!=array[1]
    array[0]
  else
    array[1..-1].each_cons(3) { |a| array_triples << a }
    moving_on_array=array_triples.select {|x| x[0]!=x[1] && x[1]!=x[2]}
      if moving_on_array.empty? == false
         moving_on_array[0][1]
      elsif array[-2]!=array[-1]
         array[-1]
      end
  end
end