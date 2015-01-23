def create
  puts "Would you like to create a politician or a voter?"
  case gets.chomp.downcase
  when "politician"
    create_politician
  when "voter"
    create_voter
  end
end


def create_politician
  puts "name?"
  name = gets.chomp.capitalize
  puts "party?"
  party = gets.chomp.capitalize
  Politician.new(name, party)
  puts "#{name} of the #{party} party was created."
end


def create_voter
  puts "name?"
  name = gets.chomp.capitalize
  puts "view?"
  view = gets.chomp.capitalize
  Voter.new(name, view)
  puts "#{name} with #{view} views was created."
end