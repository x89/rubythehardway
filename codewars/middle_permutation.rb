class String
  def even?
    self.length % 2 == 0
  end
end

def middle_permutation(string)
  string = string.chars.sort.join
  mid = string.length / 2 - 1
  if string.even?
    string[mid] + (string.slice(0, mid) + string.slice(mid+1, string.length)).reverse
  else
    string.slice(mid, 2).reverse + (string.slice(0, mid) + string.slice(mid+2, string.length)).reverse
  end
end
