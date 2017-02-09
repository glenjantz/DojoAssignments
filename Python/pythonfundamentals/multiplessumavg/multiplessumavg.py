#multiples
'''for count in range(1,5000): #loops through 1-4999
    if count % 2 == 1:      # checks for odd
        print count   '''      # prints all increases of count

'''for count in range(5,1000000):   #loops through 5-999995
    if count % 5 == 0:           #checks if multiple of 5
        print count    '''          # prints all increases of count
#sum list
'''x = [1, 2, 5, 10, 255, 3]     #sets list
summer = 0                    #sets variable to hold the sum
for i in x:                   #loops through all list items
    summer = summer + i       # adds each list item value to previous
print summer '''              #prints only the final sum
#avg list
a = [1, 2, 5, 10, 255, 3]       #sets list
summer = 0                      #sets variable to hold sum
for i in a:                      #loops through the list
    summer = summer + i            #adds each value to previous
summer = summer / len(a)         #divides by total list leng
print summer                       #prints final value which is equal to average equation
