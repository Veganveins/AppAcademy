# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  words = sentence.split.length
  longest = sentence.split[0].length
  best = sentence.split[0]
  i = 1
  while i < words
    if sentence.split[i].length > longest 
      best = sentence.split[i]
      longest = sentence.split[i].length
      i = i + 1
    else
      i = i + 1
    end
  end
  return best
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
