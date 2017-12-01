i = 0
num = 5
while i < num do         #basic while loop
   puts "Inside the loop i = #{i}"
   i +=1
end


i = 0
num = 5
while i < num do    #while loop with a break case
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

for i in 0..5   #basic for loop
  puts "Value of local variable is #{i}"
end

for i in 0..5
  puts "Value of local variable is #{i}"  #for loop with break case
  break if i == 2
end

for i in 0..5
  next if i == 2   #next is used to skip a step  ie continue
  puts "Value of local variable is #{i}"
end
