# What is the largest prime factor of the number 600851475143 ?

n = 600851475143
i = 2

until i == n do
  if n % i == 0
    puts "#{n} div #{i}"
    n /= i
  end
  i += 1
end

puts n

# If all factors weren't prime numbers we'd need a prime? check on line 7
