require 'test/unit'
require 'prime'

def getAllPrimeFactors(n)
  return [] if n == 0
  return [1] if n == 1
end

def getUniquePrimeFactorsWithCount(n)
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
  #your code here
end


class TestPrimeFactors < Test::Unit::TestCase
  def test_prime
    assert_equal(Prime.prime?(5), true)
    assert_equal(Prime.first(2), [2, 3])
  end

  def test_all_prime_factors
    assert_equal(getAllPrimeFactors(0), [])
    assert_equal(getAllPrimeFactors(1), [1])
    assert_equal(getAllPrimeFactors('str'), [])
    assert_equal(getAllPrimeFactors(100), [2,2,5,5])
  end

  def test_factors_with_count
    assert_equal(getUniquePrimeFactorsWithCount(100), [[2,5],[2,2]])
  end

  def test_factors_with_products
    assert_equal(getUniquePrimeFactorsWithProducts(100), [4,25])
  end
end
