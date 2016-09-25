def fac(n)
  (1..n).reduce(1, :*)
end

def trailing_zeroes(n)
  count = 0
  while n % 10 == 0 do
    n /= 10
    count += 1
  end
  return count
end

(1..1000).each { |x| puts "#{x}: #{trailing_zeroes(fac(x))}" }
