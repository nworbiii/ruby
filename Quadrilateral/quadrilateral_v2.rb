# Calculate the perimeter of every shape.
# Calculate the area of shapes with right angles: rectangles and squares.
# Get the length of a single side of equilaterals: squares and rhombi.

class Quadrilateral
	def initialize(length, width)
		@length = length
		@width = width
	end
end

class Rectangle < Quadrilateral	
	def perimeter
		@length * 2.0 + @width * 2.0
	end

	def area
		@length * @width
	end
end


class Trapezoid < Quadrilateral
	def initialize(base1, base2, side1, side2, height)
		@base1 = base1
		@base2 = base2
		@side1 = side1
		@side2 = side2
		@height = height
	end

	def perimeter
		@base1 + @base2 + @side1 + @side2
	end

	def area
		(@base1 + @base2)/2.0 * @height
	end
end


class Square < Rectangle
	def side
		perimeter/4
	end
end


class Rhombus < Trapezoid
	def side
		perimeter/4
	end
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

puts "Test Answers:"
test





