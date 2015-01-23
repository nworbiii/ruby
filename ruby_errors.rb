class Table
	attr_accessor :num_legs

	def initialize(num_legs)
		# raise "Halt!"
		if num_legs > 0
			@num_legs = num_legs
		else
			raise "Invalid number of legs."
		end
	end
end

begin
	table = Table.new(-1)
rescue => err
	p err.message
	puts err.backtrace
end

puts "Normal operation"



# def a
# 	b
# end

# def b
# 	compute_something #rescue "default result"
# end

# def compute_something
# 	d
# end

# def d
# 	raise "Boom!"
# end

# begin
# 	puts a
# rescue => e
# 	puts e.backtrace
# end

# begin
# 	exit
# rescue # assumed to be StandardError
# 	puts "Heroic efforts"
# end


# don't do this - flow control with exceptions
# begin
# 	# run when good stuff happens
# 	b = nil
# 	raise "Bad stuff" if b.nil?
# rescue
# 	# handle when b is nil
# end

# do this instead - flow control with if/then
# b = nil
# if b.nil?
# 	# use b
# else 
# 	# handle when b is nil
# end

# def add_two(number)
# 	if number.respond_to? :+
# 		number + 2
# 	end
# end

# generic goto makes argument validation useless
# def add_two_goto(number)
# 	# goto line 72
# end


# goto implemented with throw/catch
# catch :ball do
# 	0.upto(10).each do |i|
# 		puts i
# 		10.downto(0).each do |j|
# 			puts j
# 			0.upto(10).each do |k|
# 				puts k
# 				throw :ball if k.zero?
# 			end
# 		end
# 	end
# end

# puts "normal operation 2"

