class Quadrilateral
  def initialize(*rest)
    @side1 = rest[0]
    @side2 = rest[1]
    @side3 = rest[2]
    @side4 = rest[3]
    @height = rest[4]
  end
 
  def perimeter
    @side1 + @side2 + (@side3 || @side1) + (@side4 || @side2)
  end
 
  def area
    @side1 * @side2
  end
 
  def side
    perimeter/4
  end
end
 
class Rectangle < Quadrilateral	
end
 
class Trapezoid < Quadrilateral
  def area
    (@side1 + @side2)/2.0 * @height
  end
end
 
class Square < Rectangle
end
 
class Rhombus < Trapezoid
end
 
 
def test
    rect = Rectangle.new(1,1)
    puts rect.perimeter == 4
    puts rect.area == 1
 
    trap = Trapezoid.new(1,2,3,4,5)
    puts trap.perimeter == 10
    puts trap.area == 7.5
 
    squa = Square.new(1,1)
    puts squa.perimeter == 4
    puts squa.area == 1
    puts squa.side == 1
 
    rhom = Rhombus.new(1,1,1,1,5)
    puts rhom.perimeter == 4
    puts rhom.side == 1
end
 
test