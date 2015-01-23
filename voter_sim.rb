require './participants.rb'

puts 'What would you like to do? Create, List, Update, or Vote'
action = gets.downcase.chomp

if action == 'create'
  puts 'What would you like to create? Politician or Person?'
  create_choice = gets.downcase.chomp
  if create_choice == 'politician'
    puts 'Name?'
    name = gets.downcase.chomp
    puts 'Party? Democrat or Republican'
    party = gets.downcase.chomp
  else
    puts 'Politics? Liberal, Conservative, Tea Party, Socialist, or Neutral'
    politics = gets.downcase.chomp
  end


elsif action == 'list'
  puts 'politicians or people'
  pol_or_ppl = gets.downcase.chomp
  if pol_or_ppl == 'politicians'
    puts Politician.all
  else
    puts Person.all
  end


elsif action == 'update'
  puts 'updated'


elsif action == 'vote'
  puts 'voted'

else
  puts 'da fuq?'


end