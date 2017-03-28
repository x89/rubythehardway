# Not to self: x.next and x.succ retain leading zeroes…

def leading_zeroes(n)
  n = n.to_s
  count = 0
  n.to_s.chars.each {|x| x == "0" ? count += 1 : break }
  "0" * count
end

def all_zeroes?(n)
  n.to_s.chars.each do |c|
    return false if c != "0"
  end
  return true
end

def increment_string(input)
  return "1" if input == ""
  if m = input.match(/(.*?)(\d*)$/)
    s, n = m[1], m[2]
  end
  return s + "1" unless n.length > 0
    
  lz = leading_zeroes(n)
  lz = lz.chop if n.chars[-1] == "9"
    
  if all_zeroes?(n)
    lz[-1] = "1"
    return s + lz
  end
  
  n = n.to_i
  n += 1

  s + lz + n.to_s
end
