#find and replace
str = "If monkeys like bananas, then I must be a monkey!"
print str.find("monkey")
print str.replace("monkey","alligator")
'''import re
str= "If moneys like bananas, then i must be a monkey!"
for m in re.finditer('monkey', str):
    print (m.start())
'''

#min and max
x = [2,54,-2,7,12,98]
print min(x)
print max(x)

#first and last
y = ["hello",2,54,-2,7,12,98,"world"]
print x[0]
print x[5]
z = [2,98]

#newlist
list1 = [19,2,54,-2,7,12,98,32,10,-3,6]
list1.sort()
print list1
list1 = [2,6,7,10,12,19,32,54,98]
list2 = [-3,-2]
list1 = [[-3,-2],2,6,7,10,12,19,32,54,98]
print list1
