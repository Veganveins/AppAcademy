# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num = num.to_s
  x = num.length
  i = 0
  if num[i].to_i % 2 == 1 && i == 0
      num[i] = num[i].to_s
      num[i] = num[i] + "-" 
      x = num.length
      i += 1
  elsif num[i].to_i % 2 == 0
    i += 1
  end 
  
  while i < x - 1
    if num[i].to_i % 2 == 1  && num[i-1].to_s != "-" && num[i+1].to_s != "-"
      num[i] = num[i].to_s
      num[i] = "-" +num[i] + "-"
      x = num.length
      i += 2
    elsif num[i].to_i % 2 == 1  && num[i-1].to_s == "-" && num[i+1].to_s != "-"
      num[i] = num[i].to_s
      num[i] = num[i] + "-"
      x = num.length
      i += 1
      
    elsif num[i].to_i % 2 == 0
      i += 1
    end 
  end
  
  if i < x
    if num[i].to_i % 2 == 1 && num[i-1].to_s != "-"
      num[i] = num[i].to_s
      num[i] = "-" + num[i] 
    end 
  end
  return num
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(dasherize_number(65424143340054))

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
