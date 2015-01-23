# class Animal
# 	def jumped_over(x,y)
# 	end
# end

# quick_fox = Animal.new
# lazy_dog = nil
# daisy_log = nil
# quick_fox.jumped_over(lazy_dog, daisy_log)




# local_variable # Are only accessiable in current scope
# @instance_variable # Are stored in each instance variable
# @@class_varaible # Are stored at a class level
# CONSTANT_VARIABLE # Notifies developer when over written, can been seen throughout the program
# $global_variable  # seen throughout the program



# class TestException1 < StandardError
# end
 
# class TestException2 < Exception
# end
 
# begin
#   begin
#     raise TestException1
#   rescue
#     puts $!.class.name
#   end
 
#   begin
#     raise TestException2
#   rescue
#     puts $!.class.name
#   end
# rescue Exception
#   puts "Unhandled Exception #{$!.class.name}"
# end

# This behavior is consistent with the way ruby exceptions are designed; Errors which 
# you can generally deal with are subclassed from StandardError, while errors which 
# indicate a failure in the semantic meaning of the code or its execution inherit
# directly from Exception

# class Name
#   def initialize (first, last = nil)
#     @first = first
#     @last = last
#   end
#   def format
#     [@last, @first].compact.join(', ')
#   end
#   def to_s
#     [@last, @first].compact.join(', ')
#   end
# end
# user_names = []
# user_names << Name.new('Ashton', 'Kutcher')
# user_names << Name.new('Wil', 'Wheaton')
# user_names << Name.new('Madonna')
# user_names.each{ |n| puts n.format }
# name1 = Name.new('Kyle')
# puts name1


# def new_game(name, options={})
#   {
#     name: name,
#     year: options[:year],
#     system: options[:system]
#   }
# end
# game = new_game("Street Figher II", system: "SNES", year: 1992)

# puts game



















