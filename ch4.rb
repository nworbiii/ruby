# 99.downto(1).each do |n|
#   if n == 1
#     puts "1 bottle of beer on the wall"
#   else
#     puts "#{n} bottles of beer on the wall"
#   end
# end

# command = gets.chomp
bye = 0
year = 1930 + rand(21)

while bye < 3
  command = gets.chomp
  if command == 'BYE'
    puts 'HUH?! SPEAK UP, SONNY!'
    bye += 1
    # command = gets.chomp
  elsif command != command.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    # command = gets.chomp
  else
    puts 'NO, NOT SINCE ' + year.to_s + "."
    break
  end
end
    

# year = 1930 + rand(21)
# puts 'NO, NOT SINCE ' + year.to_s + "."


