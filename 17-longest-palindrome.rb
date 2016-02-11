# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  start = 0
  length = 1
  x = string.length
  candidate = string[0]
  if palindrome?(string)
    return string
  end
  while start + length <= x 
    new_candidate = string.slice(start,length)
    if palindrome?(new_candidate)
      if new_candidate.length > candidate.length
        candidate = new_candidate
        length +=1
        if length + start >= x
          start += 1
          length = 1
        end
      end
        length += 1
        if length + start >= x
          start += 1
          length = 1
        end
    elsif !palindrome?(new_candidate) 
      length +=1
      if length + start > x
        start += 1
        length = 1
      end
    end
  end
  return candidate
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(longest_palindrome("xyyyyyyyyyyyxeffe"))

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
