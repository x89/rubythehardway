# For CodeWars
# https://www.codewars.com/kata/53c93982689f84e321000d62/train/ruby

require 'test/unit'
require 'prime'

def getAllPrimeFactors(n)
  return [] if n == 0
  return [1] if n == 1
  factors_with_count = getUniquePrimeFactorsWithCount(n)
  ret = Array.new
  factors_with_count.reverse.each do |a|
    a[0].downto(1).each do
      ret.push a[1]
    end
  end
  return ret
end

def getUniquePrimeFactorsWithCount(n)
  return [] if n == 0
  return [1] if n == 1
  divisors = Prime.prime_division(n)
  # The rest of this function rearranges the return result to match what the
  # function expects. [[c,n1][c,n2]] where c is count, n is integer descending.
  ret = Array.new
  divisors.each do |a|
    ret.push [a[1], a[0]]
  end
  return ret.reverse
end

def getUniquePrimeFactorsWithProducts(n)
  factors_with_count = getUniquePrimeFactorsWithCount(n)
  ret = Array.new
  factors_with_count.reverse.each do |a|
    ret.push a[1] ** a[0]
  end
  return ret
end


class TestPrimeFactors < Test::Unit::TestCase
  def test_prime
    assert_equal(Prime.prime?(5), true)
    assert_equal(Prime.first(2), [2, 3])
  end

  def test_all_prime_factors
    assert_equal(getAllPrimeFactors(0), [])
    assert_equal(getAllPrimeFactors(1), [1])
    assert_equal(getAllPrimeFactors(100), [2,2,5,5])
    assert_equal(getAllPrimeFactors(400), [2,2,2,2,5,5])
    assert_equal(getAllPrimeFactors('str'), [])
  end

  def test_factors_with_count
    assert_equal(getUniquePrimeFactorsWithCount(100), [[2,5],[2,2]])
    assert_equal(getUniquePrimeFactorsWithCount(400), [[2,5],[4,2]])
  end

  def test_factors_with_products
    assert_equal(getUniquePrimeFactorsWithProducts(100), [4,25])
    assert_equal(getUniquePrimeFactorsWithProducts(400), [16,25])
  end
end
