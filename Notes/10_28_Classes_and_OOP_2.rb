# Class Variables
# class Table
# 	@@next_id = 0 #class scope variable because the factory creates n tables. each instance is just the nth table.
# 	attr_reader :id #need a class method to use a class variable; instances don't have access to class scope methods but they do have access to class scope variables


# 	def initialize
# 		@@id = @@next_id
# 		@@id += 1
# 	end

# 	def preview_next_id
# 		@@id
# 	end

# 	def change_next_id(next_id)
# 		@@id = next_id
# 	end

# 	def self.preview_next_id
# 		@@next_id
# 	end
# end


# p Table.preview_next_id

# t = Table.new
# t.change_next_id 100

# p Table.preview_next_id

# class Car
# 	@@engine = nil
# 	@@num_wheels = 4

# 	def self.engine
# 		@@engine
# 	end

# 	def self.num_wheels
# 		@@num_wheels
# 	end
# end

# c1 = Car								## <------ bad idea; want instances of the class even if you're just creating one
# p c1.engine
# p c1.num_wheels

# class Engine
# 	attr_reader :type
	
# 	def initialize(type)
# 		@type = type
# 	end
# end

# e1 = Engine.new "v8"
# e2 = Engine.new "v6"

# p e1.type
# p e2.type

# c1.engine = e1
# p c1.engine

# c2 = Car
# c2.engine = e2

# p c1.engine

#### Private
# Private by Default
# t = Table.new
# private method initialize called # only runs once (when the object is created). don't want to re-initialize. if you want do, just create a new object

# t = Table.new
# t.a_public_method
# #t.a_private_method
# t.send :a_private_method #send will re-initiate the object; steps over the private method

# class Bank # a transaction is a set of steps that need to occur or not at all
# 	def transfer
# 		withdraw # from above, withdraw and deposit must happen together. send method can just withdraw or just deposit.
# 		deposit
# 	end

# 	private
# 	def withdraw; end
# 	def deposit; end
# end

# class Parent
# 	protected # not private to "me", private to my "family"(subclass) e.g. Parent and Child. a "family" secret rather than a "personal" secret.
# 	def a_protected_method; end
# end

# class Child < Parent
# 	def a_public_method
# 		a_protected_method # can call a_protected_method because it's protected rather than private. protected methods work through inheritance.
# 	end
# end

# p = Parent.new
# # protected method 'a_protected_method' called

# c = Child.new
# c.a_public_method
# protected method 'a_protected_method' called

# class Parent
# 	protected
# 	def a_protected_method
# 		puts "family secret"
# 	end
# end

# class Child < Parent
# 	def interact(child)
# 		child.a_protected_method # the parents can share the secret with their children and the children can share the secret with each other
# 	end
# end

# p = Parent.new
# c1 = Child.new
# c2 = Child.new

# c1.interact(c2)

######### Overriding
# class Parent
# 	def whoami
# 		puts "I'm a parent"
# 	end
# end

# class Child < Parent
# 	def whoami
# 		puts "I'm a child" # overrides the inheritted 'whoami' method
# 	end
# end

# c = Child.new
# c.whoami

####### Super

# class Person
# 	def speak; "I'm a person"; end
# end

# class Parent < Person
# 	def speak
# 		super + " who is a parent" #=> I'm a person who is a parent... 'embrace and extend'
# 	end
# end

# p = Parent.new
# puts p.speak

# class Parent
# 	def speak(words); puts words; end
# end

# class Child < Parent
# 	def speak # it's the name that makes a difference, not the number of arguments
# 		super "Gaga Googoo"
# 	end
# end

# c = Child.new
# c.speak

class Parent
	def speak1(arg); puts arg; end
end

class Child < Parent 
	def speak2
		# super.speak1 "I'm a child" # this line doesn't work
		speak1 "I'm a child"
	end
end

# class Parent
# 	def speak(words)
# 		puts words
# 	end
# end

# class Child < Parent
# 	def speak(words)
# 		super#(words) 
# 		puts "... and I'm just a child speaking"
# 		 # going up the chain and passing an argument
# 	end
# end

c = Child.new
c.speak2 


























































