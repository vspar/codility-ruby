class TapeEquilibrium

  def self.solution(a)
    left = 0
    right = a.reduce(:+)
    diffs = []

    (1..(a.size - 1)).each do |i|
      left += a[i-1]
      right -= a[i-1]
      diffs << (left - right).abs
    end

    return diffs.min
  end

end

result = TapeEquilibrium.solution([-1000, 1000])
puts "#{result}, pass: #{result == 2000}"

result = TapeEquilibrium.solution([0, 2000])
puts "#{result}, pass: #{result == 2000}"

result = TapeEquilibrium.solution([3, 1])
puts "#{result}, pass: #{result == 2}"

result = TapeEquilibrium.solution([3, 1, 2, 4, 3])
puts "#{result}, pass: #{result == 1}"

result = TapeEquilibrium.solution([-3, 1, 2, 4, 2])
puts "#{result}, pass: #{result == 2}"

result = TapeEquilibrium.solution([-3, -1, -2, -4, -3])
puts "#{result}, pass: #{result == 1}"

# TESTED AND PASSED ON Codility
