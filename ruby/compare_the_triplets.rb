def compareTriplets(a, b)
  alice = 0
  bob = 0

  3.times {|i|
    if a[i] > b[i]
      alice += 1
    elsif b[i] > a[i]
      bob += 1
    end
  }
  return [alice, bob]
end

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b
puts result.join " "

