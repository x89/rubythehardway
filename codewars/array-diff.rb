re "continuation"
class GroupByDifference
  def initialize(numbers)
    @numbers = numbers
  end
  
  def find(difference)
    ret = Array.new
    @numbers.each_with_index do |x, i1|
      callcc do |cont|
        @numbers.each_with_index do |y, i2|
          next if i1 == i2
          if (x - y).abs <= difference then
            ret.push(x)
            cont.call()  # Where are my GOTOs?!
          end
        end
      end
    end
    ret.sort
  end
end
