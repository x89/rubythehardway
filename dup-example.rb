class Point
  attr_writer :x, :y
  def initialize(x=0, y=0)
    @x = x
    @y = y
  end

  def to_s
    "(#{@x}, #{@y})"
  end
end

a = Array.new

point1 = Point.new

2.times do
  a.push(point1)
end

2.times do
  a.push(point1.dup)
end

point1.x = 5

puts a
