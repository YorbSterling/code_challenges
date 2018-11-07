# Given a string and a set of characters, return the shortest substring containing all the characters in the set.
# For example, given the string "figehaeci" and the set of characters {a, e, i}, you should return "aeci".
# If there is no substring containing all the characters in the set, return null.

def min_substring(string, chars)
  chars.each { |c| return unless string.include? c }
  strings = [string]

  strings << substring(string[1..string.length - 1], chars)
  strings << substring(string[0..string.length - 2], chars)
  strings.compact!

  strings.size.times do |i|
    position = strings[i].length < strings[position].length ? i : position
  end

  strings[position]
end
