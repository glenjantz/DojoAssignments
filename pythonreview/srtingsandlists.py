# Assignment: String and List Practice
# Use only the built-in methods and functions from the previous tabs to do the following exercises. You will find the following methods and functions useful:
# Find and Replace
# In this string: words = "It's thanksgiving day. It's my birthday,too!" print the position of the first instance of the word "day".
#  Then create a new string where the word "day" is replaced with the word "month".
# Min and Max
# Print the min and max values in a list like this one: x = [2,54,-2,7,12,98]. Your code should work for any list.
# First and Last
# Print the first and last values in a list like this one: x = ["hello",2,54,-2,7,12,98,"world"].
#  Now create a new list containing only the first and last values in the original list. Your code should work for any list.
# New List
# Start with a list like this one: x = [19,2,54,-2,7,12,98,32,10,-3,6]. Sort your list first.
#  Then, split your list in half. Push the list created from the first half to position 0 of the list created from the second half.
#   The output should be: [[-3, -2, 2, 6, 7], 10, 12, 19, 32, 54, 98]. Stick with it, this one is tough!
words = "It's thanksgiving day. It's my birthday,too!"
print words.find("day")
print words.replace("day", "month", 1)
x = [2,54,-2,7,12,98]
print min(x)
print max(x)
y = ["hello",2,54,-2,7,12,98,"world"]
print y[0]
print y[7]
z = []
z.append(y[0])
z.append(y[7])
print z
mylist = [19,2,54,-2,7,12,98,32,10,-3,6]
mylist2 = []
mylist.sort()
for x in mylist:
    if x <= 7:
        mylist2.append(x)
count = 0
while count < 5:
    if mylist[count] <=7:
        mylist.pop(count)
        count-= 1
    count+= 1
mylist.insert(0, mylist2)
print mylist
