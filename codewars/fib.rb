# Slow fibonacci, matrix multiplication is better

def fib(n)
  return 0 if n == 0

  a = 0
  b = 1
  fib = 0

  while fib < n do
    c = b
    b = a + b
    a = c
    fib += 1
  end

  return a
end

(1500000..1500000).each { |n| puts "Fib #{n}: #{fib n}" }
