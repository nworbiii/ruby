require './votersimmethods.rb'
require './voter_classes.rb'
loop do
    puts "What would you like to do? Create, List, Update, or Vote"
    case gets.chomp.downcase
    when 'create'
      create
    when 'list'
      list
    when 'update'
      update
    when 'vote'
      vote
    when 'exit'
        break
    end
end #main loop









