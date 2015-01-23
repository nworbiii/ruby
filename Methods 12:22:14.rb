
# samples = {names: ["Gob", "George Sr.", "Lindsay", "Tobias", "Michael", "Lucille", "George Michael", "Maeby", "Buster"],
# 			hair_colors: ["black", "red", "green", "brown", "blonde", "orange"],
# 			eye_colors: ["black", "green", "blue", "brown", "grey", "yellow"],
# 			height: {feet: (rand(6)+1) ,inches: (rand(12))},
# 			weapon: ["candlestick", "rope", "knife", "dumbbell", "trophy", "lead pipe", "wrench", "revolver"]
# 				}
			
# def generate_a_villian(samples)
#   # samples.each do |k,v|
#   #   if v.class == Array
#   #     puts v.sample
#   #   else
#   #     puts v
#   #   end
#   # end
#   puts "#{samples[:names].sample} " + "has " + "#{samples[:hair_colors].sample} " + "hair, " +
#   "#{samples[:eye_colors].sample} " + "eyes, " + "is " + "#{samples[:height][:feet]}'" + 
#   "#{samples[:height][:inches]}\" " + "tall, and " +
#   "uses a " + "#{samples[:weapon].sample} to destroy people."
# end

# generate_a_villian(samples)

# puts samples[:names].sample

###########################################################################

require 'httparty'
require 'pp'


# def display_champion
#   response = HTTParty.get('https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion?champData=info&api_key=8540829d-6c98-4b5a-a3d1-2f399d56552f')
#   data = response['data'].to_a.sample
#   pp data[0]
#   pp data[1]["id"]
#   pp data[1]["key"]
#   pp data[1]["name"]
#   pp data[1]["title"]
#   pp data[1]["info"]["attack"]
#   pp data[1]["info"]["defense"]
#   pp data[1]["info"]["magic"]
#   pp data[1]["info"]["difficulty"]
# end

# display_champion


def display_champion(id)
  response = HTTParty.get("https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion/#{id}?champData=info&api_key=8540829d-6c98-4b5a-a3d1-2f399d56552f")
  pp response['id']
  pp response['key']
  pp response['name']
  pp response['title']
  pp response['info']['attack']
  pp response['info']['defense']
  pp response['info']['magic']
  pp response['info']['difficulty']
end

display_champion(412)
























