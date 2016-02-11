# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
#Difficulty: easy.

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
  
 

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
) 






#arr = string.split
  #item = arr.length
  #puts(item)
  #word = " "
  #while item > -1
   # word = word + arr.pop.to_s
    #item = item - 1
  #end
  #puts(word)

  
  #times = string.length
  #while times>-1
  #back = back + string[times].to_s
  #times = times-1
  #end
  #puts(back)
