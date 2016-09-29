class Integer
  def fac
    return (1..self).inject(1, :*)
  end

  def pascal_row
    tmp = 1
    row = Array.new [1.0]
    self.downto(1).each do |n|
      fraction = n/(self-(n-1)).to_f  # 5/1, 4/2, 3/3, 2/4, 1/5…
      #puts "#{n}: #{n}/#{self-(n-1)} = #{fraction}"
      row.push(tmp *= fraction)
    end
    return row.map{|e| e.to_i}
  end
end

(0..10).each do |n|
  puts "#{n.pascal_row}"
end
