def get_pins(observed)
  nums = {
    "0" => ["0", "8"],
    "1" => ["1", "2", "4"],
    "2" => ["1", "2", "3", "5"],
    "3" => ["2", "3", "6"],
    "4" => ["1", "4", "7", "5"],
    "5" => ["2", "5", "8", "4", "6"],
    "6" => ["3", "6", "9", "5"],
    "7" => ["4", "7", "8"],
    "8" => ["0", "5", "7", "8", "9"],
    "9" => ["6", "8", "9"]
  }
  digits, ret = Array.new, Array.new
  observed.chars.each { |e| digits.push(nums[e]) }
  products = digits[0].product(*digits[1..digits.length])
  products.each { |e| ret.push(e.join('')) }
  return ret.sort
end
