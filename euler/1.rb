# Find the sum of all the multiples of 3 or 5 below 1000.

count = 0

(1...1000).each { |i|
  if i % 3 == 0
    count += i
    puts "#{i} divisible by 3 #{count}"
  elsif i % 5 == 0
    count += i
    puts "#{i} divisible by 5 #{count}"
  else
    puts "#{i} not divisible"
  end
}

puts count
