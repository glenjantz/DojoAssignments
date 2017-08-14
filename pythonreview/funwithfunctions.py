# Odd/Even:
# Create a function called odd_even that counts from 1 to 2000. As your loop executes have your program print the number of that iteration and
# specify whether it's an odd or even number.
# Your program output should look like below:
# Number is 1.  This is an odd number.
# Number is 2.  This is an even number.
# Number is 3.  This is an odd number.
# ...
# Number is 2000.  This is an even number.

def odd_even():
    for count in range(1,2001):
        if count % 2 == 0:
            print "Number is", count, "This is an even number"
        if count % 2 == 1:
            print "Number is", count, "This is an odd number"
        count += 1

# Multiply:
# Create a function called 'multiply' that iterates through each value in a list (e.g. a = [2, 4, 10, 16]) and returns a list where each value has been multiplied by 5.
# The function should multiply each value in the list by the second argument. For example, let's say:
# a = [2,4,10,16]
# Copy
# Then:
# b = multiply(a, 5)
# print b
# Copy
# Should print [10, 20, 50, 80 ].

def multiply(arr,num):
    for x in range(len(arr)):
        arr[x] = arr[x] * num
    return arr
# print multiply([1,2,3,4,5],5)

# Hacker Challenge:
# Write a function that takes the multiply function call as an argument. Your new function should return the multiplied list as a two-dimensional list.
 # Each internal list should contain the 1's times the number in the original list. Here's an example:

def layered_multiples(arr):
  print arr
  new_array = []
  for x in arr:
      temparr = []
      for y in range(0,x):
          temparr.append(1)
      new_array.append(temparr)
  return new_array
print layered_multiples(multiply([1,2,3,4,5],5))
