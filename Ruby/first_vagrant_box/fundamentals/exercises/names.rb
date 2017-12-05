# Consider the following code
a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
namesarr = [a, b, c, d, e]
# Create a ruby method that goes over each name in the names array and prints something like below.
# You have 5 names in the 'names' array
# The name is 'Michael Choi'
# The name is 'John Doe'
# The name is 'Jane Doe'
# The name is 'James Smith'
# The name is 'Jennifer Smith'

def names array
 array.each {|i| puts i[:first_name] + " " + i[:last_name]}
end

names namesarr
