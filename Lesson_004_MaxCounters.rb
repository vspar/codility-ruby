class MaxCounters

  def self.solution(n, a)
    counters = Array.new(n).fill(0)
    prev_max = 0
    max = 0

    (0..a.size-1).each do |i|
      if a[i] > n
        prev_max = max
      else
        ci = a[i]-1
        counters[ci] = prev_max if counters[ci] < prev_max
        counters[ci] += 1
        max = counters[ci] if counters[ci] > max
      end
    end

    (0..n-1).each do |ci|
      counters[ci] = prev_max if counters[ci] < prev_max
    end

    return counters
  end

end

result = MaxCounters.solution(5, [3, 4, 4])
puts "#{result}, pass: #{result == [0, 0, 1, 2, 0]}"

result = MaxCounters.solution(5, [3, 4, 4, 6])
puts "#{result}, pass: #{result == [2, 2, 2, 2, 2]}"

result = MaxCounters.solution(5, [3, 4, 4, 6, 1, 4, 4])
puts "#{result}, pass: #{result == [3, 2, 2, 4, 2]}"

result = MaxCounters.solution(3, [1, 1, 1, 1, 1])
puts "#{result}, pass: #{result == [5, 0, 0]}"

# TESTED AND PASSED ON Codility
