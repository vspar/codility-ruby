class MinAvgTwoSlice

  def self.solution(a)
    len = a.size
    orig_len = len
    res_p = 0
    avg = (a[0] + a[1]) / 2.0 # starting minimum average

    # turn array into prefix sums array, we can use this to speed up calculation of intervals
    (1..a.size-1).each { |i| a[i] += a[i-1] }
    a.unshift(0)

    # only need to return the starting index of the slice with the
    # lowest average, so ignore slices larger than 3 - see https://github.com/daotranminh/playground/blob/master/src/codibility/MinAvgTwoSlice/proof.pdf
    # however, this solution also works without the line below
    len = 3.0

    while len >= 2 do
      p = 0

      while len+p <= orig_len do
        q = p+len
        sum = (a[q] - a[p]).to_f
        new_avg = sum/len

        if new_avg < avg || (new_avg == avg && p < res_p)
          avg = new_avg
          res_p = p
        end

        p += 1
      end

      len -= 1
    end

    return res_p
  end

end


result = MinAvgTwoSlice.solution([4, 7])
puts "#{result}, pass: #{result == 0}"

result = MinAvgTwoSlice.solution([4, 2, 2, 5])
puts "#{result}, pass: #{result == 1}"

result = MinAvgTwoSlice.solution([2, 2, 2, 5])
puts "#{result}, pass: #{result == 0}"

result = MinAvgTwoSlice.solution([4, 2, 2, 2])
puts "#{result}, pass: #{result == 1}"

result = MinAvgTwoSlice.solution([4, 3, 2, 2])
puts "#{result}, pass: #{result == 2}"

result = MinAvgTwoSlice.solution([4, 3, 2, 2, 5])
puts "#{result}, pass: #{result == 2}"

result = MinAvgTwoSlice.solution([4, 3, 2, 2, 1])
puts "#{result}, pass: #{result == 3}"

result = MinAvgTwoSlice.solution([4, 3, 2, 2, 1, 9])
puts "#{result}, pass: #{result == 3}"

result = MinAvgTwoSlice.solution([4, 2, 2, 5, 1, 5, 8])
puts "#{result}, pass: #{result == 1}"

result = MinAvgTwoSlice.solution([1, 4, 2, 5, 3, 5, 1, 5, 8])
puts "#{result}, pass: #{result == 0}"

result = MinAvgTwoSlice.solution([4, 2, 5, 3, 5, 1, 5, 8])
puts "#{result}, pass: #{result == 0}"

result = MinAvgTwoSlice.solution([4, 2, 5, 2, 5, 1, 5, 1, 8])
puts "#{result}, pass: #{result == 5}"

result = MinAvgTwoSlice.solution([8, 4, 2, 5, 3, 5, 1, 5])
puts "#{result}, pass: #{result == 1}"

result = MinAvgTwoSlice.solution([5, 5, 5, 5, 5, 5, 5])
puts "#{result}, pass: #{result == 0}"

result = MinAvgTwoSlice.solution([7, 6, 5, 4, 3, 2, 1])
puts "#{result}, pass: #{result == 5}"

# TESTED AND PASSED ON Codility (both solutions)
