# Write a program that compares two lists and prints a message depending on if the inputs are identical or not.
# Your program should be able to accept and compare two lists: list_one and list_two. If both lists are identical print "The lists are the same".
# If they are not identical print "The lists are not the same." Try the following test cases for lists one and two:
list_one1 = [1,2,5,6,2]
list_two1 = [1,2,5,6,2]

list_one2 = [1,2,5,6,5]
list_two2 = [1,2,5,6,5,3]

list_one3 = [1,2,5,6,5,16]
list_two3 = [1,2,5,6,5]

list_one4 = ['celery','carrots','bread','milk']
list_two4 = ['celery','carrots','bread','cream']
def comparelist(l1,l2):
    compare = cmp(l1,l2)
    if compare == 0:
        print "The lists are the same"
    else:
        print "The lists are not the same"
comparelist(list_one1,list_two1)
comparelist(list_one2,list_two2)
comparelist(list_one3,list_two3)
comparelist(list_one4,list_two4)
