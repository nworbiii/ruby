# class Language
#   def initialize(name, creator)
#     @name = name
#     @creator = creator
#   end
	
#   def description
#     puts "I'm #{@name} and I was created by #{@creator}!"
#   end
# end

# ruby = Language.new("Ruby", "Yukihiro Matsumoto")
# python = Language.new("Python", "Guido van Rossum")
# javascript = Language.new("JavaScript", "Brendan Eich")

# ruby.description
# python.description
# javascript.description

# class RestaurantBill
# 	attr_accessor :restaurant, :date, :total

# 	def initialize(restaurant, date, total)
# 		@restaurant = restaurant
# 		@date = date
# 		@total = total
# 	end

# 	def description
# 		"You ate at #{restaurant} on #{date} and your bill was $#{total}."
# 	end
# end

# jayalexanders = RestaurantBill.new("Jay Alexander's", "9/11/14", "32.39")
# puts jayalexanders.date
# puts jayalexanders.total
# puts jayalexanders.description




# def add_two(number)
#     unless number.respond_to? :+
#         raise "Invalid argument"
#     end
# 	number + 2
# end

# begin
# 	puts add_two({})
# rescue
# 	puts "Sorry!"
# end
# puts "And we're back"



# class SomethingError < StandardError
# 	def initialize(msg="You are evil or dumb.")
#     	super
# 	end
# end

# class AnotherError < ExceptionError
# 	def initialize(msg="something something something")
# 		super
# 	end
# end

class Pet
	@@total_pets = 0
    
    def initialize (*rest)
        @hair_color = rest[0]
        @eye_color = rest[1]
        @fur_color = rest[2]
        @tail_color = rest[3]
        @pet_hash = {}
        @@total_pets += 1
    end

    def create
    	@pet_hash[:hair_color] = @hair_color
    	@pet_hash[:eye_color] = @eye_color
    	@pet_hash[:fur_color] = @fur_color
    	@pet_hash[:tail_color] = @tail_color
    	@pet_hash.delete_if { |k,v| v.nil? }
    end

    def look_at
    	@pet_hash
    end

    def self.total_pets
    	@@total_pets
    end
end


# Merges two pets into a "Frankenpet"

def test_Pet_class
	pet1 = Pet.new("brown", "brown", "yellow", "orange")
	pet2 = Pet.new("green", "purple", "red")
	p pet1.create == {:hair_color=>"brown", :eye_color=>"brown", :fur_color=>"yellow", :tail_color=>"orange"}
	p pet2.create == {:hair_color=>"green", :eye_color=>"purple", :fur_color=>"red"}
	a = pet1.create
	b = pet2.create
	p a.merge(b) == {:hair_color=>"green", :eye_color=>"purple", :fur_color=>"red", :tail_color=>"orange"}
end
puts "Test Results:"
test_Pet_class



# class Computer
#     @@users = {}
    
#     def initialize (username, password)
#         @username = username
#         @password = password
#         @files = {}
#         @@users[username] = password
#     end

#     def create (filename)
#         time = Time.now
#         @files[filename] = time
#         puts "The file: #{fiename} was created by #{username} at #{time}."
#     end
    
#     def self.get_users
#         @@users
#     end  
# end

# my_computer = Computer.new("Kyle", "kyle1234")





