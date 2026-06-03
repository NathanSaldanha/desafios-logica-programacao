def rob(nums)
    one_before = 0
    two_before = 0

    nums.each { |n|
      temp = [n+two_before, one_before].max
      two_before = one_before
      one_before = temp
    }
    return one_before
end

arr = [2,7,9,3,1]

puts rob(arr)
