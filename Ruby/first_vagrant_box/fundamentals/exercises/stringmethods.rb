x = "CodingDojo"
puts x.length  #length of variable
puts x.class #class of the variable
puts x.capitalize  #capitalize first letter downcase rest
puts x.upcase #uppercase everything
puts x.downcase #lowercase everything

puts x[2]
x[2] = "c"    #strings are mutable
puts x

puts x.include?("dojo")   #case sensitive string method
puts x.include?("Dojo")


puts "this word has the word Dojo" if x.include? "Dojo"  #if statement

y = "john, charles, matt, jim"
puts y.split(",")    #split method



z = ""
puts "z is empty" if z.empty?  #check if empty

word = "hello"
word.capitalize #this just returns a new string and doesn't alter original
puts word
word.capitalize!   #use ! to change the variable
puts word
