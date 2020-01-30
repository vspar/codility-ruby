class MaxProductOfThree

  def self.solution(a)
    # negative numbers makes this tricky because of multiplication rules, e.g. (-5 * -5) = +25
    a.sort!
    len = a.size
    # compare products: top 3 numbers, and top number and bottom 2 numbers (which may be negative)
    p_pos = a[len-1] * a[len-2] * a[len-3]
    p_neg = a[len-1] * a[0] * a[1] # a pair of -ve numbers may make a larger product
    return p_pos > p_neg ? p_pos : p_neg
  end

end


result = MaxProductOfThree.solution([-3, 1, 2, -2, 5, 6])
puts "#{result}, pass: #{result == 60}"

result = MaxProductOfThree.solution([-5, 5, -5, 4])
puts "#{result}, pass: #{result == 125}"

result = MaxProductOfThree.solution([-4, -6, 3, 4, 5])
puts "#{result}, pass: #{result == 120}"

result = MaxProductOfThree.solution([4, 7, 3, 2, 1, -3, -5])
puts "#{result}, pass: #{result == 105}"

# TESTED AND PASSED ON Codility
