# Here is a list of useful enumerable methods. Try all of the methods at least once.
# .any? { |obj| block } => true or false
puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 }

# .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
puts (1..4).collect {|i| i*i}
puts (1..4).collect { "cat" }


# .detect/.find => returns the first for which block is not false.
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
puts (1..100).find { |i| i %5 == 0 and i % 10 == 0 }


# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
puts (1..10).find_all { |i| i % 3 == 0 }


# .reject { |obj| block } => opposite of find_all
puts (1..10).reject { |i| i % 3 == 0 }
