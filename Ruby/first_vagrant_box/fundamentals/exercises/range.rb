x = 1..5
puts "class name: #{x.class}"   #range is a class
puts "it does include 3" if x.include? 3
puts "the last number of this range is " + x.last.to_s
puts "the max number in this range is " + x.max.to_s
puts "the min number in this range is " + x.min.to_s
