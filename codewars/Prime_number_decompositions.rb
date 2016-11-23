require 'test/unit'

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
  def test_all_prime_factors
    assert_equals(getAllPrimeFactors(0), [])
    assert_equals(getAllPrimeFactors(1), [1])
    assert_equals(getAllPrimeFactors(100), [2,2,5,5])
  end

  def test_factors_with_count
    assert_equals(getUniquePrimeFactorsWithCount(100), [[2,5],[2,2]])
  end

  def test_factors_with_products
    assert_equals(getUniquePrimeFactorsWithProducts(100), [4,25])
  end
end
