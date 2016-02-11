# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.
def reverse(string)
  length = string.length - 1 #find out how long the string is
  backwards = string[length].to_s
  length = length - 1
  while length > -1 #should print the last letter of the word
    backwards = backwards + string[length].to_s
    length = length - 1
  end 
  return backwards.to_s  #need the return statement rather than  the puts command...
end  
  

def palindrome?(string)
    back = reverse(string)
    if back == string
        return true
    else
        return false
    end
end

def palindrome(string)
     x = string.length
     i = 0
        while i < x
            if string[i] != string[x - 1 - i]
                return false
            end
            i += 1
          return true 
        end             
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.



puts('palindrome?("abc") == false: ' + (palindrome('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome('z') == true).to_s)


        