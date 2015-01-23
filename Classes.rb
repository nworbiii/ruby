class Cake
	attr_accessor :filling, :frosting, :name
	@@cakes = []
	def initialize(name, filling, frosting)
		@name = name
		@filling = filling
		@frosting = frosting

		@@cakes << self
	end
	def self.all
		@@cakes
	end
	def self.list_all
		all.each{ |c| puts c }
	end
	def to_s
		"#{name} Cake: #{filling} filling, and topped with #{frosting} frosting"
	end
end



def bake_a_cake(name, filling, frosting)
	puts "--Cake ##{Cake.all.count+1}-- \nYou baked a #{Cake.new(name, filling, frosting)}."
	puts
end
def view_cakes
	puts
	puts "You have baked #{Cake.all.count} cakes.\n-----------"
	Cake.list_all
end

bake_a_cake("Devil's Food", "fudge","chocolate")
bake_a_cake("Red Velvet","chocolate","cream cheese")
bake_a_cake("Carrot", "carrots, almonds", "cream cheese")

view_cakes