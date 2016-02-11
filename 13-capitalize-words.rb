# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
  x = string.length
  i = 0
  first = string[0].upcase
  string[0] = first
  while i<x
    if string[i]==" "
      correct = string[i+1]
      correct = correct.upcase
      string[i+1] = correct
      i += 1
    end
    i += 1
  
  end
  return string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(capitalize_words("this is 1 sentence"))

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
