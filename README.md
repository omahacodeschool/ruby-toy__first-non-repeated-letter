# Ruby-Toy
## Find the First Non-Repeated Letter

In this exercise, you'll be given a string with many repeated characters, like
`"aaaaaaabbbbbbaaaa"` (for example), wherein a repeated character is any character followed by
itself one or more times, with nothing in-between.

Thus, `aaaa` has `"a"` as a repeated character, whereas `aba` does not have a repeated character
(even though the `a` appears more than once).

Your task is to write a method (complete with an algorithm!) that finds the first non-repeated
character in a string, and then returns that character. Here are some examples:

+ Given `"aaabbbc"` (where `"c"` is the first non-repeated character), your method should return `"c"`
+ Given `"abbccddee"` (where `"a"` is your first non-repeated character), your method should return `"a"`
+ Given `"aaabcccd"` (where `"b"` and `"d"` are both repeated, but `"b"` comes first), your
  method should return `"b"`
+ Given `"abcde"` (where no characters are repeated), your method should return `"a"` (since
  it's first)
+ Given `"aabbcc"` (where there are no non-repeated characters), your method should return `nil`
