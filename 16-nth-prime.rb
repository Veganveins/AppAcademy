# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def prime(number)
    i = 2
    if number == 2
        return true
    elsif number <= 1
        return false
    elsif number % 2 == 0
        return false
    end
    
    while i < number
        if number % i == 0
            bool = false
            break
        elsif number % i != 0
            i += 1
        end
        bool = true
    end
    return bool
end

def nth_prime(n)
  if n==2
    return 3
  end
  arr = []
  pos = 0
  i = 1
  while pos < n
    if prime(i)
      arr[pos] = i
      pos += 1
      i += 1
    end 
    i += 1
  end 
  return arr[n-2]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(nth_prime(5))

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
