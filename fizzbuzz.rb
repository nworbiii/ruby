# Prints the numbers from 1 to 100.
# But for multiples of 3 prints "Fizz" instead of the number
# and for the multiples of 5 prints "Buzz" instead of the number.
# For numbers which are multiples of both 3 and 5 prints "FizzBuzz".

(1..100).each do |n|
	if n%15==0
		puts "FizzBuzz"
	elsif n % 3 == 0
		puts "Fizz"
	elsif n % 5 == 0
		puts "Buzz"
	else
		puts n
	end
end


# for (i = 0; i <= 100; i++) {
#   if (i%15 == 0)
#     console.log("FizzBuzz");
#   else if (i % 3 == 0)
#     console.log("Fizz");
#   else if (i % 5 == 0)
#     console.log("Buzz");
#   else
#     console.log(i);
# }
