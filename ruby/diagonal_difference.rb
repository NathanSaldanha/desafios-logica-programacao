def diagonalDifference(arr)
  count_left = 0
  count_right = arr.length - 1

  sum_left = 0
  sum_right = 0


  arr.each {|rate|
    sum_left += rate[count_left]
    count_left +=1

    sum_right += rate[count_right]
    count_right -=1
  }
  return (sum_left-sum_right).abs
end

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

puts result
