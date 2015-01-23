a = (1..100).map do |n|
	fizz = n % 3 == 0 ? 'fizz' : nil
	buzz = n % 5 == 0 ? 'buzz' : nil
	fizz || buzz ? "#{fizz}#{buzz}" : n
end

p a