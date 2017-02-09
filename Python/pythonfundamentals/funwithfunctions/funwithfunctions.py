#odd/even
'''def odd_even():     #declares function
    for i in range(1,2000):    #sets loop paramaters
        if i % 2 == 1:         #if odd
            print "number is", str(i), "this is an odd number"  #print this
        elif i % 2 == 0:        #if even
            print "number is", str(i), "this is an even number"  #print this
odd_even()      # call function'''
#multiply
def multiply(list, num):     #delcars function that takes 2 parameters
    newlist = []             # creates new list
    for i in list:            #loops through the array
        x = num * i            # creates new value muliplied by num
        newlist.append(x)       #appends to new list
    print newlist               #prints 1 time
multiply([1,2,3,4,5],5)           #calls function with argumentss
