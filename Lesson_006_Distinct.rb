class Distinct

  def self.solution(a)
    return a.uniq.size
  end

end


result = Distinct.solution([2, 1, 1, 2, 3, 1])
puts "#{result}, pass: #{result == 3}"

# TESTED AND PASSED ON Codility
