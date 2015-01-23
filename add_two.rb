# Add 2 to the number.
def add_two(number)
  if number.respond_to? :+
    if number.respond_to? :push
      number.push 2
    elsif number.respond_to? :concat #respond to method -> use method
      number.concat "2"
    else
      number + 2
    end
  end
end

def test_add_two
  puts add_two(1)
  puts add_two(1.0)
  puts add_two(nil)
  puts add_two({})
  puts add_two([])
  puts add_two(false)
  puts add_two("")
  puts add_two (MyClass.new)
end

test_add_two

class MyClass < String
end