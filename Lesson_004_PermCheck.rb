class PermCheck

  def self.solution(a)
    complete = (1..a.length).to_a
    return 1 if (complete - a).empty?
    return 0
  end

end

result = PermCheck.solution([4, 1, 3, 2])
puts "#{result}, pass: #{result == 1}"

result = PermCheck.solution([4, 1, 3])
puts "#{result}, pass: #{result == 0}"

# TESTED AND PASSED ON Codility

