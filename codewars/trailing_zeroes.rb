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
    '''Trailing zeroes goes up n/5 every n'''
    n = self
    count = 0
    count += n /= 5 while n > 4
    return count
  end
end

# (1000000..1000001).each { |x| puts "#{x}: #{x.trailing_zeroes_fast}" }

class TestTrailingZeroes < Test::Unit::TestCase
  def test_original
    # Test original trailing_zeroes
    assert_equal(1, 5.fac.trailing_zeroes)
    assert_equal(2, 12.fac.trailing_zeroes)
    assert_equal(12, 50.fac.trailing_zeroes)
    assert_equal(24, 100.fac.trailing_zeroes)
    assert_equal(1, 0.fac)
  end

  def test_fast
    # Test "fast" trailing_zeroes
    assert_equal(1, 5.trailing_zeroes_fast)
    assert_equal(2, 12.trailing_zeroes_fast)
    assert_equal(12, 50.trailing_zeroes_fast)
    assert_equal(24, 100.trailing_zeroes_fast)
    assert_equal(500.fac.trailing_zeroes, 500.trailing_zeroes_fast)
    assert_equal(2000.fac.trailing_zeroes, 2000.trailing_zeroes_fast)
    assert_equal(249999998, 1000000000.trailing_zeroes_fast)
  end
end
