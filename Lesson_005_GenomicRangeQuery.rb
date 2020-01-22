class GenomicRangeQuery

  def self.solution(s, p, q)
    dna = %w(A C G T)
    m = p.size
    result = []

    (0..m-1).each do |k|
      dna.each do |letter|
        index = s.index(letter, p[k])

        if index && index <= q[k]
          result << dna.index(letter)+1
          break
        end
      end
    end

    return result
  end

end

result = GenomicRangeQuery.solution('CAGCCTA', [2, 5, 0], [4, 5, 6])
puts "#{result}, pass: #{result == [2, 4, 1]}"

# TESTED AND PASSED ON Codility (both solutions)
