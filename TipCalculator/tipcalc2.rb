def tip_calculator
	bill = gets.to_f
	bill_to_two = sprintf "%.2f", bill
	puts "The bill is $#{bill_to_two}."
	bill *= 100
	tip = 0.20 * bill.to_i
	total_bill = bill + tip
	total_bill /= 100
	total_bill = sprintf "%.2f", total_bill
	puts "Your total bill, including a 20% tip, is $#{total_bill}."
end

tip_calculator