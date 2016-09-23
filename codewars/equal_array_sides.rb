def sum(arr)
  count = 0
  arr.each do |i|
    count += i
  end
  return count
end

def find_even_index(arr)
  n = arr.length
  i = 0
  while i < n do
    puts "#{arr[0..i]}: #{sum(arr[0..i])}; #{arr[i..n]}: #{sum(arr[i..n])}"
    if sum(arr[0..i]) == sum(arr[i..n])
      return i
    end
    i += 1
  end
  return -1
end
