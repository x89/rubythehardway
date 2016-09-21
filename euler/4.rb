# Find the largest palindrome made from the product of two 3-digit numbers.

include Math

palindromes = Array.new()

(100000..999999).each { |i|
  #puts "#{i}, #{i.to_s}, #{i.to_s.reverse}, #{i.to_s.reverse == i.to_s}"
  if i.to_s == i.to_s.reverse
    palindromes.push(i)
  end
}

min = sqrt(100000).ceil
range = 999.downto(min)

palindromes.reverse.each { |palindrome|
  range.each { |x|
    range.each { |y|
      if x * y == palindrome
        puts "#{palindrome} is the product of #{x} and #{y}"
        exit
      end
    }
  }
}
