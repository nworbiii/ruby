class Table # the Table name must be capitalized
	# attr_reader :num_legs #shortcut for def_get_num_legs \n @num_legs \n end; readable from the outside - not private
	# attr_writer :num_legs
	attr_accessor :num_legs #combination of reader and writer
	@@total_tables = 0
	@@all_tables = []

	def initialize(num_legs) # "order instructions" for the table. otherwise values get overriden
		@tabletop = [] #instance variables
		@num_legs = num_legs

		@@total_tables += 1
		@@all_tables << self
	end

	def put_on(something)
		@tabletop = [] # these variables are tied to put_on and not available to other methods inside the class unless we add @
		@tabletop << something
	end

	def look_at
		@tabletop
	end

	def self.total_tables
		@@total_tables
	end

	def self.view_tables
		puts @@all_tables
	end

	def self.has_legs? # self is a placeholder for the table class
		true
	end
end

table1 = Table.new(4)
table2 = Table.new(3)
puts table1.put_on("mug")
p table1.look_at
puts Table.total_tables
puts Table.view_tables
puts Table.has_legs?

# 3.times do 
# 	Table.new(1)
# 	puts "----#{Table.total_tables}-----"
# 	Table.view_tables
# end


# a_table = Table.new(4, "wood")
# p a_table.num_legs

# a_table.num_legs = 8
# p a_table.num_legs

# p Table.class #introspection
# p Table.methods
# puts Table.hash


####Instance
# a_table = Table.new # the new method creates a new instance of Table

# p a_table.class
# p a_table.methods

# p a_table.hash # there's a hash data structure, method, and number. This hash is a number.
# p({a_table => nil})

#### Philosophical - Plato's Cave
#### Factory Metaphor
# class is a Factory (table, wood, workers, nails)
# the object you get back is an instance of the table
# class knows how to make tables whereas the instance is a table
# Table's methods are inherited from the Class class

#### Class Scope
# can't create a new instance of a module. it's just a bucket that holds things. dont have access to instance variables
# a Class is an actual thing - like a factory.

# $global = true #available EVERYWHERE, including other Ruby files that you include.
# don't use global variables; money is the root of all evil. two global variables with the same name in different parts
# of your code. used to be used to save space. unlimited amounts of space now. don't need.

# $: Where Ruby will look for files you require. AKA the load path. #can't be changed in the code.
# $0: The name of the current Ruby file. #can be changed in the code... Don't change it though.
# $_ The last thing read by gets. #can be changed in the code... But don't change it.

######Inheritance
# class Vehicle
# 	attr_accessor :engine
# 	attr_accessor :tires
# end


# class Car < Vehicle # Car inherits from the Vehicle class
# end

# class Motorcycle < Vehicle
# end


# a_car = Car.new
# p a_car.engine

# a_mc = Motorcycle.new
# p a_mc.engine



#### Modules and Inheritance
### Mixins

# module Talkative
# 	def speak #don't use self. when using a module as a mixin. Don't need the factory to talk, just the cars.
# 		puts "Hello, Michael!"
# 	end
# end

# class Kitt < Car
# 	include Talkative
# end

# p Kitt.ancestors
# p Kitt.superclass
# kitt = Kitt.new
# p kitt.engine

#### Why OOP
# Emmanuel Kant
## Thinking Functionally
# def add(left, right)
# 	# if Strings, concat
# 	# if Arrays, Array.concat
# 	# if nils or Hash, error
# 	# If anything that's not a number, error
# 	# else
# 	left + right
# end

# OOP lets us add context to what we're doing... We orient ourselves around an Object
# In the context of a table, what should this method mean?
# class Table
# 	attr_accessor :tabletop
# 	def initialize
# 		@tabletop = []
# 	end

# 	def add(item)
# 		@tabletop.push(item)
# 	end
# end

### OOP Thinking
# Funcitonal design:
# add(something, something)
# What if something is a Table?

# OOP design:
# object.add(something)

##### Ruby Syntax
# object.method(argument, argument) ... even self is an object

# p Class.ancestors # Class is a factory that produces factories

# class Car
# end

# p Car.class # instance of a class; not a class; instance of a factory... doesn't inherit from Class. it is a class



