#Float Money
puts  <<END
1. Someone buys a product from your website for $33.50.
You don't trust float money. Can you think of something
you can do to that Float to help you keep track of this
value?
END

puts "Answer:"
puts <<END
Store the value in cents and convert to an integer
using (33.50*100).to_i
END #=> stores 3350 as an integer

puts "3350 cents"





#Space Collapse
puts <<END
2. Sometimes I type too many spaces between words. According
to the Ruby String documentation, what one Ruby expression
can replace all my double- and triple- spaces with single-
spaces?
END

puts "Answer:"
puts ".squeeze(\" \")" #=>escape inside quotation marks; .gsub only targets specified number of spaces





#Stringy Christmas Tree
puts <<END
3. Use a String and escape characters to print a Christmas Tree.
END

puts "Answer:"
puts "print \"   x\\n  xxx\\n xxxxx\\nxxxxxxx\"" #=> escape escape characters




#Tab Width
puts <<END
4. How many spaces long is the tab escape character?
Show how you figured it out. 
END

puts "Answer:"
puts "4 spaces"
puts "print 12341234\\n1234\\t1234" #=> allows you to read the numbers above the spaces and count tab
