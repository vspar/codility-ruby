class PermMissingElem

  def self.solution(a)
    a.sort!
    (0..a.size).each { |i| return i+1 if (a[i] != i+1) }
    return a.length+1
  end

end

result = PermMissingElem.solution([6, 1, 3, 5, 2])
puts "#{result}, pass: #{result == 4}"

result = PermMissingElem.solution([6, 1, 3, 5, 2, 4])
puts "#{result}, pass: #{result == 7}"

result = PermMissingElem.solution([6, 1, 3, 5, 2, 4, 8, 9, 10])
puts "#{result}, pass: #{result == 7}"

# TESTED AND PASSED ON Codility
