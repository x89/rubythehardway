# For CodeWars
# https://www.codewars.com/kata/53c93982689f84e321000d62/train/ruby

require 'test/unit'
require 'prime'

def getAllPrimeFactors(n)
  return [] if n == 0
  return [1] if n == 1
  ret = Array.new
  max = Math.sqrt(n).ceil + 1
  i = 2
  while i <= n do
    unless Prime.prime? i then
      i += 1
      next
    end
    if n % i == 0 then
      ret.push i
      n /= i
      next
    end
    if n == i then
      ret.push i
      break
    end
    i += 1
  end
  return ret
end

def getUniquePrimeFactorsWithCount(n)
  return [[],[]] if n == 0
  return [[1],[1]] if n == 1
  return [[2],[1]] if n == 2
  divisors = Prime.prime_division(n)
  a1, a2 = Array.new, Array.new
  divisors.each do |a|
    a1.push a[0]
    a2.push a[1]
  end
  return [a1, a2]
end

def getUniquePrimeFactorsWithProducts(n)
  return [] if n == 0
  return [1] if n == 1
  return [2] if n == 2
  factors = getUniquePrimeFactorsWithCount(n)
  base = factors[0]
  exp = factors[1]
  return base.zip(exp).map { |x,y| x**y }
end


class TestPrimeFactors < Test::Unit::TestCase
  def test_prime
    assert_equal(Prime.prime?(5), true)
    assert_equal(Prime.first(2), [2, 3])
  end

  def test_all_prime_factors
    assert_equal(getAllPrimeFactors(0), [])
    assert_equal(getAllPrimeFactors(1), [1])
    assert_equal([2, 5], getAllPrimeFactors(10))
    assert_equal([101, 9901], getAllPrimeFactors(1000001))
    assert_equal(getAllPrimeFactors(100), [2,2,5,5])
    assert_equal(getAllPrimeFactors(400), [2,2,2,2,5,5])
  end

  def test_factors_with_count
    assert_equal(getUniquePrimeFactorsWithCount(100), [[2,5],[2,2]])
    assert_equal(getUniquePrimeFactorsWithCount(400), [[2,5],[4,2]])
    assert_equal(getUniquePrimeFactorsWithCount(600), [[2,3,5],[3,1,2]])
  end

  def test_factors_with_products
    assert_equal([2,5], getUniquePrimeFactorsWithProducts(10))
    assert_equal([4,25], getUniquePrimeFactorsWithProducts(100))
    assert_equal([16,25], getUniquePrimeFactorsWithProducts(400))
  end

  def test_edge_cases
    assert_equal([], getAllPrimeFactors(0))
    assert_equal([1], getAllPrimeFactors(1))
    assert_equal([2], getAllPrimeFactors(2))
    assert_equal([[],[]], getUniquePrimeFactorsWithCount(0))
    assert_equal([[1],[1]], getUniquePrimeFactorsWithCount(1))
    assert_equal([[2],[1]], getUniquePrimeFactorsWithCount(2))
    assert_equal([], getUniquePrimeFactorsWithProducts(0))
    assert_equal([1], getUniquePrimeFactorsWithProducts(1))
    assert_equal([2], getUniquePrimeFactorsWithProducts(2))
  end
end
