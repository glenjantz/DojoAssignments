# Write a program that takes a list of strings and a string containing a single character, and prints a new list of all the strings containing that character.
# Here's an example:
# # input
word_list = ['hello','world','my','name','is','Anna']
# char = 'o'
# # output
# new_list = ['hello','world']
# Copy
# Hint: how many loops will you need to complete this task?
def findchars(lst,char):
    newlst = []
    for x in lst:
        if x.find(char) != -1:
            newlst.append(x)
    return newlst
print findchars(word_list,"o")     
