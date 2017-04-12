def fac(n)
  # n! is max for s.length
  (1..n).reduce(1, :*)
end

def middle_permutation(string)
  arr = Array.new
  max = fac(string.length)
  idx = max % 2 == 0 ? max/2-1 : max/2
  string.chars.permutation.each_with_index do |s, i|
    arr.push(s)
    break if i + 1 > max
  end
  arr.sort!
  arr[idx].join()
end
