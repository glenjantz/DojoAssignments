a = ["mats", "guido", "dojo", "choi", "john"]
b = [5,6,9,3,1,2,4,7,8,10]

puts a[0]
puts b.class
puts b.shuffle.join" "
puts a.to_s

# Try the following methods at least once either on a separate Ruby file or on irb.
# .at or .fetch
# .delete
# .reverse
# .length
# .sort
# .slice
# .shuffle
# .join
# .insert
# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

puts a.at 1 #find the element at index
# puts a.fetch 100 #this method throws an error when getting an index out of range
puts a.fetch(100, "oops") # this is how to add a custom error msg
a.delete "mats"  #deletes all matching indexes
puts a
puts a.reverse #reverses the array
puts a.length #returnts the length of the array
puts b.sort #sorts the array
puts a.slice!(1) #returns the deleted index use ! to actually delete it
puts a
b.shuffle #randomizes the array
puts b
puts a.join" " #joins the array elements with given seperator
a.insert 2, "dave"  #insert at any index
puts a
puts a.values_at(1,2) #returns the values at the specified indicies
