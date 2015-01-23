class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

person1 = Person.new("Kyle", 28)
p person1
p person1.age