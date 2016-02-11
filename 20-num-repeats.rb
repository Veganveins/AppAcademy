# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    count = 0
    x = string.length
    arr = []
    double = []
    pos2 = 0
    pos = 0
    i = 0
    while i < x
        if !arr.include?(string[i])
            arr[pos] = string[i]
            pos += 1
            i += 1
        elsif !double.include?(string[i])
            double[pos2] = string[i]
            pos2 += 1
            i += 1
        elsif double.include?(string[i]) && arr.include?(string[i])
            i += 1
        end
    end
    return double.length
            
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(num_repeats('abcabdabeabf'))

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
