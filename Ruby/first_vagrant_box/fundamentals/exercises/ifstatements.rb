age = 22
if age >= 21
  puts "Welcome to the party"  #basic if else
else
  puts "Not yet"
end   #every conditional must have an end

if !(age < 21)
  puts "Welcome to the party"  #if else with not
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"  #if else with unless, unless is the same as not
else
  puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0   #if statement with elsif
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if ""     #empty strings are true
  puts "I am positive"
end

if 0   #zero is true    only false and nil are false
  puts "I am positive"
end

unless nil
  puts "I am negative"
end

unless false
  puts "I am negative"
end


puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false
