# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

a = 0
b = 1

count = 0
index = 0

while b < 4_000_000 do
  puts "Fibonacci number #{index}: #{b}"
  c = b  # Temp var to store b
  b += a
  a = c

  if b % 2 == 0
    count += b
  end

  index += 1
end
