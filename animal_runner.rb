require './animal.rb'

puts 'Would you like to create an animal? Yes or No'
answer = gets.chomp.downcase


while answer == 'yes'
  puts 'Give me a species'
  species = gets.chomp

  puts 'Give me an eye color'
  eye = gets.chomp

  puts 'Give me a fur color'
  fur = gets.chomp

  puts 'Give me a name'
  name = gets.downcase.capitalize.chomp

  Animal.new(species, eye, fur, name)
  puts
  puts 'Animals in the farm:'
  puts Animal.all
  puts

  puts 'Would you like to create an animal? Yes or No'
  answer = gets.chomp.downcase

end


