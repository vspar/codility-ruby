class FrogRiverOne

  def self.solution(x, a)
    completed = Array.new(x+1).fill(0)

    a.each_with_index do |v, i|
      if completed[v] == 0
        completed[v] = 1
        x -= 1
      end

      return i if x == 0
    end

    return -1
  end

end

result = FrogRiverOne.solution(3, [1, 2, 3])
puts "#{result}, pass: #{result == 2}"

result = FrogRiverOne.solution(3, [1, 3, 1, 3, 2, 1, 3])
puts "#{result}, pass: #{result == 4}"

result = FrogRiverOne.solution(2, [1, 1, 1])
puts "#{result}, pass: #{result == -1}"

result = FrogRiverOne.solution(5, [1, 3, 1, 4, 2, 3, 5, 4, 4, 5])
puts "#{result}, pass: #{result == 6}"

result = FrogRiverOne.solution(3, [1, 3, 1, 2, 3])
puts "#{result}, pass: #{result == 3}"

result = FrogRiverOne.solution(3, [1, 3])
puts "#{result}, pass: #{result == -1}"

result = FrogRiverOne.solution(1, [1])
puts "#{result}, pass: #{result == 0}"

result = FrogRiverOne.solution(5, [1, 3, 1, 4, 5, 2, 3, 2, 4, 4, 3, 5, 1, 3, ])
puts "#{result}, pass: #{result == 5}"

result = FrogRiverOne.solution(2, [1])
puts "#{result}, pass: #{result == -1}"

# TESTED AND PASSED ON Codility

