class PassingCars

  def self.solution(a)
    passing = 0
    going_west = 0

    (a.size-1).downto(0) do |i|
      if a[i] == 0
        passing += going_west
      else
        going_west += 1
      end

      return -1 if passing > 1000000000
    end

    return passing
  end

  #def self.solution(a)
  #  result = 0
  #  len = a.size
  #  passing = a.reduce(:+)
  #  passed = 0
  #
  #  (0..len-1).each do |i|
  #    if a[i] == 0
  #      result += passing - passed
  #    else
  #      passed += 1
  #    end
  #
  #    return -1 if result > 1000000000
  #  end
  #
  #  return result
  #end

end

result = PassingCars.solution([0, 1, 0, 1, 1])
puts "#{result}, pass: #{result == 5}"

result = PassingCars.solution([1, 1, 1, 1, 1])
puts "#{result}, pass: #{result == 0}"

result = PassingCars.solution([0, 0, 0, 0, 0])
puts "#{result}, pass: #{result == 0}"

result = PassingCars.solution([0, 1, 0, 1, 0, 0, 1, 1, 0, 0])
puts "#{result}, pass: #{result == 11}"

# TESTED AND PASSED ON Codility (both solutions)

