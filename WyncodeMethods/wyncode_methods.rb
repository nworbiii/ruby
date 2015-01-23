# # Converts bill total float into cents integer.

def float_money(total=nil)
	(total * 100).to_i if not total.nil? and total.respond_to? :zero?
end


def test_float_money
  puts float_money(10).is_a? Integer
  puts float_money(10.0).is_a? Integer
  puts float_money(nil).nil?
  puts float_money({key: 10}) == nil
  puts float_money([10]) == nil
  puts float_money(false) == nil
  puts float_money("string") == nil
end

puts "Test Results:"
test_float_money




# #Puts hello world

# def hello_world
# 	puts "Hello world!"
# end




# Returns the greater of two strings

# def spaceship(x,y)
# 	x<=>y
# end

# def test_spaceship
# 	puts spaceship([],[])
# 	puts spaceship((),())
# 	puts spaceship(1,2)
# end

# puts "Test Results:"
# test_spaceship




# Converts an Array of numbers into an Array of numbers within strings.


def join_split(arr=nil)
	arr.join.split("") if not arr.nil? and arr.respond_to? :push
end

def test_join_split
	p join_split([1,2,3,4]) == ["1", "2", "3", "4"]
	p join_split() == nil
	p join_split(1) == nil
end

puts "Test Results:"
test_join_split



