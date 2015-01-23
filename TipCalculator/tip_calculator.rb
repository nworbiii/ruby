puts "How much is the bill?"
bill = gets.to_f #gets returns a string value that we convert to a float
bill_to_two = sprintf "%.2f", bill #sprintf displays the bill to two decimal places
puts "The bill is $#{bill_to_two}."
bill *= 100 #changes the float into an integer that we can do math on
tip = 0.20 * bill.to_i
total_bill = bill + tip
total_bill /= 100 #converts the total bill from cents back into dollars
total_bill = sprintf "%.2f", total_bill
puts "Your total bill, including a 20% tip, is $#{total_bill}."