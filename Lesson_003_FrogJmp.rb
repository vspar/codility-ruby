class FrogJmp

  def self.solution(x, y, d)
    return ((y-x).to_f/d.to_f).ceil
  end

end

result = FrogJmp.solution(10, 85, 30)
puts "#{result}, pass: #{result == 3}"

result = FrogJmp.solution(5, 105, 3)
puts "#{result}, pass: #{result == 34}"

result = FrogJmp.solution(10, 1000000000, 60)
puts "#{result}, pass: #{result == 16666667}"

# TESTED AND PASSED ON Codility
