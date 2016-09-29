class Integer
  def fac
    return (1..self).inject(1, :*)
  end

  def pascal_row
    tmp = 1
    row = Array.new [1]
    self.downto(1).each do |n|
      fraction = n/(self-(n-1)).to_f.round(10)  # 5/1, 4/2, 3/3, 2/4, 1/5…
      puts "#{n}: #{n}/#{self-(n-1)} = #{fraction} => #{(fraction * tmp).round}"
      row.push((tmp *= fraction).round)
    end
    return row.map{|e| e.to_i}
  end

  def pascal_flat_row
    a = Array.new()
    (0..self).each do |n|
      a.push(n.pascal_row)
    end
    return a.flatten
  end
end

(11..11).each {|x| puts "#{x.pascal_row}" }
