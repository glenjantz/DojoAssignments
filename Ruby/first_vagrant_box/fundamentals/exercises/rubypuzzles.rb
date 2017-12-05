# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array.
#  Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above,
#     it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
def first
  arr = [3,5,1,2,7,9,8,13,25,32]
  # sum = 0
  # arr.each { |i| sum += i}
  # puts sum
  puts arr.reduce(:+)
  # puts arr.find_all {|i| i>10}  #finds all > 10
  return arr.reject {|i| i<10}  #rejects any less than 10
end
# puts first

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person.
#  Have the program also return an array with names that are longer than 5 characters.
def second
  arr = ["John", "KB", "Cory", "Matthew", "Christopher"]
  # puts arr.shuffle!
  arr.shuffle!.each{|i| puts i}
  # puts arr.select { |person| person.length > 5 }
  return arr.reject{|i| i.length <5}
end
# second

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
#  Shuffle the array and display the last letter of the array. Have it also display the first letter of the array.
#   If the first letter in the array is a vowel, have it display a message.
def third
  arr = ("a".."z").to_a
  arr.shuffle!
  puts arr.last
  puts arr.first
  # puts "this is a message" if arr[0] == "a" or arr[0] == "i" or arr[0] == "o" or arr[0] == "u"
  puts "#{arr.first} is a vowel" if ["a","e","i","o","u"].include? arr.first
end
# third

# Generate an array with 10 random numbers between 55-100.
def fourth
  arr = []
  # for i in 0..9
  #   arr.push(rand(55..100))
  # end
  10.times { arr << rand(55..100) }
  puts arr
end
# fourth

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning).
#  Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
def fifth
  arr = []
  # for i in 0..9
  #   arr.push(rand(55..100))
  # end
  10.times {arr << rand(55..100)}
  arr.sort!
  puts arr, "the min is "+arr.min.to_s,"the max is "+arr.max.to_s
end
# fifth

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
def sixth
  string = ""
  # for i in 0..4
  #   string += (65+rand(26)).chr
  # end
  5.times {string += (65+rand(26)).chr}
  puts string
end
sixth

# Generate an array with 10 random strings that are each 5 characters long
def seventh
  arr = []
  # for i in 0..9
  #   string = ""
  #   for i in 0..4
  #     string += (65+rand(26)).chr
  #   end
  #   arr.push(string)
  #   string = ""
  # end
  10.times do
    string = ""
    5.times { string += (65+rand(26)).chr}
    arr << string
  end
  puts arr
end
seventh
