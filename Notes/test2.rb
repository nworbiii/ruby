# a = 1
# p %w(#{a} cat)
# p %W(#{a} cat)

# a = ("A".."Z").to_a
# b = ("a".."y").to_a

# p a.zip(b).flatten.compact

#main - main is a scope; anything defined here is in the main (global) scope
# def a_method
# 	# main
# end


# class MyClass
# 	# MyClass
# 	p self == MyClass #class scope
# 	# MyClass

# 	def self.class_method
# 		#MyClass
# 		p self
# 		# MyClass
# 	end

# 	def instance_method
# 		# an instance of MyClass
# 		p self
# 		# an instance of MyClass
# 	end
# end
# # main
# p self




# When creating your own error class, what’s the difference between subclassing StandardError and subclassing Exception?
# Create an error class that would be appropriate as a subclass to StandardError.
# Create another error class that would be appropriate as a subclass to Exception.
# The names of each of your classes should be appropriate for the type of error defined.

# class Error1 < StandardError
# end


# class Error2 < Exception
# end


# p 1.2.is_a? Numeric



# p (methods + self.class.ancestors.map do |p|
# 	p.methods
# end.flatten).uniq.sort


# require 'active_support/core_ext'
# p (1.week - 1.hour).from_now



# loop do
#   begin
#     puts sleep 1
#     eval "djsakru3924r9eiuorwju3498 += 5u84fior8u8t4ruyf8ihiure"
#   rescue Exception
#     puts "I refuse to fail or be stopped!"
#   end
# end

# p [[1,2],[3,4]].reduce(:+) # reduces the array by one dimension
# p ['a', 'b', 'c', 'd'].reduce(:+)
# p [1,2,3,4].inject(:+)
# p [12].inject(:+)


# arr1 = [[1,2],[3,4], [5,6], [7,8]]
# arr2 = [1,2,3,4]

# iter = 0
# results = arr1.reduce do |total, item|
#   puts "iteration #{iter}"
#   iter += 1
#   p total
#   p item

#   total + item
# end

# puts "result"
# p results

# p ["w", "o", "r", "l", "d"].inject("hello ", :+)

# big_array = [1,2,3,4,5,6,7,8,9,10]
# big_array = [[1,2,3], [4,5,6], [7,8,9,10]]

# def sum(arr)
#   # on_another_computer do
#   arr.inject(:+)
#   # end
# end


# result = big_array.map do |chunk|
#   sum(chunk)
# end.reduce(:+)

# p result

#######
a = 7
arr1 = %w[#{a} b c d]
arr2 = %W!#{a} b c d!

p arr1, arr2
p "#{a}", '#{a}'

# p a.class
# p a.map(&:class)

# %w[json httparty nokogiri active_support/core_ext activerecord].each { |lib| require lib }
















