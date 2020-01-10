class OddOccurrencesInArray

  def self.solution(a)
    return a.reduce(:^)
  end

end

result = OddOccurrencesInArray.solution([9])
puts "#{result}, pass: #{result == 9}"

result = OddOccurrencesInArray.solution([9, 3, 9, 3, 9, 7, 9])
puts "#{result}, pass: #{result == 7}"

result = OddOccurrencesInArray.solution([7, 3, 9, 3, 9, 9, 9])
puts "#{result}, pass: #{result == 7}"

result = OddOccurrencesInArray.solution([9, 3, 9, 3, 9, 9, 9])
puts "#{result}, pass: #{result == 9}"

# TESTED AND PASSED ON Codility
