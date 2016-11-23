require 'test/unit'
require 'prime'

def getAllPrimeFactors(n)
  #your code here
end

def getUniquePrimeFactorsWithCount(n)
  #your code here
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
    assert_equal(getAllPrimeFactors(100), [2,2,5,5])
  end

  def test_factors_with_count
    assert_equal(getUniquePrimeFactorsWithCount(100), [[2,5],[2,2]])
  end

  def test_factors_with_products
    assert_equal(getUniquePrimeFactorsWithProducts(100), [4,25])
  end
end
