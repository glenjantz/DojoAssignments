def test                   #yield runs and "block of code" entered as a paramater
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }


def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test { |i| puts "You are in the block #{i}" }   #you can pass yield a paramater


def square num
  puts "num is #{num}"   #checks num which is 5
  puts "yield(num) has a value of #{yield num}"  #computes the block 5*5 you can pass logic to yield
end

square(5){|i| i*i}
