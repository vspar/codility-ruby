class CyclicRotation

  def self.solution(a, k)
    return a.rotate(-k)
  end

end

result = CyclicRotation.solution([], 1)
puts "#{result}, pass: #{result == []}"

result = CyclicRotation.solution([9], 1)
puts "#{result}, pass: #{result == [9]}"

result = CyclicRotation.solution([1, 2, 3, 4, 5, 6, 7, 8], 3)
puts "#{result}, pass: #{result == [6, 7, 8, 1, 2, 3, 4, 5]}"

# TESTED AND PASSED ON Codility

