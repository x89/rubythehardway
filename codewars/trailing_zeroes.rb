require 'test/unit'

class Integer
  def fac
    (1..self).reduce(1, :*)
  end

  def trailing_zeroes
    count = 0
    n = self
    while n % 10 == 0 do
      n /= 10
      count += 1
    end
    return count
  end

  def trailing_zeroes_fast
    
  end
end

#(1..1000).each { |x| puts "#{x}: #{x.fac.trailing_zeroes}" }

class TestTrailingZeroes < Test::Unit::TestCase
  def test_original
    # Test original trailing_zeroes
    assert_equal(1, 5.fac.trailing_zeroes)
    assert_equal(2, 12.fac.trailing_zeroes)
    assert_equal(1, 0.fac)
  end

  def test_fast
    # Test "fast" trailing_zeroes
    assert_equal(1, 5.fac.trailing_zeroes_fast)
    assert_equal(2, 12.fac.trailing_zeroes_fast)
    assert_equal(24, 100.fac.trailing_zeroes_fast)
  end
end
