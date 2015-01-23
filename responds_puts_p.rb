# The puts method calls an object’s to_s method.

# The p method calls an object’s inspect method.

# Define a type of object that responds to puts and p. For example:

# puts MyClass.new
# p MyClass.new
# should both return a nice, readable string.

class MyClass
	def to_s
		"I'm a string."
	end

	def inspect
		"I'm another string."
	end
end




puts MyClass.new #=> string
p MyClass.new #=> string