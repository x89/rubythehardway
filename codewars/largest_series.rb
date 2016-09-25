class Array
  def sum_digits
    total = 0
    multiplier = 4
    self.each do |e|
      total += e.to_i * (10**multiplier)
      #puts "multiplied #{e.to_i} * #{10**multiplier} => #{e.to_i * (10**multiplier)}"
      multiplier -= 1
    end
    return total
  end
end

def solution(digits)
  '''Finds the longest sequence of 5 numbers in an integer'''
  a = digits.to_s.chars
  max = 0

  a.each_with_index do |e,i|
    #puts "#{i}: #{a.first(5)} #{a.first(5).sum_digits}"
    sum = a.first(5).sum_digits
    max = sum if sum > max
    a.rotate!
  end

  return max
end
