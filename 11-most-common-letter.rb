# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def getletters(string)
  arr = []
  pos = 0
  i = 0
  x = string.length
  while i < x
    if arr.include?(string[i])
      i += 1
    elsif !arr.include?(string[i])
      arr[pos] = string[i]
      i += 1
      pos += 1
    end
  end
  return arr
end

def most_common_letter(string)
  list = getletters(string)
  y = list.length
  x = string.length
  i = 0
  j = 0
  count = 0
  candidate = list[0].to_s
  best = 0
  info = [candidate, best]
  while i < y
    if list[i] == string[j] && j < x 
    count += 1
    j += 1
  
    elsif (list[i] != string[j]) && j < x
      j += 1
    
    elsif j >= x && i < y
      if count > best
        best = count
        count = 0
        candidate = list[i]
        info = [candidate, best]
        j = 0
        i += 1
      elsif count <= best
        count = 0
        j = 0
        i += 1
      end
    end
  end
  
  return info
end 

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
