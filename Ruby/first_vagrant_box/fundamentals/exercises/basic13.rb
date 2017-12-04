# Solve all 13 problems below in as much of Ruby way as possible.
# Bonus: Try to use as few lines as possible for each question
# Print 1-255
# Write a program that would print all the numbers from 1 to 255.
def printnums
  for i in 1..255
    puts i
  end
end
# printnums

# (1..255).each { |i| puts i}

# Print odd numbers between 1-255
# Write a program that would print all the odd numbers from 1 to 255.
def printodds
  for i in 1..255
    unless i % 2 == 0
      puts i
    end
  end
end
# printodds

# (1..255).each { |i| puts i if i.odd?}

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers
# that have been printed so far. For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New number: 2 Sum: 3
# New number: 3 Sum: 6
# ...
# New number: 255 Sum: __
# Do NOT use an array to do this exercise.

def printsum
  sum = 0
  for i in 0..255
    sum += i
    puts "the current number is #{i} and the current sum is #{sum}"
  end
end
# printsum

# sum = 0
# (0..255).each { |i| puts "the current number is #{i} and the current sum is #{sum += i}"}

# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.
 # Being able to loop through each member of the array is extremely important.
 def iterarray array
   for i in 0..array.length
     puts array[i]
   end
end
# iterarray [1,3,5,6,9,13]

# [1,3,5,6,9,13].each {|i| puts i}

# Find Max
# # Write a program (sets of instructions) that takes any array and prints the maximum value in the array.
# Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers,
#  negative numbers and zero.
def findmaxnum array
 puts array.max.to_s
end
# findmaxnum [10,2,3,5,3,6,74,3]

# puts [10,2,3,5,3,6,74,3].max

# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3],
# your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve
 # that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.
 def getavg array
   sum = 0
   array.each {|i| sum += i}
   puts sum/array.length
end
# getavg [2,10,3]

# arr = [2,10,3]
# puts arr.reduce(:+) / arr.length


# Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y'
 # should have the value of [1, 3, 5, 7, ... 255].
def oddarr
  y = []
  (1..255).each {|i| y.push(i) if i.odd?}
  # puts y
end
# oddarr

# y=[]
# (1..255).each {|i| y << i if i.odd?}
# puts y


# Greater Than Y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y.
# For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array
# that are greater than 3).
def gty array, y
  sum = 0
  array.each {|i| sum+=1 if i>y}
  return sum
end
# puts gty [1,3,5,7], 3

# arr = [1,3,5,7]
# y = 3
# puts arr.count{ |i| i>y}


# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.
 # When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
def squares array
  array.each_with_index {|e, i| array[i] = e*e}
  puts array
end
# squares [1,5,10,-2]

# arr = [1, 5, 10, -2]
# puts arr.map! { |i| i * i }


# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.
 # When the program is done, x should have no negative values, say [1, 5, 10, 0].
def eliminatenegs array
  array.each_index {|i| array[i] = 0 if array[i] < 0}
  puts array
end
# eliminatenegs [1,5,10,-2]

# arr = [1, 5, 10, -2]
# puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }


# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array,
 # the minimum value in the array, and the average of the values in the array.
def maxminavg array
  # h = Hash.new("go fish")
  # h["max"] = array.max
  # h["min"] = array.min
  # h["avg"] = array.reduce(:+) / array.length.to_f
  h = {max: array.max, min: array.min, avg: array.reduce(:+)/array.length.to_f}
  puts h
end
# maxminavg [1,5,10,-2]

# Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.
 # For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
def shiftingvalues array
  array.rotate!
  array[-1] = 0
  puts array
end
# shiftingvalues [1,5,10,7,-2]

# array = [1,5,10,7,-2]
# array.rotate!(1)[array.length-1] = 0
# puts array

# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.
 # For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].
 def numbertostring array
   array.each_index {|i| array[i] = 'Dojo' if array[i] < 0}
   puts array
end
numbertostring [-1,-3,2]
