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
end

(1..1000).each { |x| puts "#{x}: #{x.fac.trailing_zeroes}" }

#assert_equal(trailing_zeroes, 1)
