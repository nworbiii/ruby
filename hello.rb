# def a_file_method
#   puts "method self: #{self}"
# end


# class Table
#   puts "Class self: #{self}" # one tab is is class; two tabs in is instance
#   def table_method
#     puts "Instance method self: #{self}"
#   end

#   def self.table_class_method
#     # def Table.table_class_method
#   end
# end

# puts "File self: #{self}"

# a_file_method
# Table.new.table_method


################################

# class Fox
#   def jumped_over (a,b)
#   end
# end

# quick_fox = Fox.new
# lazy_dog = nil
# daisy_log = nil


# quick_fox.jumped_over(lazy_dog, daisy_log)

#8888888888 write the code you wish you had, then go back and make it work

class MyClass
  def to_s
    "MyClass"
  end

  def inspect
    to_s
  end
end

puts MyClass.new
p MyClass.new












