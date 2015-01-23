class Politician
  attr_accessor :name, :party
  @@politicians = []

  def initialize(name, party)
    @name = name
    @party = party

    @@politicians << self
  end

  def to_s
    "#{name} is a #{party}."
  end

  def self.all
    @@politicians
  end

end




class Person
  attr_accessor :name, :politics
  @@people = []

  def initialize(name, politics)
    @name = name
    @politics = politics

    @@people << self
  end

  def to_s
    "#{name} is a #{politics}"
  end

  def self.all
    @@people
  end

end

politician1 = Politician.new('joe', 'democrat')
person1 = Person.new('kyle', 'liberal')
puts Person.all

puts Politician.all



# index action of controllers
@politicians = Politician.all

# index view
@politicians.each do |politician|
  puts politician.name
  puts politician.party
end






