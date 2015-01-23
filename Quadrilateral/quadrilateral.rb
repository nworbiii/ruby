class Quadrilateral; end

class Rectangle < Quadrilateral; end

class Trapezoid < Quadrilateral; end

class Square < Rectangle; end

class Rhombus < Trapezoid; end

def test
    squa = Square.new
    puts squa.is_a? Rectangle
    puts squa.is_a? Quadrilateral

    rect = Rectangle.new
    puts rect.is_a? Quadrilateral
    puts not(rect.is_a? Trapezoid)

    trap = Trapezoid.new
    puts trap.is_a? Quadrilateral
    puts not(trap.is_a? Rhombus)

    rhom = Rhombus.new
    puts rhom.is_a? Trapezoid
    puts rhom.is_a? Quadrilateral
end

test