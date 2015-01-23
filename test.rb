# def demonstrate_block(number)
#   yield(number)
# end

# puts demonstrate_block(1) { |number| number + 1 }




# l = lambda do |string|
#   if string == "try"
#     return "There's no such thing" 
#   else
#     return "Do or do not."
#   end
# end
# puts l.call("try") # Feel free to experiment with this





# def calculate(num1, num2)
#   yield(num1, num2)
# end


# puts calculate(2, 3) { |a, b| a + b }
# puts calculate(2, 3) { |a, b| a * b }




# p [[1, 2], [3, 4]].inject { |x,y| x + y }

# p [[1,2], [3,4]].flatten


# p ("A".."Z").to_a.zip(("a".."z").to_a).flatten

# $stdout.puts 'hi'
# Kernel.puts 'hi'

# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# p (1...1000).select { |x| x%3==0 || x%5==0 }.inject(0) { |x,y| x + y }

def fib(n)
  n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end


p fib(3)
p fib(3).inject { |x,y| x + y }
puts '----------'
p fib(18)
p fib(18).inject { |x,y| x + y }

# make a sinatra app you publish to heroku












