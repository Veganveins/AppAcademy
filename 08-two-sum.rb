# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  special = []
  count = 0
  x = nums.length
  i = 0
  j = 1
  while (i < x) && (i + j) < x
  
    if nums[i] + nums[i + j] == 0
      special[count] = i
      count += 1
      special[count] = i + j
      count += 1
        if i + j + 1 < x
          j = j + 1
        else 
          i += 1
          j = 1
        end
      
    elsif nums[i] + nums[i+j] != 0 && (i + j + 1) < x
      j = j + 1
    
    elsif nums[i] + nums[i+j] != 0 && (i + j + 1) >= x && (i + 2) < x
      i += 1
      j = 1
    
    elsif i+2 == x && special.length != 0
      i += 3 
    elsif i+2 == x && special.length == 0
        return nil
    end 
  end 
  return special
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(two_sum([5,-5,1,2,-1,-2]))


puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
