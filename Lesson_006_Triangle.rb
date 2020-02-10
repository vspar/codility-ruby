class Triangle

  # An array A consisting of N integers is given. A triplet (P, Q, R) is triangular if 0 ≤ P < Q < R < N and:
  # A[P] + A[Q] > A[R],
  # A[Q] + A[R] > A[P],
  # A[R] + A[P] > A[Q].

  def self.solution(a)
    a = a.select{|num| num > 0 } # a triangle cannot have sides of length <= 0
    a.sort! # sorting works because the order of the sides doesn't matter

    a.each_with_index do |ap, p|
      a[p+1..-1].each_with_index do |aq, q|
        a[p+q+2..-1].each do |ar|
          break unless ap + aq > ar
          break unless aq + ar > ap
          break unless ar + ap > aq
          return 1
        end
      end
    end

    return 0
  end

end

result = Triangle.solution([10, 2, 5, 1, 8, 20])
puts "#{result}, pass: #{result == 1}"

result = Triangle.solution([1, 2, 5, 8, 10, 20])
puts "#{result}, pass: #{result == 1}"

result = Triangle.solution([1, 2, 8, 10, 20])
puts "#{result}, pass: #{result == 0}"

result = Triangle.solution([10, 50, 5, 1])
puts "#{result}, pass: #{result == 0}"

result = Triangle.solution([10, 50])
puts "#{result}, pass: #{result == 0}"

result = Triangle.solution([10])
puts "#{result}, pass: #{result == 0}"

result = Triangle.solution([])
puts "#{result}, pass: #{result == 0}"

# TESTED AND PASSED ON Codility
