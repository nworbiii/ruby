##### Initialize Error
# class Table
# 	attr_accessor :num_legs

# 	def initialize(num_legs)
# 		# raise "Halt!" # prevents the table from being created by stopping the initialize method
# 		# asdf
# 		# asdfdsf
# 		# sdfsdfsd
# 		if num_legs > 0
# 			@num_legs = num_legs
# 		else
# 			raise "Invalid number of legs." # prevents the table from being created by stopping the initialize method
# 		end
# 	end
# end

# table = Table.new(-1)
# puts "Help!"
# sf sdf sdfs f asdf 
# p table.num_legs

# p table.num_legs

##### Error Recovery

# def add_two(number)
# 	unless number.respond_to? :+
# 		raise "Invalid argument"
# 	end
# 	number + 2
# end

# puts add_two({})

# begin
# 	table = Table.new(-1)
# rescue # rescue StandardError
# 	puts "Can't create a table."
# 	puts "Do other stuff instead."
# end

# puts "Normal operation."

####Error Type Rescue

# def add_two(number)
# 	unless number.respond_to? :+
# 		begin
# 			puts add_two({})
# 		rescue ArgumentError => e
# 			puts "You: #{e.message}. Me: Sorry!"
# 		rescue
# 			puts "What?"
# 		end
# 	end
# end


# def a
# 	b
# end

# def b
# 	compute_something rescue "default result" # do this if c returns an error.
# end

# def compute_something
# 	d	
# end

# def d
# 	raise "Boom!"
# end

# begin
# 	puts a
# 	puts "All good here."
# rescue => e # => e to look at stack trace
# 	puts "heroic efforts"
# 	puts e.backtrace
# end

# begin
# 	1/0
# rescue # ZeroDivisionError
# 	puts "I can't divide by zero."
# end






# rescue only catches errors in the StandardError class and ignores the more serious errors/Exceptions







# begin
#   raise 1234.0
# rescue => error
#   puts error.inspect
# end

# class Table
# 	attr_accessor :num_legs

# 	def initialize(num_legs)
# 	  if num_legs > 0
# 	    @num_legs = num_legs
# 	  else
# 	    Exception.new
# 	  end
# 	end
# end

# table = Table.new(-1)
# p table.num_legs






# class MyCustomError < StandardError
#   attr_reader :object

#   def initialize(object)
#     @object = object
#   end
# end

# begin
#   raise MyCustomError.new("an object"), "a message"
# rescue MyCustomError => e
#   puts e.message # => "a message"
#   puts e.object # => "an object"
# end


# class MyCustomError < Exception
#   attr_reader :object

#   def initialize(object)
#     @object = object
#   end
# end

# begin
#   raise MyCustomError.new("an object"), "a message"
# rescue MyCustomError => e
#   puts e.message # => "a message"
#   puts e.object # => "an object"
# end


def add_two(number)
    unless number.respond_to? :+
        raise "Invalid argument" # Runtime Error object
    end
	number + 2
end

begin
	puts add_two({})
rescue
	puts "Sorry!"
end

puts "And we're back!"










