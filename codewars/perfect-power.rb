def slow_solution(n)
  '''Works, but too slow'''
  max = Math.sqrt(n).ceil
  ret_a = Array.new()
  (1..max).each do |x|
    (1..max).each do |y|
      return [x, y] if x**y == n
    end
  end
  return nil
end

def fast_solution(n)
  '''Based on solving for y: n = x**y gives y = log(n)x'''
  return nil if not n.is_a? Integer
  sqrt = Math.sqrt(n)
  return [sqrt, Math.log(n,sqrt)] if sqrt == sqrt.to_i
  (2..sqrt.ceil).each do |e|
    inverse = Math.log(n, e).round(10)  # Math.log(125, 5) == 3.0000000000000004
    return [e, inverse] if n % e == 0 and inverse == inverse.to_i
  end
  return nil
end

def isPP(n)
  fast_solution(n)
end
