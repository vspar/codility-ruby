class CountDiv

  def self.solution(a, b, k)
    first = a

    (a..a+k).each do |i|
      first = i
      break if i % k == 0
    end

    return ((b-first)/k).floor + 1
  end

end


result = CountDiv.solution(5, 5, 2)
puts "#{result}, pass: #{result == 0}"

result = CountDiv.solution(6, 11, 2)
puts "#{result}, pass: #{result == 3}"

result = CountDiv.solution(6, 11, 3)
puts "#{result}, pass: #{result == 2}"

result = CountDiv.solution(6, 11, 4)
puts "#{result}, pass: #{result == 1}"

result = CountDiv.solution(4, 16, 4)
puts "#{result}, pass: #{result == 4}"

result = CountDiv.solution(3, 16, 4)
puts "#{result}, pass: #{result == 4}"

result = CountDiv.solution(0, 2000000000, 2)
puts "#{result}, pass: #{result == 1000000001}"

# TESTED AND PASSED ON Codility
