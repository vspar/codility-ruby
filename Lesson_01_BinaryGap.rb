class BinaryGap

  def self.solution(n)
    binary = n.to_s(2)
    binary.gsub!(/0+$/, '')
    result = binary.scan(/0+/).map(&:length).max.to_i
    result = 0 if result.nil?
    return result
  end

end

result = BinaryGap.solution(657876)
puts "#{result}, pass: #{result == 5}"

result = BinaryGap.solution(8)
puts "#{result}, pass: #{result == 0}"

result = BinaryGap.solution(129)
puts "#{result}, pass: #{result == 6}"

result = BinaryGap.solution(2147483647)
puts "#{result}, pass: #{result == 0}"

result = BinaryGap.solution(2147483646)
puts "#{result}, pass: #{result == 0}"

result = BinaryGap.solution(462876534)
puts "#{result}, pass: #{result == 2}"

result = BinaryGap.solution(1041)
puts "#{result}, pass: #{result == 5}"

# TESTED AND PASSED ON Codility

