def oddballsum(arr)
    x = arr.length
    i = 0
    sum = 0
    while i < x
        if arr[i] % 2 == 1
            sum = sum + arr[i]
            i +=1
        elsif arr[i] % 2 == 0
            i += 1
        end
    end
    return sum
end

puts(oddballsum([1,2,3,4,5]))
puts(oddballsum([0,6,4,4]))
puts(oddballsum([1,2,1]))
