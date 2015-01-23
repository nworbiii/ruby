# big_array = [[[1],[2],[3]],[[4],[5],[6]],[[7],[8],[9],[10]]]

# p big_array.reduce(:+)
# p big_array.reduce(:+).reduce(:+)
# p big_array.reduce(:+).reduce(:+).reduce(:+)

def sum(arr)
	# on_another_computer do
		arr.inject(:+)
	# end
end

# the "MapReduce" algorithm
result = big_array.map do |chunk|
	sum(chunk)
end.reduce(:+)

p result
