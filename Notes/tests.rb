module Tests

	# # Converts bill total float into cents integer.

	def float_money(total=nil)
		(total * 100).to_i if not total.nil? and total.respond_to? :zero?
	end


	# Converts an Array of numbers into an Array of numbers within strings.

	def join_split(arr=nil)
		arr.join.split("") if not arr.nil? and arr.respond_to? :push
	end
end