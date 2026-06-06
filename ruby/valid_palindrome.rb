def is_palindrome(s)
    left = 0
    right = s.length - 1
    s_lowcase = s.downcase

    while left < right
        if not s_lowcase[left].match?(/\A[[:alnum:]]+\z/)
            puts "não valido left: #{s_lowcase[left]}"
            left += 1
            puts
        elsif not s_lowcase[right].match?(/\A[[:alnum:]]+\z/)
            puts "não valido right: #{s_lowcase[right]}" 
            right -= 1
            puts
        elsif s_lowcase[left] == s_lowcase[right]
            puts "valido left: #{s_lowcase[left]} | valido right: #{s_lowcase[right]}" 
            left += 1
            right -=1
            puts
        else
            return false
        end
    end

    return true
end

s = "A man, a plan, a canal: Panama"

puts is_palindrome s.downcase
