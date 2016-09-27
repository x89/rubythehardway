require 'test/unit'

def spiralize(size)
  case size  # Edge cases n < 5
    when 1 then return [[1]]
    when 2 then return [[1,1],[0,1]]
    when 3 then return [[1,1,1],[0,0,1],[1,1,1]]
    when 4 then return [[1,1,1,1][0,0,0,1],[1,0,0,1],[1,1,1,1]]
  end
  spiral = Array.new
  edge = Array.new  # For rows 1, n
  (0...size).each { edge.push(1) }
  spiral.push(edge)

  # Between the edges
  (1...size - 1).each do |row_index|
    row = Array.new
    (0...size).each do |col_index|
      n = 0  # By default put a 1
      if spiral[row_index-1][col_index] == 0
        n = 1
      elsif col_index == size - 1
        n = 1
      end
      if col_index == size - 2
        n = 0
      end
      row.push(n)
    end
    spiral.push(row)
  end

  spiral.push(edge)

  return spiral
end

puts spiralize(2)

class SpiralTests < Test::Unit::TestCase
  def test_codewars
    assert_equal(spiralize(1), [[1]])
    assert_equal(spiralize(2), [[1,1],
                                [0,1]])
    assert_equal(spiralize(3), [[1,1,1],
                                [0,0,1],
                                [1,1,1]])
    assert_equal(spiralize(5), [[1,1,1,1,1],
                                [0,0,0,0,1],
                                [1,1,1,0,1],
                                [1,0,0,0,1],
                                [1,1,1,1,1]])
    assert_equal(spiralize(8), [[1,1,1,1,1,1,1,1],
                                [0,0,0,0,0,0,0,1],
                                [1,1,1,1,1,1,0,1],
                                [1,0,0,0,0,1,0,1],
                                [1,0,1,0,0,1,0,1],
                                [1,0,1,1,1,1,0,1],
                                [1,0,0,0,0,0,0,1],
                                [1,1,1,1,1,1,1,1]])
  end
end
