# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.
def biggest(arr)
  x = arr.length
  i = 1
  big = arr[0]
  while i < x
    if big <= arr[i]
      big = arr[i]
      i += 1
    elsif big > arr[i]
      i += 1
    end 
  end
  return big
end

def third_greatest(nums)
  
  
  first = biggest(nums)
  nums.delete(first)

  second = biggest(nums)
  nums.delete(second)
  
  third = biggest(nums)
  return third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)

