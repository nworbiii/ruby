# 99.downto(1).each do |n|
#   if n == 1
#     puts "1 bottle of beer on the wall"
#   else
#     puts "#{n} bottles of beer on the wall"
#   end
# end

# bye = 0
# year = 1930 + rand(21)

# while bye < 3
#   command = gets.chomp
#   if command == 'BYE'
#     puts 'HUH?! SPEAK UP, SONNY!'
#     bye += 1
#     # command = gets.chomp
#   elsif command != command.upcase
#     puts "HUH?! SPEAK UP, SONNY!"
#     # command = gets.chomp
#   else
#     puts 'NO, NOT SINCE ' + year.to_s + "."
#     break
#   end
# end
    

# puts all the leap years in between and including the two years

# leap years are years % 4 == 0
# years divisible by 100 != leap years unless %400 == 0

puts 'Give me a starting year.'
start_year = gets.chomp.to_i

puts 'Give me an ending year.'
end_year = gets.chomp.to_i

for year in (start_year..end_year)
    if year % 4 == 0 && year % 100 != 0
      puts 'Leap Year: ' + year.to_s
    elsif year % 400 == 0
      puts 'Leap Year: ' + year.to_s
    end
end





