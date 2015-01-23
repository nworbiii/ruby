puts 'Type in as many words as you want. One word per line.'
word = gets.chomp
words = []
words.push word


while words.last != ''
  word = gets.chomp
  words.push word
end

words.reject! { |word| word.empty? }
puts 'Here\'s an alphabetized list of your words.'
puts words.sort




