class Array
  def sum_digits(n)
    '''Largest integer n from array of digits'''
    total = 0
    multiplier = n - 1
    self.each do |e|
      total += e.to_i * (10**multiplier)
      multiplier -= 1
    end
    return total
  end
end

def solution(digits)
  '''Finds the longest sequence of 5 numbers in an integer'''
  a = digits.to_s.chars
  max = 0
  a.each do
    sum = a.first(5).sum_digits(5)
    max = sum if sum > max
    a.rotate!
  end
  return max
end

puts solution(123454321)
