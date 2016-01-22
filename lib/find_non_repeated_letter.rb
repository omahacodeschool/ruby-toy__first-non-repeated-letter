# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    a = str #Interestingly, the solution for this matched up fairly closely with
            #the one I came up with for the most common integer problem.  This 
            #sets the a variable equal to whatever string is passed as argument.
    arr = a.split("") #This converts that string to an array.
    counts = Hash.new(0) #This creates an empty hash named "counts".
    arr.each do |x| #This uses an each loop to loop through the array.
        counts[x] += 1 #As it's looping through the array, it counts the instances
                       #of particular items, i,e, it counts the number of times a
                       #value is repeated. It also maintains the order that they 
                       #appear in in the hash.
    end
    counts.key(1) #This coughs up the first instance in the "counts" hash that occurs
                  #only once, which is what we were looking for.
end
find_first_non_repeated_letter(aabccd)

