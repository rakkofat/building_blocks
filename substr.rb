# http://www.theodinproject.com/ruby-programming/building-blocks
# Project 3: Substrings
# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second
# argument. It should return a hash listing each substring (case
# insensitive) that was found in the original string and how many times it
# was found.


def substrings(string, dictionary)
  subs = {}
  dictionary.each do |word|
    count = string.downcase.scan(word).count
    subs[word] = count unless count < 1
  end
  subs
end
