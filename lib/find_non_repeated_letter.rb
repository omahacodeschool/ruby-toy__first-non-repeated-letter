# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    ary = str.split("")
    ary.select { |e| ary.count(e) == 1 }.uniq.first
end

=begin
As per your email, I am submitting this even though it's failing the test_with_two_unique test.
I worked on this one for quite awhile. I'm finding again and again that these solutions end up looking pretty neat and even terse by the time I'm
done. That's the cool thing about Ruby (and probably most other languages), there's a method out there for just about everything you could want to do.
=end