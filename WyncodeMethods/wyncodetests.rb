module Tests
	def test_float_money
		puts float_money(10).is_a? Integer
		puts float_money(10.0).is_a? Integer
		puts float_money(nil).nil?
		puts float_money({key: 10}) == nil
		puts float_money([10]) == nil
		puts float_money(false) == nil
		puts float_money("string") == nil
	end


	def test_join_split
		p join_split([1,2,3,4]) == ["1", "2", "3", "4"]
		p join_split() == nil
		p join_split(1) == nil
	end
end