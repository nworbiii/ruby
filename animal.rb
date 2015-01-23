class Animal
  attr_accessor :species, :eye_color, :fur_color, :name
  
  @@farm = []
  
  def initialize(species, eye_color, fur_color, name)
    @species = species
    @eye_color = eye_color
    @fur_color = fur_color
    @name = name

    @@farm << self
  end
  
  def self.all
    @@farm
  end
  
  def self.list_all
    all.each{ |c| puts c }
  end
# p self
  def to_s
    "#{name}'s species is #{species}. It has #{eye_color} eyes & #{fur_color} fur."
  end

end

animal1 = Animal.new('dog', 'brown', 'brown', 'Abe')
animal2 = Animal.new('cat', 'green', 'purple', 'Celeste')
puts Animal.list_all



