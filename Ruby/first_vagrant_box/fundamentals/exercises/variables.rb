# x = 5
# y = 10
# z = x+y
# puts z
x = 5; y = 10; z = x+y   #semicolon = end code block
puts z

first_name = "Glen"
last_name = "Jantz"

puts "Your name is"
puts first_name
puts last_name

puts "your name is", first_name, last_name   #comma runs puts on each element after comma
puts "your name is"+" "+first_name+" "+last_name  #+ is to concatenate

puts "your first name is #{first_name} and your last name is #{last_name}"   #  #{variable} is for string interpolation
puts "your first name is %s and your last name is %s" %[first_name,last_name]  # another method for string interpolation %s for string %d for decimal %f for float

puts "I am 5'7\" tall"  # \ to indicate string is not ending  \t adds a tab   \n  new line

x = puts "hello world"
puts x        # => nil
