class MissingInteger

  def self.solution(a)
    reduced = a.uniq.sort
    complete = (1..a.size+1).to_a
    return (complete - reduced).first
  end

end

result = MissingInteger.solution([1, 3, 6, 4, 1, 2])
puts "#{result}, pass: #{result == 5}"

result = MissingInteger.solution([1, 2, 3])
puts "#{result}, pass: #{result == 4}"

result = MissingInteger.solution([-1, -3])
puts "#{result}, pass: #{result == 1}"

# TESTED AND PASSED ON Codility
