# Returns the larger of two numbers.
# def max (num1, num2)
#   if num1 > num2
#   	num1
#   else
#   	num2
#   end
# end

# def max (num1, num2)
#   num1 > num2 ? num1 : num2
# end

def max(num1, num2)
  [num1, num2].max
end

def test_max
  puts max(1,2) == 2
  puts max(1.0,20) == 20
  puts max(-2, 0.9) == 0.9
  puts max(1/2, 3) == 3
  puts max(1,1) == 1
end

puts "Test results:"
puts test_max