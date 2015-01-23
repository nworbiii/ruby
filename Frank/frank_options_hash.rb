def make_a_villan(name, physical_traits={}, personality_traits={}, *side_notes)
	eyes = physical_traits[:eye_color]
	hair = physical_traits[:hair_color]
	
	morality = personality_traits[:morality]
	humor = personality_traits[:sense_of_humor]

	puts "#{name} can be recognized by thier #{eyes} eyes and #{hair} hair."
	puts "Reports state #{name} is #{morality} and is #{humor}."

	unless side_notes.empty?
		puts "Notable features of #{name} include:"
		puts side_notes
	end
end

make_a_villan("Dr.Eggman", physical_traits={eye_color: "red", hair_color: "red-brownish"}, personality_traits={morality: "evil", sense_of_humor: "not funny"}, "looks like an egg", "hates Sonic", "loves robots")

name = ["Robert", "Cindy", "Dean", "Taylor"]
eyes = ["blue", "red", "black", "green", "white", "orange", "grey", "brown"]
hair = ["purple", "blue", "red", "black", "green", "white", "orange", "grey", "brown", "blonde"]
morality = ["honest", "evil", "kind", "chaotic evil", "lawful good"]
humor = ["not funny", "funny", "very funny", "one that can not take a joke"]

make_a_villan(name.sample, {eye_color: eyes.sample, hair_color: hair.sample}, { morality: morality.sample, sense_of_humor: humor.sample})


def hash_name_optional?(no_hash_name_needed={}, even_with_two={})
	puts no_hash_name_needed[:magic?]
	puts even_with_two[:very_magic?]
end

hash_name_optional?({magic?: true}, {very_magic?: 'very true'})